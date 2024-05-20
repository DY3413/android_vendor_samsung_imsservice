.class public Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;
.super Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.source "RequestHUIToken.java"


# static fields
.field private static final serialVersionUID:J = -0x478ba96fe83abfeeL


# instance fields
.field private TAG:Ljava/lang/String;

.field private transient cookieServerIDInBody:Ljava/net/HttpCookie;

.field private transient cookieTokenInBody:Ljava/net/HttpCookie;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcookieServerIDInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->cookieServerIDInBody:Ljava/net/HttpCookie;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcookieTokenInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->cookieTokenInBody:Ljava/net/HttpCookie;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcookieServerIDInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/net/HttpCookie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->cookieServerIDInBody:Ljava/net/HttpCookie;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcookieTokenInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/net/HttpCookie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->cookieTokenInBody:Ljava/net/HttpCookie;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetParameter(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->getParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateCookie(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->updateCookie(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 33
    const-class p3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    .line 41
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    .line 44
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->updateUrl()V

    .line 48
    new-instance p2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;

    invoke-direct {p2, p0, p1, p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goSuccessfulCall()V

    return-void
.end method

.method private getParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p0, p2

    .line 161
    invoke-virtual {p1, p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    if-lez p2, :cond_1

    .line 164
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method private updateCookie(Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCookie"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieStore:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 191
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieStore:Ljava/net/CookieStore;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->cookieTokenInBody:Ljava/net/HttpCookie;

    invoke-interface {p1, v0, v1}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 193
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieStore:Ljava/net/CookieStore;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->cookieServerIDInBody:Ljava/net/HttpCookie;

    invoke-interface {p1, v0, v1}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    .line 203
    new-instance p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object p0
.end method

.method public updateUrl()V
    .locals 4

    const-string v0, "UTF-8"

    .line 174
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->MSG_PROXY_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/encore/security/GetHUIMSToken?clientType=handset&ApplicationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    .line 179
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ContextInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
