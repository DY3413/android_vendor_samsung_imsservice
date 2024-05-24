.class public Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
.super Ljava/lang/Object;
.source "ImMultipart.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImMultipart"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getBoundary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    return-void

    .line 25
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parseParts(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "boundary = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ContentType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImMultipart"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBoundary(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p0, "boundary="

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_30

    add-int/lit8 p0, p0, 0x9

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_12

    goto :goto_30

    :cond_12
    const/16 v1, 0x3b

    .line 53
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const-string v2, ""

    const-string v3, "\""

    if-ne v1, v0, :cond_27

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    .line 55
    :cond_27
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_2f
    return-object p0

    :cond_30
    :goto_30
    const-string p0, "ImMultipart"

    const-string p1, "no boundary"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, "\r?\n"

    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p1, :cond_2c

    aget-object v2, p0, v1

    const-string v3, ": |:"

    const/4 v4, 0x2

    .line 102
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 103
    array-length v3, v2

    if-ne v3, v4, :cond_29

    const-string v3, "content-type"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 p0, 0x1

    .line 104
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_16

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "multipart/mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private parsePart(Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\n"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1c

    .line 72
    :cond_18
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parsePartWithHeaders(Ljava/lang/String;)V

    goto :goto_1f

    .line 70
    :cond_1c
    :goto_1c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parsePartWithoutHeaders(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private parsePartWithHeaders(Ljava/lang/String;)V
    .registers 5

    const-string v0, "\r?\n\r?\n"

    const/4 v1, 0x2

    .line 85
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v2, v0

    if-ne v2, v1, :cond_12

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_2a

    const-string p1, "application/vnd.gsma.botsuggestion.v1.0+json"

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_23

    .line 89
    aget-object p1, v0, v2

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mSuggestion:Ljava/lang/String;

    goto :goto_31

    .line 91
    :cond_23
    aget-object p1, v0, v2

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    goto :goto_31

    .line 95
    :cond_2a
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    const-string/jumbo p1, "text/plain"

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    :goto_31
    return-void
.end method

.method private parsePartWithoutHeaders(Ljava/lang/String;)V
    .registers 4

    const-string v0, "\n"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_19

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    const-string/jumbo p1, "text/plain"

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    :cond_19
    return-void
.end method

.method private parseParts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r?\n?--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(--)?\r?\n?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 60
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p2, :cond_26

    aget-object v1, p1, v0

    .line 61
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parsePart(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_26
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestion()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mSuggestion:Ljava/lang/String;

    return-object p0
.end method
