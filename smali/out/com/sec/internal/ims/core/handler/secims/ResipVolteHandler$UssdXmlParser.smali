.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UssdXmlParser"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;


# instance fields
.field mXPath:Ljavax/xml/xpath/XPath;

.field mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

.field mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;

.field mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

.field mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

.field mXPathUssdString:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static bridge synthetic -$$Nest$mparseUssdXml(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->parseUssdXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->init()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
    .registers 1

    .line 300
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    if-nez v0, :cond_b

    .line 301
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    .line 304
    :cond_b
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 312
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    :try_start_a
    const-string v1, "/ussd-data"

    .line 315
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string/jumbo v1, "ussd-string"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdString:Ljavax/xml/xpath/XPathExpression;

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "error-code"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "boolean(anyExt/UnstructuredSS-Request)"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "boolean(anyExt/UnstructuredSS-Notify)"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;
    :try_end_3b
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_a .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception p0

    const-string v0, "ResipVolteHandler"

    const-string v1, "XPath compile failed!"

    .line 322
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return-void
.end method

.method private parseUssdXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived-IA;)V

    const-string v1, "&"

    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "(?i)&(?!(#x?[\\d\\w]+;)|(quot;)|(lt;)|(gt;)|(apos;)|(amp;))"

    const-string v2, "&amp;"

    .line 330
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    :cond_16
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p1, v1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    .line 336
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v1, p1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdString:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v2, p1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error-code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    const/4 v1, 0x1

    .line 341
    iput-boolean v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    goto :goto_5b

    .line 343
    :cond_59
    iput-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    .line 345
    :goto_5b
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {v1, p1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 347
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 351
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    goto :goto_89

    .line 352
    :cond_7a
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_85

    .line 353
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    goto :goto_89

    .line 355
    :cond_85
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    :goto_89
    return-object v0
.end method
