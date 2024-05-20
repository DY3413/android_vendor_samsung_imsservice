.class Lcom/sec/internal/ims/config/WorkFlowController;
.super Ljava/lang/Object;
.source "WorkFlowController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WorkFlowController"


# instance fields
.field private final mAcsConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/config/params/ACSConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImsiList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMsisdnList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsProfileList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkflowList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/config/IWorkflow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mAcsConfigs:Ljava/util/Map;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mImsiList:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mMsisdnList:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 45
    iget-object v1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mAcsConfigs:Ljava/util/Map;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/config/params/ACSConfig;

    invoke-direct {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/WorkFlowController;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toLastString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method deleteConfiguration(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 3

    const/4 v0, 0x0

    .line 219
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/WorkFlowController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/config/WorkFlowController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mAcsConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/params/ACSConfig;

    return-object p0
.end method

.method getCurrentRcsConfigVersion(I)I
    .locals 2

    const-string v0, "root/vers/version"

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 120
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WorkFlowController"

    const-string v0, "exception on reading config. return version 0"

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getMsisdnSkipCount(I)I
    .locals 4

    const-string v0, "info/msisdn/skip_count"

    const-string v1, "WorkFlowController"

    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 103
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MsisdnSkipCount : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "exception on reading config. return 0"

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method getRcsProfile(I)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    if-eqz p0, :cond_0

    .line 204
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->getStorage()Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    return-object p0
.end method

.method initWorkflow(ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->init()V

    const-string p0, "WorkFlowController"

    const-string/jumbo p2, "workflow is created and init"

    .line 65
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method isSimInfochanged(IZ)Z
    .locals 9

    .line 149
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WorkFlowController"

    if-nez v0, :cond_0

    const-string p0, "changedSimInfo: SimManager null"

    .line 151
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 156
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "changedSimInfo: getImsi null or empty"

    .line 158
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mImsiList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, " ==> "

    if-nez v5, :cond_2

    if-nez p2, :cond_2

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changedSimInfo: imsi is changed, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v6

    goto :goto_0

    :cond_2
    move-object v3, v4

    move v4, v1

    .line 169
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mImsiList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 172
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    .line 173
    instance-of v5, v5, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 174
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changedSimInfo: Non CMCC sim, not suport RCS: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 180
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v3, v8, :cond_4

    const-string v3, "jibe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "sec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_7

    .line 183
    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p0, "changedSimInfo: getLine1Number null"

    .line 185
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mMsisdnList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changedSimInfo: msisdn is changed, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object p2, v0

    move v6, v4

    .line 194
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mMsisdnList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v6

    .line 197
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changedSimInfo: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_8

    const-string p2, "changed"

    goto :goto_2

    :cond_8
    const-string p2, "not changed"

    :goto_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v4
.end method

.method onBootCompleted()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onBootCompleted()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onSimRefresh(I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    const-string v0, "WorkFlowController"

    const-string v1, "onSimRefresh: remove workflow"

    .line 93
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method putRcsProfile(ILjava/lang/String;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method removeWorkFlow(I)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
