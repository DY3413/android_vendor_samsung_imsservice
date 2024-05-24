.class Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mAlwaysSendSubscriberId:Ljava/lang/Boolean;

.field private mDeleteAllTokens:Ljava/lang/Boolean;

.field private mTargetSubscriptionId:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 867
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    .line 868
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    .line 869
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-void
.end method

.method private addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 909
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_17

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 910
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 911
    aput-object p4, p2, p5

    return-object p0
.end method

.method private getParamCount()I
    .registers 3

    .line 901
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 902
    :goto_7
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 903
    :cond_d
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    if-eqz p0, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    return v0
.end method


# virtual methods
.method public build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .registers 10

    .line 873
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->getParamCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 875
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    invoke-direct {p0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 878
    :cond_d
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ""

    .line 882
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    const-string/jumbo v5, "subscriptionId"

    .line 883
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move v7, v3

    move-object v3, v2

    goto :goto_2d

    :cond_2b
    const/4 v2, 0x0

    move v7, v2

    .line 885
    :goto_2d
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    if-eqz v2, :cond_41

    const-string v5, "alwaysReturnSubscriptionId"

    .line 886
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v7, 0x1

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move v7, v8

    .line 888
    :cond_41
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    if-eqz v2, :cond_51

    const-string v5, "deleteAll"

    .line 889
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 891
    :cond_51
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    invoke-direct {p0, v3, v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0
.end method

.method public setAlwaysSendSubscriberId(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
    .registers 2

    .line 894
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeleteAllTokens(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
    .registers 2

    .line 896
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
    .registers 2

    .line 895
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-object p0
.end method
