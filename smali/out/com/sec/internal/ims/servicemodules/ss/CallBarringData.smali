.class public Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.source "CallBarringData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;-><init>()V

    return-void
.end method

.method static makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .registers 3

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 35
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->makeInternalRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)V

    const/4 p0, 0x0

    .line 36
    iput-boolean p0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .registers 2

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->cloneSsDataInternal(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
    .registers 1

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p0

    return-object p0
.end method

.method copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .registers 5

    .line 42
    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 44
    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 45
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-super {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->copySsRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-void
.end method

.method getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->findRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    if-eqz p0, :cond_9

    return-object p0

    .line 28
    :cond_9
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .registers 3

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    return-object p0
.end method
