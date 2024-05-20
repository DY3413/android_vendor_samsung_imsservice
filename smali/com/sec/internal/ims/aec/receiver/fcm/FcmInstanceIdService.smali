.class public Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FcmInstanceIdService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .line 15
    sget-object p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onTokenRefresh"

    invoke-static {p0, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 20
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->refreshFcmToken()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
