.class public Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public open(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .registers 8

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->tryToConnectHttpUrlConnectionWithinTimeOut()V

    .line 234
    new-instance v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v3, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v3

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v4, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResStatusMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v5, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v5

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getPostResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    goto :goto_42

    :cond_3c
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    :goto_42
    move-object v6, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
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

    .line 0
    return-void
.end method
