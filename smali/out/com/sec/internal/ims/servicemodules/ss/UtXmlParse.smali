.class public Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;
.super Ljava/lang/Object;
.source "UtXmlParse.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UtXmlParse"


# instance fields
.field private mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

.field private mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mErrorPath:Ljavax/xml/xpath/XPathExpression;

.field private mReplyTimer:Ljavax/xml/xpath/XPathExpression;

.field private mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

.field private mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

.field private mRulePath:Ljavax/xml/xpath/XPathExpression;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 56
    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;
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

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mXpath:Ljavax/xml/xpath/XPath;

    const-string v0, "//*[local-name()=\'NoReplyTimer\']"

    .line 64
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mReplyTimer:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "//@active"

    .line 65
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "//*[local-name()=\'rule\']"

    .line 66
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "//*[contains(local-name(), \'barring\')]"

    .line 67
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "//*[local-name()=\'constraint-failure\']"

    .line 68
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mErrorPath:Ljavax/xml/xpath/XPathExpression;

    const-string v0, "//*[contains(local-name(), \'default-behaviour\')]"

    .line 69
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

    return-void
.end method

.method private combineCbType(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;I)V
    .registers 4

    .line 183
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-nez p1, :cond_12

    const/16 p1, 0x66

    if-ne p2, p1, :cond_e

    const/4 p1, 0x1

    .line 185
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_42

    :cond_e
    const/4 p1, 0x2

    .line 187
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_42

    :cond_12
    const/16 p2, 0xc

    if-ne p1, p2, :cond_17

    goto :goto_42

    :cond_17
    const/16 p2, 0xe

    if-ne p1, p2, :cond_1f

    const/4 p1, 0x5

    .line 192
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_42

    :cond_1f
    const/16 p2, 0xa

    if-ne p1, p2, :cond_27

    const/4 p1, 0x3

    .line 194
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_42

    :cond_27
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x4

    .line 196
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_42

    :cond_2f
    const/16 v0, 0xd

    if-ne p1, v0, :cond_34

    goto :goto_42

    :cond_34
    const/16 v0, 0xf

    if-ne p1, v0, :cond_3c

    const/4 p1, 0x6

    .line 200
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_42

    :cond_3c
    const/16 v0, 0x10

    if-ne p1, v0, :cond_42

    .line 202
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    :cond_42
    :goto_42
    return-void
.end method

.method private createXPathNode(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .registers 2

    .line 290
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {p0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0
    :try_end_6
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 292
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z
    .registers 4

    const/4 v0, 0x0

    .line 327
    :try_start_1
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo p1, "true"

    .line 328
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_10} :catch_15

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0

    :catch_15
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    return v0
.end method

.method private extractCbType(Lorg/w3c/dom/Document;)I
    .registers 3

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeName(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    .line 503
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_26

    :cond_10
    const-string v0, "incoming-communication-barring"

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p0, 0x66

    return p0

    :cond_1b
    const-string v0, "outgoing-communication-barring"

    .line 509
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/16 p0, 0x68

    return p0

    :cond_26
    :goto_26
    return p1
.end method

.method private static extractInt(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)I
    .registers 3

    .line 340
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 341
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_16} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    :catch_17
    const-string p0, "UtXmlParse"

    const-string p1, "Invalid integer"

    .line 348
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    :cond_23
    :goto_23
    const/16 p0, 0x14

    return p0
.end method

.method private static extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;
    .registers 3

    .line 358
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;
    :try_end_8
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 361
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractNodeName(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 3

    .line 300
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_13

    .line 303
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 3

    .line 313
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_13

    .line 316
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private getConditionFromName(Ljava/lang/String;)I
    .registers 2

    const-string p0, "busy"

    .line 439
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string p0, "no-answer"

    .line 441
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-string p0, "not-reachable"

    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-string p0, "not-logged"

    .line 445
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7f

    const-string p0, "not-registered"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_7f

    :cond_2f
    const-string p0, "international-exHC"

    .line 447
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/16 p0, 0xb

    return p0

    :cond_3a
    const-string p0, "international"

    .line 449
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_45

    const/16 p0, 0xa

    return p0

    :cond_45
    const-string/jumbo p0, "roaming"

    .line 451
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/16 p0, 0xe

    return p0

    :cond_51
    const-string p0, "external-list"

    .line 453
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const/16 p0, 0xc

    return p0

    :cond_5c
    const-string p0, "other-identity"

    .line 455
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_67

    const/16 p0, 0xd

    return p0

    :cond_67
    const-string p0, "anonymous"

    .line 457
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_72

    const/16 p0, 0xf

    return p0

    :cond_72
    const-string p0, "cp:identity"

    .line 459
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const/16 p0, 0x10

    return p0

    :cond_7d
    const/4 p0, 0x0

    return p0

    :cond_7f
    :goto_7f
    const/4 p0, 0x6

    return p0
.end method

.method private getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;
    .registers 8

    .line 467
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 468
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_6a

    .line 471
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text"

    .line 472
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_67

    :cond_26
    const-string/jumbo v5, "rule-deactivated"

    .line 475
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 476
    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 477
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    goto :goto_67

    :cond_34
    const-string v5, "media"

    .line 481
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 482
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_67

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_67

    .line 483
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getMediaTypes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    goto :goto_67

    .line 488
    :cond_61
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditionFromName(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_6a
    if-eqz v0, :cond_71

    .line 491
    iget p0, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_73

    .line 492
    :cond_71
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 495
    :cond_73
    iget-object p0, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_82

    .line 496
    iget-object p0, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_82
    return-object v1
.end method

.method private getForwardData(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;
    .registers 9

    .line 384
    new-instance p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    .line 385
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_a9

    move v3, v1

    .line 387
    :goto_e
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_a5

    .line 388
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#text"

    .line 390
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    goto :goto_a1

    :cond_45
    const-string/jumbo v6, "to-target"

    .line 393
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 394
    new-instance v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;-><init>()V

    .line 395
    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 396
    iput-object v5, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 397
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_5d
    const-string/jumbo v6, "target"

    .line 398
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 399
    new-instance v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;-><init>()V

    .line 400
    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 401
    iput-object v5, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 402
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 404
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 405
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-eqz v5, :cond_99

    .line 406
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->attribute:Ljava/lang/String;

    .line 409
    :cond_99
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 411
    :cond_9f
    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    :goto_a1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_a5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_a9
    return-object p0
.end method

.method private getMediaTypes(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_3b

    .line 424
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 425
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 426
    :cond_22
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 427
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 431
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_46

    .line 432
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    return-object v0
.end method


# virtual methods
.method public parseCallBarring(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .registers 15

    const-string v0, "id"

    .line 87
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 89
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractCbType(Lorg/w3c/dom/Document;)I

    move-result v2

    .line 92
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    .line 93
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1d3

    const/4 v3, 0x0

    move v4, v3

    .line 95
    :goto_2f
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1d3

    .line 96
    new-instance v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 97
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    move v6, v3

    .line 98
    :goto_4d
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_181

    .line 99
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 100
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "conditions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 101
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 102
    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_17d

    .line 103
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    move v8, v3

    .line 104
    :goto_90
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_17d

    .line 105
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cp:identity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 106
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    move v10, v3

    .line 107
    :goto_af
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_dd

    .line 108
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "one"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_da

    .line 109
    iget-object v11, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    invoke-interface {v12, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_da
    add-int/lit8 v10, v10, 0x1

    goto :goto_af

    :cond_dd
    add-int/lit8 v8, v8, 0x1

    goto :goto_90

    .line 115
    :cond_e0
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "actions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17d

    move v8, v3

    .line 116
    :goto_f1
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_17d

    .line 117
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 118
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "allow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_126

    .line 119
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    goto :goto_179

    .line 121
    :cond_126
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_179

    .line 122
    new-instance v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    invoke-direct {v10}, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;-><init>()V

    .line 123
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    .line 124
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    .line 126
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    if-eqz v11, :cond_174

    .line 127
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-eqz v11, :cond_174

    .line 128
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->attribute:Ljava/lang/String;

    .line 131
    :cond_174
    iget-object v9, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_179
    :goto_179
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_f1

    :cond_17d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4d

    .line 138
    :cond_181
    iget-object v6, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_196

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 143
    :cond_196
    invoke-direct {p0, v5, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->combineCbType(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;I)V

    .line 144
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "UtXmlParse"

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ruleId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " conditions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " allow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1cb} :catch_1cf
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_1cb} :catch_1cf

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2f

    :catch_1cf
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d3
    return-object v1
.end method

.method public parseCallForwarding(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .registers 13

    .line 209
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 211
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 214
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mReplyTimer:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractInt(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_12c

    const/4 v1, 0x0

    move v2, v1

    .line 218
    :goto_31
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_12c

    .line 219
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v4

    if-nez v4, :cond_73

    const-string/jumbo v4, "rule2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_124

    const-string/jumbo v4, "rule3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_124

    const-string v4, "-vm"

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_124

    const-string v4, "-default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_73

    goto/16 :goto_124

    .line 225
    :cond_73
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 226
    iput-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    move v5, v1

    move v6, v5

    .line 229
    :goto_7c
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_d5

    .line 230
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 231
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "conditions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 232
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    :goto_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_d2

    .line 234
    :cond_b3
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "actions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d2

    .line 235
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getForwardData(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    goto :goto_b0

    :cond_d2
    :goto_d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 240
    :cond_d5
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-eqz v5, :cond_101

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-nez v5, :cond_101

    .line 241
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v5

    if-eqz v5, :cond_101

    const/4 v5, 0x2

    if-ge v6, v5, :cond_101

    const-string v4, "UtXmlParse"

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore the repeated CFU rule with low priority. id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    .line 246
    :cond_101
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_11f

    .line 247
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 248
    iput v1, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 250
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-object v3, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 253
    :cond_11f
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_124} :catch_128
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_124} :catch_128

    :cond_124
    :goto_124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_31

    :catch_128
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12c
    return-object v0
.end method

.method public parseCallWaitingOrClip(Ljava/lang/String;)Z
    .registers 4

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1e

    :catch_19
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public parseClir(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x2

    .line 160
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 161
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_1d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v0

    :cond_2a
    const-string p1, "presentation-restricted"

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    const-string p1, "presentation-not-restricted"

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3a
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_39} :catch_3a

    return v0

    :catch_3a
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public parseError(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "phrase"

    const/4 v1, 0x0

    .line 268
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 269
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mErrorPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_5a

    const/4 p1, 0x0

    .line 272
    :goto_1e
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge p1, v2, :cond_5a

    .line 273
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "constraint-failure"

    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_53

    .line 277
    :cond_35
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 278
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_53} :catch_56
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_53} :catch_56
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_53} :catch_56

    :cond_53
    :goto_53
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :catch_56
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5a
    return-object v1
.end method
