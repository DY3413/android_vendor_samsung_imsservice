.class public Lcom/sec/internal/helper/httpclient/HttpPostBody;
.super Ljava/lang/Object;
.source "HttpPostBody.java"


# static fields
.field public static final CONTENT_DISPOSITION_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION_FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final CONTENT_DISPOSITION_ICON:Ljava/lang/String; = "icon"

.field public static final CONTENT_TRANSFER_ENCODING_BASE64:Ljava/lang/String; = "base64"

.field public static final CONTENT_TRANSFER_ENCODING_BINARY:Ljava/lang/String; = "binary"

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
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 60
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    if-eqz p1, :cond_24

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 47
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 153
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 155
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 157
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    if-eqz p3, :cond_38

    .line 159
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 88
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 91
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 94
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 95
    invoke-direct {p0, p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 99
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 102
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 103
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 105
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 106
    invoke-direct {p0, p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 108
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 109
    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
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

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 165
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 167
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 168
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 169
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 170
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 171
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide p2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    goto :goto_33

    :cond_49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 113
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 115
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 116
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 117
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_36

    .line 119
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
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
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_36

    .line 130
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 132
    :cond_36
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 133
    iget-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 138
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 140
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 141
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 142
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_36

    .line 144
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 146
    :cond_36
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 147
    iget-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 148
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 149
    invoke-direct {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 74
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-eqz p1, :cond_38

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 77
    iget-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    goto :goto_22

    :cond_38
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 52
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    if-eqz p1, :cond_24

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 56
    :cond_24
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 67
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_22

    .line 69
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_22
    return-void
.end method

.method private convertPrams(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
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

    .line 225
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 7
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

    .line 235
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_23

    :cond_1e
    const-string v2, "&"

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :goto_23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    .line 245
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 248
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFieldSize(Ljava/lang/String;)I
    .registers 2

    if-eqz p1, :cond_7

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private makeIndent(I)Ljava/lang/String;
    .registers 4

    .line 296
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_12

    const-string v1, "    "

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 300
    :cond_12
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toString(I)Ljava/lang/String;
    .registers 15

    .line 263
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-nez v3, :cond_24

    const-string v3, "null"

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    .line 270
    :cond_24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    add-int/lit8 v5, p1, 0x1

    .line 271
    invoke-direct {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 275
    :cond_3e
    :goto_3e
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

    if-eqz v3, :cond_c7

    .line 276
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

    .line 283
    :cond_c7
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

    .line 289
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_133

    array-length p1, p1

    goto :goto_134

    :cond_133
    const/4 p1, 0x0

    :goto_134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mData: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_151

    array-length v7, p1

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_151

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v7

    :cond_151
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
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getBodySize()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-wide v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getContentId()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    return-object p0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFileIcon()Ljava/lang/String;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getJSONBody()Lorg/json/JSONObject;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getMultiparts()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    return-object p0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 254
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
