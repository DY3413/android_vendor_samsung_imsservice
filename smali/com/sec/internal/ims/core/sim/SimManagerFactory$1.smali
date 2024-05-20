.class Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 7

    .line 105
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetmSubMan()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const-string v0, "SimManagerFactory"

    if-nez p0, :cond_0

    const-string/jumbo p0, "subInfoList is null"

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscriptionsChanged: subInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetsSimManagerList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 118
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 119
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-eq v5, v6, :cond_3

    const/4 v1, 0x1

    .line 121
    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    :cond_3
    const-string v4, "Do not notify: SubId is not changed."

    .line 123
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_1

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetmSubIdChangeRegistrants()Lcom/sec/internal/helper/RegistrantList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateAdsSlot()V

    return-void
.end method
