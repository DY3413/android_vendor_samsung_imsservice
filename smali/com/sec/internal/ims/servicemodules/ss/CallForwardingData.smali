.class public Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.source "CallForwardingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    }
.end annotation


# instance fields
.field replyTimer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;-><init>()V

    return-void
.end method

.method static makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 1

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 35
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->makeInternalRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)V

    .line 36
    new-instance p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object p0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 1

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->cloneSsDataInternal(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;)V

    .line 54
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    iput p0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object p0

    return-object p0
.end method

.method copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .locals 4

    .line 42
    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 44
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 45
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 46
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-super {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->copySsRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-void
.end method

.method public getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->findRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    if-eqz p0, :cond_0

    return-object p0

    .line 28
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p0

    return-object p0
.end method
