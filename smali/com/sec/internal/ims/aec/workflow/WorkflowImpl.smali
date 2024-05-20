.class public abstract Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.super Landroid/os/Handler;
.source "WorkflowImpl.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;


# static fields
.field protected static final TIMEOUT_PUSH_MSG:I = 0x7530

.field protected static final TIMEOUT_WAKELOCK:I = 0x15f90


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

.field protected mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

.field protected final mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

.field protected mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

.field protected mIsEntitlementOngoing:Z

.field protected mIsReadyToNotifyApp:Z

.field protected mIsSharedAkaToken:Z

.field protected mIsValidEntitlement:Z

.field protected final mModuleHandler:Landroid/os/Handler;

.field protected mNotifJar:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotifState:Ljava/lang/String;

.field protected mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

.field protected mPhoneId:I

.field protected mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

.field protected mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

.field protected mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    const-string v0, "NOT_READY"

    .line 40
    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 54
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    .line 55
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    .line 56
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private checkSimSwapped(Ljava/lang/String;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "identical sim, recover to the stored configuration"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "sim swapped, revert to the default configuration"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setImsi(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 97
    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStoredConfiguration()Landroid/os/Bundle;

    move-result-object v3

    .line 96
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handlePushNotification(Ljava/lang/String;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePushNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setPushMsgStatus(Z)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVersion(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    return-void
.end method

.method private onCompletedEapChallengeResp(Landroid/os/Message;)V
    .locals 3

    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v0, "onCompletedEapChallengeResp: no eap challenge response"

    invoke-static {p1, v0, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletedEapChallengeResp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 215
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private onCompletedWorkFlow()V
    .locals 5

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    const/16 v0, 0x3f1

    .line 176
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    const-string v1, "0"

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersionValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startVersionValidityTimer(I)V

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getTokenValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startTokenValidityTimer(I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_3

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 192
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStoredConfiguration()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletedWorkFlow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 196
    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v4

    .line 195
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "notification jar is not empty, try entitlement"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->handlePushNotification(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private onHandlePushNotification(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->clearAppId()V

    .line 232
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->isEntitlementOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->handlePushNotification(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onRequestFcmToken()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    const-string v1, "IN_PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "onRequestFcmToken"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    iput-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "senderId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private onStartWorkFlow()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartWorkFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->requestEntitlement(I)V

    :cond_0
    return-void
.end method

.method private onStopWorkflow(Landroid/os/Message;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "onStopWorkflow"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    const/16 v0, 0x3f1

    .line 159
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v1, "notification jar is not empty, try entitlement"

    invoke-static {p1, v1, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->handlePushNotification(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onWaitEapAkaResp()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "onWaitEapAkaResp"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return-void
.end method


# virtual methods
.method public changeConnectivity()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearAkaToken()V
    .locals 1

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setAkaToken(Ljava/lang/String;)V

    return-void
.end method

.method public clearResource()V
    .locals 1

    const/16 v0, 0x3f1

    .line 367
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->unregisterReceiver()V

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    return-void
.end method

.method public dump()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getAkaToken()Ljava/lang/String;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAkaToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntitlementForSMSoIp()Z
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoLte()Z
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoWiFi()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result p0

    return p0
.end method

.method public getEntitlementInitFromApp()Z
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result p0

    return p0
.end method

.method public getSMSoIpEntitlementStatus()Z
    .locals 1

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSMSoIPEntitlementStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVoLteEntitlementStatus()Z
    .locals 1

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVoWiFiEntitlementStatus()Z
    .locals 1

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onHandlePushNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->requestNetwork()V

    goto :goto_0

    .line 128
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onRequestFcmToken()V

    goto :goto_0

    .line 116
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onCompletedEapChallengeResp(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onWaitEapAkaResp()V

    goto :goto_0

    .line 110
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onCompletedWorkFlow()V

    goto :goto_0

    .line 107
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onStopWorkflow(Landroid/os/Message;)V

    goto :goto_0

    .line 104
    :pswitch_b
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onStartWorkFlow()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 75
    new-instance v0, Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/sec/internal/ims/aec/persist/AECStorage;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 76
    new-instance p3, Lcom/sec/internal/ims/aec/util/CalcEapAka;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p3, v0, p2}, Lcom/sec/internal/ims/aec/util/CalcEapAka;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    .line 77
    new-instance p3, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {p3, v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 78
    new-instance p1, Lcom/sec/internal/ims/aec/util/HttpClient;

    iget p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3}, Lcom/sec/internal/ims/aec/util/HttpClient;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    .line 79
    new-instance p1, Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 80
    new-instance p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;

    iget p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/ims/aec/util/NotificationUtil;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    .line 81
    new-instance p1, Lcom/sec/internal/ims/aec/util/PowerController;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/ims/aec/util/PowerController;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    .line 82
    new-instance p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 83
    new-instance p1, Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    .line 84
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->checkSimSwapped(Ljava/lang/String;)V

    return-void
.end method

.method public isEntitlementOngoing()Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return p0
.end method

.method public isReadyToNotifyApp()Z
    .locals 0

    .line 327
    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    return p0
.end method

.method public isSharedAkaToken()Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    return p0
.end method

.method public performEntitlement(Ljava/lang/Object;)V
    .locals 4

    .line 292
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->isEntitlementOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_6

    const/16 v1, 0x193

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result v0

    const-wide/16 v1, 0x7d0

    if-nez v0, :cond_3

    .line 306
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "performEntitlement: data unavailable"

    invoke-static {p1, v3, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 307
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getPsDataOffExempt()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "performEntitlement: 3GPP PS Data Off Exempt Services"

    invoke-static {p1, v3, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ef

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setAppId(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 316
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    const-string v3, "READY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x3ee

    .line 318
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 319
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 321
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    .line 300
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performEntitlement: stored response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ea

    .line 301
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public receivedFcmNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 378
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifIgnoreTimestamp()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 379
    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->validate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string p2, "discard incorrect notification"

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3f4

    .line 380
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {v0, p3, p2}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->calcWaitTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {v1, p3, p2}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->updateAppId(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 384
    iput p1, p2, Landroid/os/Message;->what:I

    .line 385
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    int-to-long v0, v0

    .line 386
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public receivedSmsNotification(Ljava/lang/String;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVersion(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    return-void
.end method

.method public refreshFcmToken()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "refreshFcmToken"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x3ee

    .line 271
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method abstract requestEntitlement(I)V
.end method

.method public setReadyToNotifyApp(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    return-void
.end method

.method public setSharedAkaToken(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    return-void
.end method

.method public setValidEntitlement(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    return-void
.end method

.method public triggerAutoConfigForApp()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "triggerAutoConfigForApp"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 278
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setReadyToNotifyApp(Z)V

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    return-void
.end method

.method public updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFcmToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "NOT_READY"

    .line 256
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setNotifToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "READY"

    .line 259
    iput-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 260
    iget-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifToken()Ljava/lang/String;

    move-result-object p2

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setNotifToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 263
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
