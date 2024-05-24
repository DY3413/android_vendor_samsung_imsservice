.class public Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpRequestBuilder"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDeleteRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request;
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    if-nez v0, :cond_15

    .line 95
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "buildDeleteRequest: delete all"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    .line 97
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 100
    :cond_15
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 103
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private static buildFormEncodingBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/RequestBody;
    .registers 9

    .line 161
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getJSONBody()Lorg/json/JSONObject;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 168
    :try_start_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1e} :catch_28

    .line 169
    :try_start_1e
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_45

    :catch_26
    move-exception v2

    goto :goto_2c

    :catch_28
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 171
    :goto_2c
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildFormEncodingBody: failed to load value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_45
    move-object v2, v3

    goto :goto_12

    .line 176
    :cond_47
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method

.method private static buildMultipart(Lokhttp3/MultipartBody$Builder;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Builder;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_13f

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto/16 :goto_13f

    .line 185
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 186
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 187
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v2

    const-string v3, "Content-Disposition"

    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5a

    .line 188
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 189
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->setMultipartType(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 190
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildMultipart(Lokhttp3/MultipartBody$Builder;Ljava/util/List;)V

    .line 192
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v1, v3, v0}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 193
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    .line 194
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_e

    .line 197
    :cond_5a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    const-string v4, "Content-Transfer-Encoding"

    .line 201
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_79
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFileIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    const-string v4, "File-Icon"

    .line 205
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFileIcon()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_8c
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Content-ID"

    if-nez v4, :cond_9f

    .line 209
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentId()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_9f
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v3, :cond_d0

    .line 214
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_c0

    goto :goto_d0

    .line 217
    :cond_c0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_a7

    .line 215
    :cond_d0
    :goto_d0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_a7

    .line 220
    :cond_e0
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_ff

    .line 223
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v2

    .line 224
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 223
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto/16 :goto_e

    .line 225
    :cond_ff
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11a

    .line 227
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v1, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto/16 :goto_e

    .line 228
    :cond_11a
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_135

    .line 230
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v1, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto/16 :goto_e

    .line 233
    :cond_135
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v1, "buildMultipart: body, file and data are null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_13e
    return-void

    .line 181
    :cond_13f
    :goto_13f
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "buildMultipart: list is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static buildPostOrPutRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request;
    .registers 7

    .line 108
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildPostOrPutRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    if-nez v2, :cond_37

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_114

    :cond_37
    const-string v2, "multipart/"

    .line 115
    invoke-static {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    const-string v2, "boundary="

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0x9

    const/4 v4, -0x1

    if-eq v2, v4, :cond_67

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    .line 124
    :goto_68
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    if-eqz v2, :cond_74

    .line 126
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 128
    :cond_74
    invoke-static {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->setMultipartType(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 129
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildMultipart(Lokhttp3/MultipartBody$Builder;Ljava/util/List;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_114

    :cond_96
    const-string v1, "application/x-www-form-urlencoded"

    .line 132
    invoke-static {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 133
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getJSONBody()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 136
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildFormEncodingBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_b1

    .line 138
    :cond_ad
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 140
    :goto_b1
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_114

    .line 142
    :cond_bd
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 145
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 145
    invoke-virtual {p1, v1, p0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_114

    .line 147
    :cond_e3
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fd

    .line 148
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_114

    .line 151
    :cond_fd
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object p0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 151
    invoke-virtual {p1, v1, p0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 157
    :cond_114
    :goto_114
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/Request;
    .registers 6

    .line 36
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getQueryParams()Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    if-eqz v1, :cond_75

    .line 40
    :try_start_11
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 43
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->isEncoded()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 44
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_27

    .line 48
    :cond_43
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_4b

    .line 52
    :cond_67
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto :goto_82

    .line 54
    :cond_75
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_82} :catch_b8

    .line 61
    :goto_82
    invoke-static {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequestHeader(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lokhttp3/Request$Builder;)V

    .line 63
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_ae

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a9

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a9

    const/4 p0, 0x5

    if-eq v1, p0, :cond_a1

    return-object v2

    .line 73
    :cond_a1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    .line 74
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 71
    :cond_a9
    invoke-static {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildPostOrPutRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 67
    :cond_ae
    invoke-static {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildDeleteRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 65
    :cond_b3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 57
    :catch_b8
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "URL is wrong"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static buildRequestBody(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/RequestBody;
    .registers 6

    .line 240
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    .line 245
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result p0

    const-string v3, "buildRequestBody: body compression failed"

    const/4 v4, 0x0

    if-eqz p0, :cond_46

    if-eqz v2, :cond_2d

    .line 248
    :try_start_23
    invoke-static {v2}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress([B)[B

    move-result-object p0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    :goto_2b
    move-object v4, p0

    goto :goto_59

    :cond_2d
    if-eqz v1, :cond_38

    .line 250
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->compress(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    goto :goto_2b

    .line 252
    :cond_38
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "buildRequestBody: body construction failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3f} :catch_40

    goto :goto_59

    .line 255
    :catch_40
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_46
    if-eqz v2, :cond_4d

    .line 260
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    goto :goto_59

    :cond_4d
    if-eqz v1, :cond_54

    .line 262
    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    goto :goto_59

    .line 264
    :cond_54
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-object v4
.end method

.method private static buildRequestHeader(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lokhttp3/Request$Builder;)V
    .registers 4

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 84
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_e

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_e

    :cond_38
    return-void
.end method

.method private static getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;
    .registers 2

    .line 296
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 300
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "getContentEncoding: no content encoding, set to null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1a
    return-object p0
.end method

.method private static getContentType(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;
    .registers 2

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 287
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 288
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "getContentType: no content type, set to default"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "application/octet-stream"

    :cond_1b
    return-object p0
.end method

.method private static isContentMatching(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 309
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 310
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .registers 2

    .line 314
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string v0, "gzip"

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static setMultipartType(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "multipart/form-data"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    sget-object p1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1b

    :cond_e
    const-string v0, "multipart/mixed"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 275
    sget-object p1, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    :goto_1b
    const/4 p0, 0x1

    goto :goto_26

    .line 277
    :cond_1d
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setMultipartType: wrong content-type, should be multipart."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_26
    return p0
.end method
