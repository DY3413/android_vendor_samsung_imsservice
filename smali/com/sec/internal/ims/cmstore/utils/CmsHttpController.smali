.class public Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
.super Ljava/lang/Object;
.source "CmsHttpController.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCookieHandler:Ljava/net/CookieHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lcom/sec/internal/ims/cmstore/utils/CmsPersistentHttpCookieStore;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CmsPersistentHttpCookieStore;-><init>(Landroid/content/Context;I)V

    sget-object p1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, p1}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->mCookieHandler:Ljava/net/CookieHandler;

    return-void
.end method


# virtual methods
.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 2

    .line 26
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute - url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->mCookieHandler:Ljava/net/CookieHandler;

    check-cast p0, Ljava/net/CookieManager;

    invoke-virtual {p0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p0

    return-object p0
.end method
