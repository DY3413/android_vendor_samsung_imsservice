.class public Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;
.super Ljava/lang/Object;
.source "FtHttpXmlParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FtHttpXmlParser"

.field private static final NS_FTHTTPEXT:Ljava/lang/String; = "urn:gsma:params:xml:ns:rcs:rcs:up:fthttpext"

.field private static final NS_RRAM:Ljava/lang/String; = "urn:gsma:params:xml:ns:rcs:rcs:rram"

.field private static final ns:Ljava/lang/String;


# instance fields
.field private mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

.field private mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;-><init>()V

    .line 39
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseFromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object p0

    return-object p0
.end method

.method private parseFromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    .line 52
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    .line 53
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 54
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 56
    :try_start_19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 57
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFile(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 58
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_37} :catch_38

    goto :goto_52

    :catch_38
    move-exception p1

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    .line 64
    :goto_52
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    return-object p0
.end method

.method public static parseResume(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;-><init>()V

    .line 45
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseResumeFromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object p0

    return-object p0
.end method

.method private parseResumeFromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    .line 72
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 73
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 75
    :try_start_28
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 76
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileResumeInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_47} :catch_48

    goto :goto_62

    :catch_48
    move-exception p1

    .line 79
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    .line 83
    :goto_62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    return-object p0
.end method

.method private readBrandedUrl(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, "urn:gsma:params:xml:ns:rcs:rcs:up:fthttpext"

    const-string v2, "branded-url"

    .line 204
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 206
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "content-type"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 180
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "data"

    invoke-interface {p1, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "url"

    const/4 v2, 0x0

    .line 192
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "until"

    .line 193
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_28

    :cond_25
    const-string v0, ""

    move-object v2, v0

    :goto_28
    const/4 v3, 0x3

    .line 197
    invoke-interface {p1, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object p0
.end method

.method private readFile(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_8
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4d

    .line 91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4d

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_1d

    goto :goto_8

    .line 95
    :cond_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file-info"

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 98
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v3, "type"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "thumbnail"

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readThumbnailInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    .line 101
    :cond_3f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    .line 105
    :cond_49
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_4d
    return-void
.end method

.method private readFileInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "file-disposition"

    .line 134
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileDisposition(Ljava/lang/String;)V

    .line 137
    :goto_13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9e

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_9e

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_28

    goto :goto_13

    .line 142
    :cond_28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file-size"

    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileSize(J)V

    goto :goto_13

    :cond_3e
    const-string v3, "file-name"

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileName(Ljava/lang/String;)V

    goto :goto_13

    :cond_50
    const-string v3, "content-type"

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setContentType(Ljava/lang/String;)V

    goto :goto_13

    :cond_62
    const-string v3, "data"

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    goto :goto_13

    :cond_74
    const-string v3, "branded-url"

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readBrandedUrl(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setBrandedUrl(Ljava/lang/String;)V

    goto :goto_13

    :cond_86
    const-string v3, "playing-length"

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readPlayingLength(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setPlayingLength(I)V

    goto/16 :goto_13

    .line 156
    :cond_99
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_13

    .line 159
    :cond_9e
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readFileName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-name"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 172
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readFileResumeInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-resume-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-string v0, ""

    move-wide v6, v3

    move-wide v4, v6

    .line 217
    :goto_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_72

    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_72

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_23

    goto :goto_e

    .line 222
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v8, "file-range"

    .line 224
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 225
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v8, "start"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_42

    .line 227
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_42
    const-string v8, "end"

    .line 230
    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 232
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 234
    :cond_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_e

    :cond_56
    const-string v8, "data"

    .line 235
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 236
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v8, "url"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6a

    move-object v0, v3

    .line 240
    :cond_6a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_e

    .line 242
    :cond_6e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    .line 246
    :cond_72
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v8, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;-><init>(JJLjava/net/URL;)V

    return-object p0
.end method

.method private readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-size"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 p0, 0x3

    .line 165
    invoke-interface {p1, p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method private readPlayingLength(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, "urn:gsma:params:xml:ns:rcs:rcs:rram"

    const-string v2, "playing-length"

    .line 262
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    .line 264
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_f

    .line 254
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method private readThumbnailInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string v1, "file-info"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5b

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_1d

    goto :goto_8

    .line 118
    :cond_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file-size"

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailFileSize(J)V

    goto :goto_8

    :cond_33
    const-string v1, "content-type"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailContentType(Ljava/lang/String;)V

    goto :goto_8

    :cond_45
    const-string v1, "data"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    goto :goto_8

    .line 126
    :cond_57
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_5b
    return-void
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_22

    const/4 p0, 0x1

    move v1, p0

    :goto_9
    if-eqz v1, :cond_21

    .line 273
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, p0, :cond_21

    .line 274
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v0, :cond_1e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1b

    goto :goto_9

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    return-void

    .line 270
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
