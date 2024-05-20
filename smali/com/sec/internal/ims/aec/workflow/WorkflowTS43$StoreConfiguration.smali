.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;
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
    name = "StoreConfiguration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getParsedBody()Ljava/util/Map;

    move-result-object v0

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 328
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-direct {v1, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "root/timestamp"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v2, v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->debugPrint(ILjava/util/Map;)V

    .line 331
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setConfiguration(Ljava/util/Map;)V

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StoreConfiguration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 334
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0
.end method
