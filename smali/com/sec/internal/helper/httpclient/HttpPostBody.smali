.class public Lcom/sec/internal/helper/httpclient/HttpPostBody;
.super Ljava/lang/Object;
.source "HttpPostBody.java"


# static fields
.field public static final CONTENT_DISPOSITION_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION_FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final CONTENT_DISPOSITION_ICON:Ljava/lang/String; = "icon"

.field public static final CONTENT_TRANSFER_ENCODING_BASE64:Ljava/lang/String; = "base64"

.field public static final CONTENT_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/"

.field public static final CONTENT_TYPE_MULTIPART_FORMDATA:Ljava/lang/String; = "multipart/form-data"

.field public static final CONTENT_TYPE_MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field public static final CONTENT_TYPE_MULTIPART_RELATED:Ljava/lang/String; = "multipart/related"

.field public static final CONTENT_TYPE_X_WWW_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mBodySize:J

.field private mContentDisposition:Ljava/lang/String;

.field private mContentId:Ljava/lang/String;

.field private mContentTransferEncoding:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:[B

.field private mFile:Ljava/io/File;

.field private mFileIcon:Ljava/lang/String;

.field private mJSONBody:Lorg/json/JSONObject;

.field private mMultiparts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 59
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 46
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 124
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 126
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 128
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 87
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 90
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 93
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 136
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 138
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 139
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 140
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 141
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 142
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide p2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 98
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 100
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 102
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_0

    .line 104
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 109
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 111
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 113
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_0

    .line 115
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 117
    :cond_0
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 118
    iget-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 119
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 120
    invoke-direct {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 73
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 76
    iget-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 82
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 51
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 66
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_0

    .line 68
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method private convertPrams(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 206
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "&"

    .line 212
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFieldSize(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeIndent(I)Ljava/lang/String;
    .locals 2

    .line 267
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    const-string v1, "    "

    .line 269
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 13

    .line 234
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-nez v3, :cond_0

    const-string v3, "null"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    add-int/lit8 v5, p1, 0x1

    .line 242
    invoke-direct {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 246
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, "mMultiparts: "

    const-string v6, "mFile: "

    const-string v7, "mContentTransferEncoding: "

    const-string v8, "mContentType: "

    const-string v9, "mContentDisposition: "

    const-string v10, ")[\r\n"

    const-string v11, "HttpPostBody(depth"

    const-string v12, "\r\n"

    if-eqz v3, :cond_2

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mBody: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mFileIcon: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mContentId: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mData: length is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_3

    array-length p1, p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mData: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_4

    array-length v7, p1

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v7

    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getBodySize()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-wide v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    return-object p0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFileIcon()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getJSONBody()Lorg/json/JSONObject;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getMultiparts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    return-object p0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 225
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
