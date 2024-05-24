.class public Lcom/sec/internal/ims/aec/util/HttpStore;
.super Ljava/lang/Object;
.source "HttpStore.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEapChallenge:Ljava/lang/String;

.field private mEapChallengeResp:Ljava/lang/String;

.field private mHostName:Ljava/lang/String;

.field private mHttpHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpPostData:Lorg/json/JSONObject;

.field private mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

.field private mHttpUrl:Ljava/lang/String;

.field private mHttpUrls:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParsedBody:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneId:I

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedBody:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mPhoneId:I

    return-void
.end method

.method private extractCookie(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 209
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 210
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "; "

    .line 212
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_30
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 217
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initHttpHeaders()V
    .registers 5

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 192
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v2, "Keep-Alive"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Connection"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v2, "application/vnd.gsma.eap-relay.v1.0+json"

    const-string v3, ", "

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Accept"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v2, "max-age=0"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Cache-Control"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_7a

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 201
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Accept-Language"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    return-void
.end method


# virtual methods
.method public clearHttpStore()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedBody:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getEapChallenge()Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public getEapChallengeResp()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    return-object p0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpPostData()Lorg/json/JSONObject;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    return-object p0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpUrls()Ljava/util/Queue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    return-object p0
.end method

.method public getParsedBody()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedBody:Ljava/util/Map;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public initHttpGetInfo(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpHeaders()V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5b

    .line 159
    iget v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    const-string/jumbo v1, "terminal_vendor"

    const-string v2, "SEC"

    .line 162
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "terminal_model"

    .line 163
    sget-object v2, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "terminal_sw_version"

    .line 164
    sget-object v2, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "entitlement_version"

    .line 165
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget p2, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mPhoneId:I

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "terminal_id"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "vers"

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app"

    .line 168
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_5b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "initHttpGetInfo: TelephonyManager or imei not ready"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initHttpPostInfo(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpHeaders()V

    .line 173
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    if-eqz p2, :cond_40

    .line 175
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v1, "Cookie"

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->extractCookie(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 184
    iget-object p2, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    const-string p2, "eap-relay-packet"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 182
    :cond_38
    new-instance p0, Ljava/io/IOException;

    const-string p1, "initHttpPostInfo: empty eap challenge response"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_40
    new-instance p0, Ljava/io/IOException;

    const-string p1, "initHttpPostInfo: empty cookie"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setEapChallenge(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    return-void
.end method

.method public setEapChallengeResp(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    return-void
.end method

.method public setHttpParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpPushParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "notif_action"

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "notif_token"

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public setHttpResponse(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    return-void
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    return-void
.end method

.method public setHttpUrls(Ljava/util/Queue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    return-void
.end method

.method public setParsedBody(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedBody:Ljava/util/Map;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 5

    .line 150
    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_VENDOR:Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_SW_VERSION:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->ANDROID_OS_VERSION:Ljava/lang/String;

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PRD-TS43/%s %s/%s IMS-Entitlement/6 OS-Android/%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    return-void
.end method
