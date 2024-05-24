.class public Lcom/sec/internal/ims/aec/AECModule;
.super Landroid/os/Handler;
.source "AECModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IAECModule;


# static fields
.field private static final PROPERTY_ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mAECResult:Lcom/sec/internal/ims/aec/AECResult;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

.field private final mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;


# direct methods
.method public static synthetic $r8$lambda$zPsmCNuROGDzHtRI3mucbNf-Kmk(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/aec/AECModule;->lambda$isEntitlementDisabled$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
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

    const/16 p1, 0x8

    .line 56
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private createWorkflow(I)V
    .registers 11

    .line 191
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 192
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 193
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v7

    move v4, p1

    move-object v8, p0

    .line 193
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_35
    return-void
.end method

.method private getEntitlementServer(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo p0, "support_configserver"

    const-string v0, ""

    .line 201
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEntitlementDisabled(I)Z
    .registers 7

    .line 254
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_67

    .line 255
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_67

    const-string/jumbo p1, "ro.product.first_api_level"

    .line 256
    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "SM-S711"

    const-string v3, "SM-A256"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/aec/AECModule$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/aec/AECModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    move v1, v0

    .line 265
    :goto_42
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstSdkVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isDisabledModel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x22

    if-ge p1, p0, :cond_66

    if-eqz v1, :cond_67

    :cond_66
    move v0, v2

    :cond_67
    return v0
.end method

.method private isSimAbsent(I)Z
    .registers 2

    .line 186
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p0, :cond_1a

    .line 187
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private static synthetic lambda$isEntitlementDisabled$0(Ljava/lang/String;)Z
    .registers 2

    .line 264
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onChangeConnectivity()V
    .registers 3

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 146
    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 147
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_1c

    .line 149
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->changeConnectivity()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method private onClearHttpResponse()V
    .registers 9

    .line 205
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_5a

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "aec_result_%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 208
    iget-object v4, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_57

    const-string/jumbo v4, "root/response"

    const-string v5, "0"

    .line 210
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x190

    if-eq v6, v7, :cond_37

    const/16 v7, 0x193

    if-eq v6, v7, :cond_37

    const/16 v7, 0x1f4

    if-ne v6, v7, :cond_57

    .line 214
    :cond_37
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 215
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClearHttpResponse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5a
    return-void
.end method

.method private onCompletedEntitlement(Landroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_41

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 120
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoLTE(Landroid/os/Message;)V

    .line 123
    :cond_17
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 124
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 125
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isReadyToNotifyApp()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    .line 126
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    goto :goto_38

    .line 130
    :cond_33
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    .line 133
    :cond_38
    :goto_38
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    :cond_41
    return-void
.end method

.method private onReceivedSmsNotification(Landroid/os/Message;)V
    .registers 3

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 157
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->receivedSmsNotification(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private onSimReady(I)V
    .registers 4

    .line 162
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isSimAbsent(I)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimReady"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 166
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 169
    :cond_23
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->createWorkflow(I)V

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->registerDefaultNetworkCallback()V

    :cond_2b
    return-void
.end method

.method private onSimRemoved(I)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 177
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSimRemoved"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->unregisterNetworkCallback()V

    :cond_22
    return-void
.end method

.method private onStartEntitlement(Landroid/os/Message;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p1, 0x0

    .line 112
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method private onStopEntitlement(Landroid/os/Message;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    :cond_b
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 3

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 358
    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 359
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_1c

    .line 361
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->dump()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public getAkaToken(I)Ljava/lang/String;
    .registers 8

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 336
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getAkaToken()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isEntitlementOngoing()Z

    move-result v2

    const-string v3, "InProgress"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_20

    .line 339
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 340
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    :goto_1e
    move-object v1, v3

    goto :goto_46

    .line 341
    :cond_20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isSharedAkaToken()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_31

    .line 349
    :cond_2d
    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    goto :goto_46

    .line 343
    :cond_31
    :goto_31
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearAkaToken()V

    .line 344
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 345
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setValidEntitlement(Z)V

    const/4 v1, 0x0

    .line 346
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 347
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    goto :goto_1e

    :cond_44
    const-string v1, "NotProcess"

    :goto_46
    return-object v1
.end method

.method public getEntitlementForSMSoIp(I)Z
    .registers 2

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 296
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForSMSoIp()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public getEntitlementForVoLte(I)Z
    .registers 2

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 276
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public getEntitlementForVoWiFi(I)Z
    .registers 2

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 286
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public getSMSoIpEntitlementStatus(I)Z
    .registers 2

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 306
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getSMSoIpEntitlementStatus()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public getVoLteEntitlementStatus(I)Z
    .registers 2

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 316
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoLteEntitlementStatus()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public getVoWiFiEntitlementStatus(I)Z
    .registers 2

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 326
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoWiFiEntitlementStatus()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_3d

    .line 103
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onClearHttpResponse()V

    goto :goto_3d

    .line 99
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onReceivedSmsNotification(Landroid/os/Message;)V

    goto :goto_3d

    .line 95
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStopEntitlement(Landroid/os/Message;)V

    goto :goto_3d

    .line 91
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onCompletedEntitlement(Landroid/os/Message;)V

    goto :goto_3d

    .line 87
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStartEntitlement(Landroid/os/Message;)V

    goto :goto_3d

    .line 83
    :pswitch_1a
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onChangeConnectivity()V

    goto :goto_3d

    .line 78
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 79
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onSimRemoved(I)V

    goto :goto_3d

    .line 73
    :pswitch_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 74
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onSimReady(I)V

    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public initSequentially()V
    .registers 5

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

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

    goto :goto_8

    .line 65
    :cond_1e
    new-instance v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isEntitlementRequired(I)Z
    .registers 6

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unsupported icc type"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 230
    :cond_2a
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    const-string v2, "ims"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "disabled ImsSwitch"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 235
    :cond_3d
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 236
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_48
    const-string v0, ""

    :goto_4a
    const-string v3, "Bouygues_FR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 237
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BOG"

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "E/S: All models only on BOG SW, but not others like XEF"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 244
    :cond_66
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no needed to support Entitlement Server from new U OS"

    invoke-static {p0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_74
    const-string/jumbo v0, "ts43"

    .line 249
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "nsds_eur"

    .line 250
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8e

    :cond_8d
    move v1, v2

    :cond_8e
    return v1
.end method

.method public onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .registers 5

    .line 368
    iget-boolean p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p2, :cond_15

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez p1, :cond_15

    const/4 p1, 0x4

    const/4 p2, 0x0

    .line 369
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    return-void
.end method

.method public triggerAutoConfigForApp(I)V
    .registers 2

    .line 375
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 377
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->triggerAutoConfigForApp()V

    :cond_b
    return-void
.end method
