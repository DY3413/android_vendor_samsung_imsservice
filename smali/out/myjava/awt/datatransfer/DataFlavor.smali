.class public Lmyjava/awt/datatransfer/DataFlavor;
.super Ljava/lang/Object;
.source "DataFlavor.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

.field public static final plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor; = null

.field private static final serialVersionUID:J = 0x741da5db78a37333L

.field private static final sortedTextFlavors:[Ljava/lang/String;

.field public static final stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

.field private representationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 41
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string/jumbo v1, "text/plain; charset=unicode; class=java.io.InputStream"

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 45
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    const-string v2, "Unicode String"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 53
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    const-string v2, "application/x-java-file-list"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    const-string/jumbo v3, "text/sgml"

    const-string/jumbo v4, "text/xml"

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "text/rtf"

    const-string/jumbo v7, "text/enriched"

    const-string/jumbo v8, "text/richtext"

    const-string/jumbo v9, "text/uri-list"

    const-string/jumbo v10, "text/tab-separated-values"

    const-string/jumbo v11, "text/t140"

    const-string/jumbo v12, "text/rfc822-headers"

    const-string/jumbo v13, "text/parityfec"

    const-string/jumbo v14, "text/directory"

    const-string/jumbo v15, "text/css"

    const-string/jumbo v16, "text/calendar"

    const-string v17, "application/x-java-serialized-object"

    const-string/jumbo v18, "text/plain"

    .line 81
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v0

    .line 65
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 134
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    :try_start_4
    invoke-direct {p0, p1, p2, v0}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 156
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "awt.16C"

    invoke-static {v0, p0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getCharset()Ljava/lang/String;
    .registers 4

    .line 199
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, ""

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRedundant()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_30

    .line 202
    :cond_d
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v2, "charset"

    invoke-virtual {v0, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRequired()Z

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2c

    .line 205
    :cond_23
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    if-nez v0, :cond_2f

    return-object v1

    :cond_2f
    return-object v0

    :cond_30
    :goto_30
    return-object v1
.end method

.method private getKeyInfo()Ljava/lang/String;
    .registers 4

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_55

    .line 446
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    :goto_55
    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 176
    :try_start_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object v0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_4c

    if-eqz p2, :cond_b

    .line 183
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_2c

    .line 185
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 188
    :goto_2c
    iget-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string p2, "class"

    invoke-virtual {p1, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3e

    .line 191
    iget-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v0, "java.io.InputStream"

    invoke-virtual {p1, p2, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_3e
    if-nez p3, :cond_45

    .line 194
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_49

    .line 195
    :cond_45
    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 193
    :goto_49
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-void

    .line 179
    :catch_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "awt.16D"

    invoke-static {p2, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isCharsetRedundant()Z
    .registers 2

    .line 231
    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "text/rtf"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "text/tab-separated-values"

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "text/t140"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "text/rfc822-headers"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "text/parityfec"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    const/4 p0, 0x0

    return p0

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method private isCharsetRequired()Z
    .registers 2

    .line 215
    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "text/sgml"

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/xml"

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/html"

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/enriched"

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/richtext"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/uri-list"

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/directory"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/css"

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/calendar"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "application/x-java-serialized-object"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "text/plain"

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    const/4 p0, 0x0

    return p0

    :cond_6a
    const/4 p0, 0x1

    return p0
.end method

.method private static isCharsetSupported(Ljava/lang/String;)Z
    .registers 1

    .line 126
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private isUnicodeFlavor()Z
    .registers 3

    .line 706
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_2c

    .line 707
    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 708
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 709
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 710
    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v0, [C

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 357
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;-><init>()V

    .line 359
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 361
    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz p0, :cond_18

    .line 362
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->clone()Ljava/lang/Object;

    move-result-object p0

    .line 361
    check-cast p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    iput-object p0, v0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_e

    .line 386
    instance-of v0, p1, Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_7

    goto :goto_e

    .line 389
    :cond_7
    check-cast p1, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 399
    :cond_8
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v2, :cond_12

    .line 400
    iget-object p0, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez p0, :cond_11

    return v0

    :cond_11
    return v1

    .line 402
    :cond_12
    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v2, v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 403
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_63

    .line 407
    :cond_25
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_62

    .line 411
    :cond_3b
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object p0

    .line 412
    invoke-direct {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {p1}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_5d

    .line 417
    :cond_50
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 415
    :cond_5d
    :goto_5d
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_62
    :goto_62
    return v0

    :cond_63
    :goto_63
    return v1
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    .line 253
    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 436
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getKeyInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 349
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz p1, :cond_1e

    const-string v0, "class"

    .line 352
    invoke-virtual {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 351
    :goto_1f
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 353
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[MimeType=("

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");humanPresentableName="

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 343
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
