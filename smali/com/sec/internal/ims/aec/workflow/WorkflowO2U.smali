.class public Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;
.super Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.source "WorkflowO2U.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;
    }
.end annotation


# static fields
.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final MDSP30:Ljava/lang/String; = "3.0"

.field private static final RESPONSE_ENTITLEMENT_CHECK:I = 0x65

.field private static final SERVICE_ENTITLEMENT_STATUS:Ljava/lang/String; = "serviceEntitlementStatus"

.field private static final SERVICE_VOLTE:Ljava/lang/String; = "VoLTE"

.field private static final SERVICE_VOWIFI:Ljava/lang/String; = "VoWiFi"


# instance fields
.field private mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

.field private mBulkEntitlementCheck:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

.field private mRetryCount:I

.field private mReuseLastEntitlementResult:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    .line 50
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    return-void
.end method

.method private checkRetry(I)Z
    .locals 4

    .line 253
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    .line 254
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "checkRetry: exceeded max try count"

    invoke-static {p1, v3, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    iput-boolean v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    .line 256
    iput v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e9

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1e6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x198

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 269
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRetry: HTTP error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    .line 261
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRetry: NSDS error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v2
.end method

.method private emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private handleEntitlementResponse(Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;)V
    .locals 3

    .line 219
    iget v0, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    const/16 v1, 0x418

    if-eq v1, v0, :cond_6

    iget v2, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 222
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->checkRetry(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 223
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    const/4 v0, -0x1

    .line 224
    iget p1, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    const/16 v1, 0x3e9

    if-ne v0, p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "need to try again entitlement check after 5 seconds"

    invoke-static {p1, v2, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "need to try again entitlement check after 30 seconds"

    invoke-static {p1, v2, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 232
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    const p1, 0x15180

    .line 234
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->startPollIntervalTimer(I)V

    .line 235
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v1, "all tries failed, retry entitlement check after 1 day"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-boolean v2, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-boolean v2, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoWiFiEntitlementStatus(Z)V

    .line 239
    iget v0, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->pollInterval:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->startPollIntervalTimer(I)V

    .line 240
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->sendBroadcastCompletedEntitlement()V

    .line 241
    iget-boolean v0, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    if-nez v0, :cond_5

    iget-boolean p1, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    if-eqz p1, :cond_4

    goto :goto_0

    .line 245
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->sendDeRegister(Landroid/content/Context;I)V

    goto :goto_1

    .line 242
    :cond_5
    :goto_0
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v1}, Lcom/sec/internal/ims/aec/AECResult;->handleUtSwitch(IZ)V

    .line 243
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->sendTryRegister(Landroid/content/Context;I)V

    :goto_1
    const/16 p1, 0x3f1

    .line 248
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 221
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->handleServiceNotEntitled(I)V

    :goto_3
    return-void
.end method

.method private handleServiceNotEntitled(I)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceNotEntitled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    .line 210
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoWiFiEntitlementStatus(Z)V

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopPollIntervalTimer()V

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 213
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->handleUtSwitch(IZ)V

    .line 214
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->sendDeRegister(Landroid/content/Context;I)V

    .line 215
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->sendBroadcastCompletedEntitlement()V

    return-void
.end method

.method private onHandleEntitlementResponse(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "serviceEntitlementStatus"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 167
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->setEntitlementStatus(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->handleEntitlementResponse(Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;)V

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return-void
.end method

.method private onNetworkCallbackAvailable()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setNetwork(Lcom/squareup/okhttp/Dns;Ljavax/net/SocketFactory;)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->requestEntitlement(I)V

    return-void
.end method

.method private onUnregisterNetworkCallback()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setNetwork(Lcom/squareup/okhttp/Dns;Ljavax/net/SocketFactory;)V

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    return-void
.end method

.method private sendBroadcastCompletedEntitlement()V
    .locals 3

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setEntitlementStatus(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;
    .locals 8

    .line 177
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;-><init>()V

    if-eqz p1, :cond_5

    .line 180
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    .line 181
    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    .line 182
    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoWiFi:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    .line 185
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    .line 187
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 188
    iget-object v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string v5, "VoLTE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 189
    iget v3, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v3, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 190
    :goto_1
    iput-boolean v5, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string v7, "VoWiFi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget v3, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v3, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoWiFi:I

    if-ne v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    .line 193
    :goto_2
    iput-boolean v5, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    goto :goto_0

    .line 198
    :cond_4
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->pollInterval:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 199
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->pollInterval:I

    .line 203
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEntitlementStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->printLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-object v0
.end method

.method private startPollIntervalTimer(I)V
    .locals 3

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startPollIntervalTimer(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entitlement check will be performed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sec"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearResource()V
    .locals 1

    const/16 v0, 0x3f1

    .line 69
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopPollIntervalTimer()V

    return-void
.end method

.method public getVoWiFiEntitlementStatus()Z
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 p1, 0x3e9

    if-eq v0, p1, :cond_1

    const/16 p1, 0x3f5

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onUnregisterNetworkCallback()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onNetworkCallbackAvailable()V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->requestNetwork()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 95
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->requestEntitlement(I)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->requestEntitlement(I)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onHandleEntitlementResponse(Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 58
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 59
    new-instance p2, Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1, p3}, Lcom/sec/internal/ims/aec/persist/AECStorage;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 60
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 61
    new-instance p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p2, p3, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 62
    new-instance p1, Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p2, p3, p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    .line 63
    new-instance p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 64
    new-instance p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v6, "3.0"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBulkEntitlementCheck:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    return-void
.end method

.method public performEntitlement(Ljava/lang/Object;)V
    .locals 4

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result p1

    const-wide/16 v0, 0x7d0

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "performEntitlement: data unavailable"

    invoke-static {p1, v3, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getPsDataOffExempt()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "performEntitlement: 3GPP PS Data Off Exempt Services"

    invoke-static {p1, v3, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ef

    .line 109
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e9

    .line 112
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected requestEntitlement(I)V
    .locals 3

    .line 119
    iget-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestEntitlement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "VoLTE"

    const-string v2, "VoWiFi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setRequestUrl(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBulkEntitlementCheck:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method
