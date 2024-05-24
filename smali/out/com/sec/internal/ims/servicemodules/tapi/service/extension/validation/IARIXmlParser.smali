.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
.super Ljava/lang/Object;
.source "IARIXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IARIXmlParser"


# instance fields
.field private iariNode:Lorg/w3c/dom/Element;

.field private final mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

.field private mIari:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageSigner:Ljava/lang/String;

.field private mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

.field private packageNameNode:Lorg/w3c/dom/Element;

.field private packageSignerNode:Lorg/w3c/dom/Element;

.field private signatureNode:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->SELF_SIGNED:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    return-void
.end method

.method private printErrorMessage(Ljava/lang/String;)Z
    .registers 4

    .line 152
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iari xml parse error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getIari()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    return-object p0
.end method

.method public getIariNode()Lorg/w3c/dom/Element;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageNameNode()Lorg/w3c/dom/Element;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getPackageSigner()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageSignerNode()Lorg/w3c/dom/Element;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getSignature()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    return-object p0
.end method

.method public getSignatureNode()Lorg/w3c/dom/Element;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->signatureNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 9

    .line 73
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 77
    :try_start_8
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_10} :catch_13a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_10} :catch_13a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11f

    .line 86
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v2, "UTF-8"

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string p1, "Invalid IARI xml: iari-authorization is not encoded with UTF-8"

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    const-string v0, "iari-authorisation"

    const-string v2, "http://gsma.com/ns/iari-authorisation#"

    .line 92
    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eq v3, v1, :cond_3a

    const-string p1, "Invalid IARI xml: invalid number of iari-authorization elements"

    .line 94
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3a
    const/4 v3, 0x0

    .line 96
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 97
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    if-eq v0, v4, :cond_4e

    const-string p1, "Invalid IARI xml: iari-authorization is not the root element"

    .line 98
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4e
    const-string v4, "iari"

    .line 102
    invoke-interface {p1, v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 103
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eq v5, v1, :cond_61

    const-string p1, "Invalid IARI xml: invalid number of iari elements"

    .line 104
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 106
    :cond_61
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    .line 107
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eq v4, v0, :cond_76

    const-string p1, "Invalid IARI xml: iari must be a child of iari-authorization"

    .line 108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 110
    :cond_76
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    const-string v5, "Id"

    invoke-interface {v4, v5, v1}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 111
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    const-string v4, "package-name"

    .line 114
    invoke-interface {p1, v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 115
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-le v6, v1, :cond_98

    const-string p1, "Invalid IARI xml: invalid number of package-name elements"

    .line 117
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_98
    if-ne v6, v1, :cond_bc

    .line 120
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    .line 121
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eq v4, v0, :cond_af

    const-string p1, "Invalid IARI xml: package-name must be a child of iari-authorization"

    .line 122
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 124
    :cond_af
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    invoke-interface {v4, v5, v1}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 125
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    :cond_bc
    const-string v4, "package-signer"

    .line 129
    invoke-interface {p1, v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 130
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v1, :cond_cf

    const-string p1, "Invalid IARI xml: invalid number of package-signer elements"

    .line 131
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 133
    :cond_cf
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    .line 134
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq v2, v0, :cond_e4

    const-string p1, "Invalid IARI xml: package-signer must be a child of iari-authorization"

    .line 135
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 137
    :cond_e4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    invoke-interface {v2, v5, v1}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 138
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    const-string v4, "Signature"

    .line 141
    invoke-interface {p1, v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-eq v2, v1, :cond_106

    const-string p1, "Invalid IARI xml: invalid number of ds:Signature elements"

    .line 143
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 145
    :cond_106
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->signatureNode:Lorg/w3c/dom/Element;

    .line 147
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eq p1, v0, :cond_11e

    const-string p1, "Invalid IARI xml: signature node must be a child of iari-authorization"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11d

    goto :goto_11e

    :cond_11d
    move v1, v3

    :cond_11e
    :goto_11e
    return v1

    :catch_11f
    move-exception p1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception reading IARI xml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_13a
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception parsing IARI xml:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSignature(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authType="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    if-eqz v2, :cond_29

    const-string v2, "iari="

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_29
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_3a

    const-string v2, "packageName="

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_3a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    if-eqz v2, :cond_4b

    const-string v2, "packageSigner="

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_4b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    if-eqz p0, :cond_55

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
