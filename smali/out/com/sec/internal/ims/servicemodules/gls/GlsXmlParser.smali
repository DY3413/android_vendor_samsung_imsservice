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
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 55
    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 61
    :goto_12
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mXpath:Ljavax/xml/xpath/XPath;

    const-string/jumbo v0, "rcsenvelope/@entity"

    .line 64
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mEntityPath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/@id"

    .line 65
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mIdPath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/@label"

    .line 66
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLabelPath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/geopriv/location-info/Circle/pos"

    .line 67
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLocationPath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/geopriv/location-info/Circle/radius"

    .line 69
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mRadiusPath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/geopriv/location-info/Point/pos"

    .line 71
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/timestamp"

    .line 73
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDatePath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/time-offset/@until"

    .line 74
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

    const-string/jumbo v0, "rcsenvelope/rcspushlocation/time-offset"

    .line 75
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

    return-void
.end method

.method private createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .registers 2

    .line 238
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {p0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0
    :try_end_6
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 247
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_f

    .line 250
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 258
    :cond_9
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
.method public getGeoJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object p1

    .line 267
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 271
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_3c

    .line 276
    :cond_2f
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 277
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getTimeZone()I

    move-result v1

    goto :goto_57

    .line 272
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 273
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v4, 0xf

    .line 274
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v4, v1

    neg-int v1, v4

    const v4, 0xea60

    div-int/2addr v1, v4

    .line 280
    :goto_57
    new-instance v9, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 281
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-direct {v9, v4, v5, p1}, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;-><init>(Ljava/lang/Double;Ljava/lang/Double;F)V

    .line 283
    new-instance p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;)V

    .line 286
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGeolocString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object p1

    .line 172
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_22

    .line 175
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_22

    .line 178
    :cond_19
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_2a

    .line 176
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 181
    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "-"

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ","

    .line 203
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-result-object v2

    .line 209
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    if-ne v2, v3, :cond_2f

    const-string v3, ""

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v3

    :goto_33
    if-eqz p1, :cond_45

    .line 211
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3c

    goto :goto_45

    .line 214
    :cond_3c
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_4d

    .line 212
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 216
    :goto_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_87} :catch_88

    return-object p0

    :catch_88
    move-exception p0

    .line 230
    sget-object p1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 81
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 85
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mEntityPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "entity"

    .line 86
    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 91
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mIdPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "id"

    .line 92
    invoke-static {v5, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLabelPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3a

    .line 98
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    goto :goto_3c

    .line 99
    :cond_3a
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    :goto_3c
    move-object v8, v2

    .line 102
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLocationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    if-eqz v2, :cond_5b

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5b

    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_84

    :cond_5b
    if-eqz v3, :cond_7c

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mRadiusPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v4, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "radiusStr"

    .line 110
    invoke-static {v4, v9}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    goto :goto_84

    .line 113
    :cond_7c
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Other type location, error!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    :goto_84
    if-eqz v2, :cond_fc

    .line 116
    array-length v4, v2

    const/4 v9, 0x2

    if-ne v4, v9, :cond_fc

    const/4 v3, 0x0

    .line 120
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v4, 0x1

    .line 121
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 123
    new-instance v2, Landroid/location/Location;

    const-string v9, "passive"

    invoke-direct {v2, v9}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    double-to-float v3, v11

    .line 127
    invoke-virtual {v2, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 130
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDatePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dateString"

    .line 131
    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 136
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v3

    .line 137
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_d0

    move-object v11, v7

    goto :goto_f4

    .line 144
    :cond_d0
    :try_start_d0
    invoke-static {v3}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_dc
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_dc} :catch_e9
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_dc} :catch_e7
    .catch Lorg/xml/sax/SAXException; {:try_start_d0 .. :try_end_dc} :catch_e5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_d0 .. :try_end_dc} :catch_e3
    .catch Ljava/net/URISyntaxException; {:try_start_d0 .. :try_end_dc} :catch_e1
    .catch Ljava/text/ParseException; {:try_start_d0 .. :try_end_dc} :catch_df
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_dc} :catch_dd

    goto :goto_ee

    :catch_dd
    move-exception v0

    .line 165
    throw v0

    :catch_df
    move-exception v0

    .line 162
    throw v0

    :catch_e1
    move-exception v0

    .line 160
    throw v0

    :catch_e3
    move-exception v0

    .line 158
    throw v0

    :catch_e5
    move-exception v0

    .line 156
    throw v0

    :catch_e7
    move-exception v0

    .line 154
    throw v0

    :catch_e9
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v3, 0x0

    .line 149
    :goto_ee
    new-instance v0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-direct {v0, v7, v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;-><init>(Ljava/util/Date;I)V

    move-object v11, v0

    .line 152
    :goto_f4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-object v4, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V

    return-object v0

    .line 117
    :cond_fc
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse location string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
