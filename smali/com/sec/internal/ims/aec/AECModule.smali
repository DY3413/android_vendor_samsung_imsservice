.class public Lcom/sec/internal/ims/aec/AECModule;
.super Landroid/os/Handler;
.source "AECModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IAECModule;


# static fields
.field private static final CONFIG_MDMNTYPE:Ljava/lang/String; = "CscFeature_IMS_ConfigMdmnType"

.field private static final DISABLE_TS43:Ljava/lang/String; = "disable_ts43"

.field private static final PROPERTY_ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mAECResult:Lcom/sec/internal/ims/aec/AECResult;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

.field private final mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    const-class p1, Lcom/sec/internal/ims/aec/AECModule;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/sec/internal/ims/aec/AECResult;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/aec/AECResult;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    .line 54
    new-instance p1, Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private createWorkflow(I)V
    .locals 9

    .line 236
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v7

    move v4, p1

    move-object v8, p0

    .line 238
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private getEntitlementServer(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo p0, "support_configserver"

    const-string v0, ""

    .line 246
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSimAbsent(I)Z
    .locals 0

    .line 215
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p0, :cond_1

    .line 216
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onChangeConnectivity()V
    .locals 2

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->changeConnectivity()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onCompletedEntitlement(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoLTE(Landroid/os/Message;)V

    .line 136
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isReadyToNotifyApp()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 139
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    .line 146
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    :cond_3
    return-void
.end method

.method private onInitWorkflow()V
    .locals 2

    .line 116
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/aec/AECModule;->resetHttpResponse(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onReceivedFcmNotification(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "from"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app"

    .line 169
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    .line 170
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v3, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->receivedFcmNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onReceivedSmsNotification(Landroid/os/Message;)V
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 186
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->receivedSmsNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSimReady(I)V
    .locals 2

    .line 191
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isSimAbsent(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimReady"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->createWorkflow(I)V

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->registerDefaultNetworkCallback()V

    :cond_1
    return-void
.end method

.method private onSimRemoved(I)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSimRemoved"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->unregisterNetworkCallback()V

    :cond_0
    return-void
.end method

.method private onStartEntitlement(Landroid/os/Message;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 125
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onStopEntitlement(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    :cond_0
    return-void
.end method

.method private resetHttpResponse(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "aec_result_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "root/response"

    const-string v2, "0"

    .line 223
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_0

    const/16 v4, 0x193

    if-eq v3, v4, :cond_0

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_1

    .line 227
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetHttpResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 372
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 373
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_0

    .line 375
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->dump()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAkaToken(I)Ljava/lang/String;
    .locals 6

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    const-string v1, "InProgress"

    if-eqz v0, :cond_3

    .line 350
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getAkaToken()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isEntitlementOngoing()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 353
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    goto :goto_1

    .line 355
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isSharedAkaToken()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    move-object v1, v2

    goto :goto_1

    .line 357
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearAkaToken()V

    .line 358
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 359
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setValidEntitlement(Z)V

    const/4 v2, 0x0

    .line 360
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    goto :goto_1

    :cond_3
    const-string v1, "NotProcess"

    :goto_1
    return-object v1
.end method

.method public getEntitlementForSMSoIp(I)Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 310
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForSMSoIp()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEntitlementForVoLte(I)Z
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 290
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEntitlementForVoWiFi(I)Z
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 300
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSMSoIpEntitlementStatus(I)Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 320
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getSMSoIpEntitlementStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVoLteEntitlementStatus(I)Z
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 330
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoLteEntitlementStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVoWiFiEntitlementStatus(I)Z
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 340
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoWiFiEntitlementStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onReceivedSmsNotification(Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onReceivedFcmNotification(Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStopEntitlement(Landroid/os/Message;)V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onCompletedEntitlement(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStartEntitlement(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onChangeConnectivity()V

    goto :goto_0

    .line 84
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 85
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onSimRemoved(I)V

    goto :goto_0

    .line 79
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 80
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onSimReady(I)V

    goto :goto_0

    .line 75
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onInitWorkflow()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public initSequentially()V
    .locals 4

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v2, 0x2

    .line 63
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;-><init>(Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;->registerFcmEventListener(Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;)V

    .line 67
    new-instance v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isEntitlementDisabled(I)Z
    .locals 2

    .line 251
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable_ts43"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEntitlementRequired(I)Z
    .locals 4

    .line 257
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementDisabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "entitlement is disabled"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.ICC_TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unsupported icc type"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    const-string v2, "ims"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "disabled ImsSwitch"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 272
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 273
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    const-string v3, "Bouygues_FR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BOG"

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "E/S: All models only on BOG SW, but not others like XEF"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 281
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ts43"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 282
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "nsds_eur"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 1

    .line 382
    iget-boolean p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez p1, :cond_0

    const/4 p1, 0x4

    const/4 p2, 0x0

    .line 383
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public triggerAutoConfigForApp(I)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 391
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->triggerAutoConfigForApp()V

    :cond_0
    return-void
.end method
