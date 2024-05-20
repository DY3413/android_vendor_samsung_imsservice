.class public Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpRequestBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDeleteRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "buildDeleteRequest: delete all"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->delete()Lcom/squareup/okhttp/Request$Builder;

    .line 95
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request$Builder;->delete(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 101
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method private static buildFormEncodingBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;
    .locals 8

    .line 159
    new-instance v0, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getJSONBody()Lorg/json/JSONObject;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 164
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 169
    :goto_1
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildFormEncodingBody: failed to load value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move-object v2, v3

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method private static buildMultipart(Lcom/squareup/okhttp/MultipartBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/MultipartBuilder;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 183
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 184
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v1

    const-string v2, "Content-Disposition"

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 185
    new-instance v1, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v1}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    .line 186
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->setMultipartType(Lcom/squareup/okhttp/MultipartBuilder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildMultipart(Lcom/squareup/okhttp/MultipartBuilder;Ljava/util/List;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 190
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 188
    invoke-static {v3}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 191
    invoke-virtual {v1}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_0

    .line 194
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Transfer-Encoding"

    .line 197
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFileIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 202
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFileIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File-Icon"

    .line 201
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_4
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 206
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-ID"

    .line 205
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 209
    invoke-static {v1}, Lcom/squareup/okhttp/Headers;->of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 210
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v0

    .line 209
    invoke-static {v2, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto/16 :goto_0

    .line 211
    :cond_6
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 212
    invoke-static {v1}, Lcom/squareup/okhttp/Headers;->of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 213
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    .line 214
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v2, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto/16 :goto_0

    .line 215
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 216
    invoke-static {v1}, Lcom/squareup/okhttp/Headers;->of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 217
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    .line 218
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v0

    .line 217
    invoke-static {v2, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v1, v0}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto/16 :goto_0

    .line 220
    :cond_8
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v1, "buildMultipart: body, file and data are null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    return-void

    .line 179
    :cond_a
    :goto_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "buildMultipart: list is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static buildPostOrPutRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    .locals 6

    .line 106
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildPostOrPutRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto/16 :goto_1

    :cond_0
    const-string v2, "multipart/"

    .line 113
    invoke-static {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const-string v3, "boundary="

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x9

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    new-instance v1, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v1}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    if-eqz v2, :cond_2

    .line 124
    new-instance v1, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    :cond_2
    invoke-static {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->setMultipartType(Lcom/squareup/okhttp/MultipartBuilder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 127
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildMultipart(Lcom/squareup/okhttp/MultipartBuilder;Ljava/util/List;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto/16 :goto_1

    :cond_3
    const-string v1, "application/x-www-form-urlencoded"

    .line 130
    invoke-static {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getJSONBody()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 134
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildFormEncodingBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_4
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 140
    :cond_5
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    .line 143
    invoke-virtual {p1, v1, p0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 146
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 149
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    .line 149
    invoke-virtual {p1, v1, p0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 155
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Request;
    .locals 5

    .line 37
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getQueryParams()Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 41
    :try_start_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->newBuilder()Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 44
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->isEncoded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    goto :goto_2

    .line 55
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_2
    invoke-static {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestHeader(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)V

    .line 64
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    return-object v2

    .line 72
    :cond_3
    invoke-static {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildPostOrPutRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 68
    :cond_4
    invoke-static {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildDeleteRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 66
    :cond_5
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 58
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "URL is wrong"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/RequestBody;
    .locals 5

    .line 227
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    .line 232
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result p0

    const-string v3, "buildRequestBody: body compression failed"

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    if-eqz v2, :cond_0

    .line 235
    :try_start_0
    invoke-static {v2}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress([B)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    :goto_0
    move-object v4, p0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 237
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    goto :goto_0

    .line 239
    :cond_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "buildRequestBody: body construction failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 247
    invoke-static {v0, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 249
    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v4

    goto :goto_1

    .line 251
    :cond_4
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v4
.end method

.method private static buildRequestHeader(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 82
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 286
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "getContentEncoding: no content encoding, set to null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 274
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "getContentType: no content type, set to default"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "application/octet-stream"

    :cond_0
    return-object p0
.end method

.method private static isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 296
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 297
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 1

    .line 301
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "gzip"

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setMultipartType(Lcom/squareup/okhttp/MultipartBuilder;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "multipart/form-data"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object p1, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "multipart/mixed"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    sget-object p1, Lcom/squareup/okhttp/MultipartBuilder;->MIXED:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    .line 264
    :cond_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setMultipartType: wrong content-type, should be multipart."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method
