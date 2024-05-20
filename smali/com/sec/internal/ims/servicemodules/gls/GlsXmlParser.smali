.class public Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;
.super Ljava/lang/Object;
.source "GlsXmlParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GlsXmlParser"


# instance fields
.field private mDatePath:Ljavax/xml/xpath/XPathExpression;

.field private mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mEntityPath:Ljavax/xml/xpath/XPathExpression;

.field private mIdPath:Ljavax/xml/xpath/XPathExpression;

.field private mLabelPath:Ljavax/xml/xpath/XPathExpression;

.field private mLocationPath:Ljavax/xml/xpath/XPathExpression;

.field private mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

.field private mRadiusPath:Ljavax/xml/xpath/XPathExpression;

.field private mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

.field private mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 56
    :goto_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mXpath:Ljavax/xml/xpath/XPath;

    const-string v0, "rcsenvelope/@entity"

    .line 59
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mEntityPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/@id"

    .line 60
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mIdPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/@label"

    .line 61
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLabelPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/geopriv/location-info/Circle/pos"

    .line 62
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLocationPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/geopriv/location-info/Circle/radius"

    .line 64
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mRadiusPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/geopriv/location-info/Point/pos"

    .line 66
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/timestamp"

    .line 68
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDatePath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/time-offset/@until"

    .line 69
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "rcsenvelope/rcspushlocation/time-offset"

    .line 70
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

    return-void
.end method

.method private createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 0

    .line 226
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {p0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 228
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 235
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    .line 238
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is empty!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getGeolocString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object p0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ","

    .line 191
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-result-object v2

    .line 197
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    if-ne v2, v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_2

    .line 200
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 204
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 218
    sget-object p1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mEntityPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity"

    .line 81
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mIdPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "id"

    .line 87
    invoke-static {v3, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLabelPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 93
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    :goto_0
    move-object v6, v0

    const-wide/16 v0, 0x0

    .line 97
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLocationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, " "

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 100
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 101
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mRadiusPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radiusStr"

    .line 105
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 108
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Other type location, error!"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    :goto_1
    if-eqz v2, :cond_4

    .line 111
    array-length v7, v2

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    const/4 v5, 0x0

    .line 115
    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v7, 0x1

    .line 116
    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 118
    new-instance v7, Landroid/location/Location;

    const-string v2, "passive"

    invoke-direct {v7, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v7, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 121
    invoke-virtual {v7, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    double-to-float v0, v0

    .line 122
    invoke-virtual {v7, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDatePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dateString"

    .line 126
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_3

    goto :goto_3

    .line 139
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 142
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 144
    :goto_2
    new-instance p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-direct {p0, v9, v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;-><init>(Ljava/util/Date;I)V

    move-object v9, p0

    .line 147
    :goto_3
    new-instance p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-object v2, p0

    move-object v5, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V

    return-object p0

    .line 112
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse location string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    .line 160
    throw p0

    :catch_2
    move-exception p0

    .line 157
    throw p0

    :catch_3
    move-exception p0

    .line 155
    throw p0

    :catch_4
    move-exception p0

    .line 153
    throw p0

    :catch_5
    move-exception p0

    .line 151
    throw p0

    :catch_6
    move-exception p0

    .line 149
    throw p0
.end method
