.class public Lcom/sec/internal/ims/aec/util/HttpClient$Response;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/util/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field private final mBody:[B

.field private final mHeader:Ljava/util/Map;
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

.field private final mStatusCode:I

.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/HttpClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/aec/util/HttpClient;ILjava/util/Map;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->this$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p2, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mStatusCode:I

    .line 260
    iput-object p3, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    .line 261
    iput-object p4, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mBody:[B

    .line 263
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->debugPrint()V

    return-void
.end method

.method private debugPrint()V
    .registers 5

    .line 279
    invoke-static {}, Lcom/sec/internal/ims/aec/util/HttpClient;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->this$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/HttpClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/HttpClient;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    if-eqz v0, :cond_84

    .line 282
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_84

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 291
    :cond_72
    invoke-static {}, Lcom/sec/internal/ims/aec/util/HttpClient;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->this$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-static {v3}, Lcom/sec/internal/ims/aec/util/HttpClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/HttpClient;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_39

    :cond_84
    return-void
.end method


# virtual methods
.method public getBody()[B
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mBody:[B

    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
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

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 267
    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mStatusCode:I

    return p0
.end method
