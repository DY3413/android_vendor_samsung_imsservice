.class Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;
.super Landroid/telephony/ims/aidl/ISipTransport$Stub;
.source "GoogleImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/GoogleImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportImpl"
.end annotation


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mPhoneId:I

.field final synthetic this$0:Lcom/sec/internal/google/GoogleImsService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;I)V
    .locals 0

    .line 1479
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipTransport$Stub;-><init>()V

    const/4 p1, 0x0

    .line 1476
    iput p1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mPhoneId:I

    .line 1477
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1480
    iput p2, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 6

    .line 1486
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {p1}, Lcom/sec/internal/google/GoogleImsService;->-$$Nest$fgetmSipNotifier(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/SipTransportNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget v2, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mPhoneId:I

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/SipTransportNotifier;->addSipDelegate(Ljava/util/concurrent/Executor;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 1487
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v0}, Lcom/sec/internal/google/GoogleImsService;->-$$Nest$fgetmSipNotifier(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/SipTransportNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->removeSipDelegate(Ljava/util/concurrent/Executor;ILandroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method
