.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ParseConfiguration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 300
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getBody()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 302
    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->isJSONValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->isJSONValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_39

    .line 305
    :cond_34
    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->parseXml(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_3d

    .line 303
    :cond_39
    :goto_39
    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_3d
    const-string/jumbo v1, "root/application/volte/messageforincompatible"

    .line 308
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_4b

    .line 309
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    const-string/jumbo v1, "root/application/vowifi/messageforincompatible"

    .line 311
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 312
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_57
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 316
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0

    .line 318
    :cond_65
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setParsedBody(Ljava/util/Map;)V

    .line 319
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0
.end method
