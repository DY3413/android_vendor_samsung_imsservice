.class public Lcom/sec/internal/ims/settings/NvStorage;
.super Ljava/lang/Object;
.source "NvStorage.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "DEFAULT"

.field public static final ID_OMADM:Ljava/lang/String; = "omadm"

.field private static final IMS_NV_STORAGE_XML:Ljava/lang/String; = "/efs/sec_efs/ims_nv_"

.field private static final LOG_TAG:Ljava/lang/String; = "NvStorage"

.field private static final OMADM_PREFIX:Ljava/lang/String; = "omadm/./3GPP_IMS/"

.field protected static final ROOT_ELEMENT:Ljava/lang/String; = "NV_STORAGE"

.field private static final SILENT_REDIAL_PATH:Ljava/lang/String; = "/efs/sec_efs/silent_redial"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mDoc:Lorg/w3c/dom/Document;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field protected mNvFile:Ljava/io/File;

.field private mPhoneId:I


# direct methods
.method public static synthetic $r8$lambda$7vHNQw4hFcb90t7DMA18Ot4V7qk(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$migrateFromOldFile$1(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9SYUPsF6ZnIbuxiXySo_Lt8uzmM(Lcom/sec/internal/ims/settings/NvStorage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$dump$3(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y7bruu7bAq-0ek4XTonUCLTaTjE(Lcom/sec/internal/ims/settings/NvStorage;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$dump$4(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdrZZTkYGtb3VMkerhY00JDfci0(Lcom/sec/internal/ims/settings/NvStorage;Lorg/w3c/dom/Element;Lorg/w3c/dom/NamedNodeMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$migrateFromOldFile$2(Lorg/w3c/dom/Element;Lorg/w3c/dom/NamedNodeMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXaqPdvTjksOWJXHnF31P7RfOEA(Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/settings/NvStorage;->lambda$migrateFromOldFile$0(Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 77
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x32

    invoke-direct {v1, p1, p3, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mContext:Landroid/content/Context;

    .line 79
    iput p3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "DEFAULT"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 83
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/efs/sec_efs/ims_nv_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading new nv file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage(Z)V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 89
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1b0

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const-string p0, "/efs/sec_efs/silent_redial"

    .line 93
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 95
    sget-object p1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chmod error!! : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private declared-synchronized initDoc()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    .line 172
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 177
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_1

    .line 181
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    const-string v3, "initDoc: getDocumentElement(): null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage(Z)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 187
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDoc: Exception occurred! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    instance-of v1, v1, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_2

    .line 189
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initElements()V
    .locals 5

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " open failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "omadm"

    .line 114
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 117
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    const-string v2, "initElements: create omadm"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const-string v1, "NV_STORAGE"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 122
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const-string v2, "omadm"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 128
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/NvStorage;->migrateFromOldFile(Lorg/w3c/dom/Element;)V

    const/4 v2, 0x0

    .line 129
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "indent"

    const-string/jumbo v2, "yes"

    .line 134
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v1, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 136
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 138
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    :try_start_4
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create() TransformerException exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_3
    :goto_1
    :try_start_5
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    const-string v2, "root is empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNvStorage(Z)V
    .locals 4

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initNvStorage(): isForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    const-string v1, "NV_STORAGE"

    .line 202
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 204
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 205
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    const-string v2, "indent"

    const-string/jumbo v3, "yes"

    .line 207
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 209
    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 210
    invoke-virtual {v1, v2, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initNvStorage: Exception occurred! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic lambda$dump$3(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 407
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dump$4(Ljava/util/Map;)V
    .locals 3

    .line 404
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 405
    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    const-string v2, "Last value of NV OMADM:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 407
    new-instance v1, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/settings/NvStorage;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 408
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 409
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$migrateFromOldFile$0(Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;
    .locals 1

    const-string v0, "omadm"

    .line 157
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$migrateFromOldFile$1(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$migrateFromOldFile$2(Lorg/w3c/dom/Element;Lorg/w3c/dom/NamedNodeMap;)V
    .locals 7

    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 164
    sget-object v3, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateFromOldFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    invoke-interface {p1, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private migrateFromOldFile(Lorg/w3c/dom/Element;)V
    .locals 6

    const/4 v0, 0x0

    .line 147
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/efs/sec_efs/ims_nv_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    const-string v4, "_\\d"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateFromOldFile: Copy from old file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda2;-><init>()V

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda3;-><init>()V

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda4;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/settings/NvStorage;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private readFromStorage(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 261
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 262
    sget-object p1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " open failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 265
    :cond_0
    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    .line 267
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 269
    sget-object p2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): nNode is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    return-object v2

    .line 273
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-eqz p2, :cond_3

    move p1, v3

    .line 277
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_2

    .line 278
    aget-object v1, p2, p1

    const-string v2, "omadm/./3GPP_IMS/"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 280
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 282
    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p1

    if-ge v3, p1, :cond_5

    .line 283
    invoke-interface {p0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz v2, :cond_4

    .line 284
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 287
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private save(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 7

    .line 341
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    .line 343
    sget-object p1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " open failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 346
    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 347
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    .line 349
    sget-object p2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): targetElement is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    return-void

    .line 354
    :cond_1
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    const-string v3, "omadm/./3GPP_IMS/"

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 359
    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "silent_redial"

    .line 360
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/NvStorage;->writeSilentRedial(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_3
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    const-string v0, "indent"

    const-string/jumbo v1, "yes"

    .line 368
    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 370
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 372
    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 374
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset() TransformerException exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    :goto_1
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    .line 380
    invoke-static {p2, v1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private declared-synchronized writeSilentRedial(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "/efs/sec_efs/silent_redial"

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 389
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    .line 103
    iput-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public delete(Ljava/lang/String;)I
    .locals 6

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 302
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 303
    sget-object p1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " open failed"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    monitor-exit v0

    return v2

    .line 306
    :cond_0
    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 308
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): targetChild is null"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    .line 310
    monitor-exit v0

    return v2

    .line 314
    :cond_1
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    .line 315
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 316
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    :goto_0
    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 317
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 318
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 325
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v1, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 326
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 328
    invoke-virtual {p1, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 330
    :try_start_2
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete: Exception occurred! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public dump()V
    .locals 4

    .line 400
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    const-string v2, "Dump of NvStorage:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NV File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    const-string v0, "omadm"

    const/4 v1, 0x0

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/settings/NvStorage;->readFromStorage(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/settings/NvStorage;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    .line 218
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->save(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 221
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 228
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->readFromStorage(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "VZW"

    .line 232
    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    invoke-static {p2, v2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string p2, "SMS_FORMAT"

    .line 233
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "SMS_FORMAT"

    const-string v2, "3GPP"

    .line 234
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget p0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    const-string p2, "VZW CDMA-less case! Return fake SMS_FORAMT(3GPP) by force"

    invoke-static {v0, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p0, 0x2

    const-string p2, "PATH"

    const-string v0, "VALUE"

    .line 240
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    new-array p0, p0, [Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 247
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "omadm/./3GPP_IMS/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    const/4 v2, 0x1

    .line 249
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, p0, v2

    .line 250
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 254
    :cond_2
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
