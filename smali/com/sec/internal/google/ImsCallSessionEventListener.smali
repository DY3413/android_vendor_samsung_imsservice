.class public Lcom/sec/internal/google/ImsCallSessionEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "ImsCallSessionEventListener.java"


# static fields
.field private static final EVENT_CALL_RETRY:I = 0x64

.field private static final EVENT_RETRY_AFTER_TIMEOUT:I = 0x65

.field public static final EVENT_VCID_FAILURE:Ljava/lang/String; = "VCIDGeneralFailure"

.field private static USSD_MODE_NW_ERROR:I = -0x1

.field private static mEventCallRetryCounter:I

.field private static mEventCallRetryTotalTimer:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

.field private final mLock:Ljava/lang/Object;

.field private mPrevErrorString:Ljava/lang/String;

.field private mPrevOnEndedError:I

.field private mPrevOnErrorVal:I

.field private mPrevRetryAfter:I

.field private mTelephonyReadyToHandleImsCallbacks:Z


# direct methods
.method public static synthetic $r8$lambda$k9ocXuAIJlFklHS_Vj40RhF4UtI(Lcom/sec/internal/google/ImsCallSessionEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$xF62hNzRvnDUfPX03b0tmKa9MNA(Lcom/sec/internal/google/ImsCallSessionEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    const-string v0, "ImsCallSessionEventListener"

    .line 35
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnEndedError:I

    .line 45
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const-string v1, ""

    .line 46
    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 47
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevRetryAfter:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    return-void
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$0()V
    .locals 3

    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Telephoy gets ready. Invoke onError()"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevRetryAfter:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/google/ImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const-string v1, ""

    .line 77
    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevRetryAfter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$1()V
    .locals 2

    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Telephoy gets ready. Invoke onEnded()"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnEndedError:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsCallSessionEventListener;->onEnded(I)V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnEndedError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 289
    :cond_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 290
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needSkipUntilTelephonyReady() mTelephonyReadyToHandleImsCallbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsCallSessionEventListener"

    .line 291
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-boolean p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    if-nez p0, :cond_3

    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 296
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private notifyAlertInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v1

    .line 841
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    const-string v3, "<urn:alert:service:call-waiting>"

    .line 842
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean v5, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    if-nez v5, :cond_0

    const/4 p0, 0x1

    .line 843
    iput-boolean p0, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    const/4 p0, 0x3

    .line 844
    invoke-virtual {v3, v4, p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    goto :goto_0

    .line 845
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    const-string v2, "<urn:alert:service:forward>"

    .line 846
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_1

    .line 847
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    goto :goto_0

    :cond_1
    const-string v0, "<urn:alert:service:normal>"

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 v0, 0x9

    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onErrorBeforeNego(ILjava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 499
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 500
    iget-object p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 501
    iget-object p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 502
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0x1388

    if-le p1, p2, :cond_1

    const/16 p2, 0x1770

    if-lt p1, p2, :cond_2

    :cond_1
    const/16 p2, 0x1792

    if-lt p1, p2, :cond_3

    const/16 p2, 0x17ef

    if-gt p1, p2, :cond_3

    .line 505
    :cond_2
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p3, 0x1fe

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 506
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_1

    .line 508
    :cond_3
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result p3

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 509
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v1, :cond_9

    .line 512
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 513
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    new-instance v6, Lcom/sec/ims/util/SipError;

    invoke-direct {v6, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v3, v5, v6, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 515
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    const/16 v1, 0x96e

    if-ne p1, v1, :cond_5

    .line 516
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0xbb9

    invoke-direct {v1, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_0

    .line 519
    :cond_5
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x93

    invoke-direct {v1, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 522
    :goto_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_6

    sget-object v3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_8

    .line 523
    :cond_6
    sget v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    add-int/2addr v0, p3

    sput v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 524
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "ImsCallSessionImpl"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 525
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 526
    new-instance v0, Lcom/sec/internal/google/ImsCallSessionEventListener$1;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/sec/internal/google/ImsCallSessionEventListener$1;-><init>(Lcom/sec/internal/google/ImsCallSessionEventListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    .line 542
    sget v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEventCallRetryCounter = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mEventCallRetryTotalTimer = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " retryAfter = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ImsCallSessionEventListener"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p3, :cond_7

    .line 544
    sget v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    const/4 v4, 0x5

    if-ge v0, v4, :cond_7

    sget v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    const/16 v4, 0x2d

    if-ge v0, v4, :cond_7

    .line 545
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 546
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    int-to-long p2, p3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3

    .line 549
    :cond_7
    sput v2, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 550
    sput v2, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 551
    iget-object p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->quit()Z

    .line 552
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result p3

    invoke-direct {v1, p3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 554
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 555
    :cond_9
    iget-object p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 556
    iget-object p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 557
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    :cond_a
    const/16 p3, 0x17e

    const/16 v0, 0x17d

    if-eqz v1, :cond_b

    .line 558
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eq p1, v0, :cond_b

    if-eq p1, p3, :cond_b

    .line 560
    new-instance p3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x92

    invoke-direct {p3, v0, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 564
    :cond_b
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    .line 565
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v1, v3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    if-eq p1, v0, :cond_c

    if-ne p1, p3, :cond_d

    .line 568
    :cond_c
    iput p1, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 569
    invoke-static {p2}, Lcom/sec/internal/google/DataTypeConvertor;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result p1

    .line 570
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const/16 p3, 0xfe

    if-ne p1, p3, :cond_d

    .line 572
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1, p2}, Lcom/sec/internal/google/GoogleImsService;->setServiceUrn(Ljava/lang/String;)V

    .line 575
    :cond_d
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 578
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 p1, 0x8

    iput p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 579
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->releaseSessionListeners()V

    return v2
.end method

.method private onErrorWhileNegoOrLater(ILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 596
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/16 p2, 0x451

    const/4 v2, 0x1

    if-eq p1, p2, :cond_b

    const/16 p2, 0x452

    if-eq p1, p2, :cond_a

    const/16 p2, 0x457

    const/4 v2, 0x0

    if-eq p1, p2, :cond_9

    const/16 p2, 0x458

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_0

    .line 623
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 624
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 625
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v5, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    if-ne v5, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 629
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isHk()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ge p2, v4, :cond_4

    .line 631
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x92

    invoke-direct {v1, p2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_1

    .line 628
    :cond_3
    :goto_0
    iget-object p2, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    invoke-virtual {v3, p2, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 633
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    const/16 v3, 0x25b

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v4, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_5

    const/16 v4, 0xd2

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    .line 635
    iget-object p1, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 636
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 637
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ne p1, v3, :cond_6

    .line 638
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 640
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 642
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 p2, 0x8

    iput p2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 643
    iget-boolean p2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz p2, :cond_7

    .line 644
    iget-object p2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/google/GoogleImsService;->enterEmergencyCallbackMode(I)V

    .line 645
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput-boolean v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 647
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->releaseSessionListeners()V

    goto :goto_3

    .line 611
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 614
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferred()V

    goto :goto_3

    .line 605
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 608
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V

    goto :goto_3

    .line 602
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 599
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_a
    :goto_3
    return v2

    .line 617
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x45e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public notifyReadyToHandleImsCallbacks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImsCallSessionEventListener"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyReadyToHandleImsCallbacks() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mTelephonyReadyToHandleImsCallbacks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPrevOnEndedError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnEndedError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevOnErrorVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevErrorString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPrevRetryAfter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevRetryAfter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    if-eqz v1, :cond_1

    .line 69
    monitor-exit v0

    return-void

    .line 71
    :cond_1
    iget v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 72
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sec/internal/google/ImsCallSessionEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/sec/internal/google/ImsCallSessionEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/google/ImsCallSessionEventListener;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 84
    :cond_2
    iget v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnEndedError:I

    if-le v1, v2, :cond_3

    .line 85
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/google/ImsCallSessionEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/sec/internal/google/ImsCallSessionEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/google/ImsCallSessionEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCalling()V
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 107
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 757
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 760
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const-string p2, "on-hold"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 766
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 769
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const-string p2, "connected"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onConferenceEstablished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 665
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0

    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 176
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 181
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 182
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iput v2, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 183
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_2
    return-void
.end method

.method public onEnded(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 305
    :try_start_0
    sput v1, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 306
    sput v1, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 307
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v2, :cond_0

    .line 308
    monitor-exit v0

    return-void

    .line 311
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/internal/google/ImsCallSessionEventListener;->needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone onEnded()"

    .line 312
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnEndedError:I

    .line 314
    monitor-exit v0

    return-void

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result v3

    .line 319
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v3, 0x1

    if-eq v5, v7, :cond_2

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 321
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 322
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 324
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    const-string v4, "ImsCallSessionEventListener"

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEnded(), cmcType: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v8, v8, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v8}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sessionState: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v8, v8, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_e

    .line 328
    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 330
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v5, :cond_4

    const/16 v4, 0xd2

    if-ne p1, v4, :cond_4

    .line 331
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v5, 0x5

    invoke-virtual {v4, v7, v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 334
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v5, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/16 v8, 0x92

    if-ge v5, v6, :cond_b

    if-eqz v3, :cond_5

    .line 335
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v7, v1

    :goto_0
    const-string v4, "ImsCallSessionEventListener"

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnded(), CallDirection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6

    const-string v6, "cp is null"

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isSdPulling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    .line 338
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v7, :cond_7

    .line 339
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 340
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    :cond_7
    if-eqz v3, :cond_9

    .line 341
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 342
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    new-instance v7, Lcom/sec/ims/util/SipError;

    invoke-direct {v7, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v5, v4, v6, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 344
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_8

    const/16 v2, 0x96e

    if-ne p1, v2, :cond_8

    .line 345
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0xbb9

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_2

    .line 348
    :cond_8
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x93

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 351
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    :cond_9
    if-eqz v3, :cond_a

    .line 352
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 353
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v8, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 355
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 357
    :cond_a
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 358
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 359
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 362
    :cond_b
    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    const/4 v5, 0x4

    if-lez v4, :cond_c

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v6, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ne v6, v5, :cond_c

    .line 364
    iget-object v2, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v4, v2, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 365
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    :cond_c
    if-eqz v3, :cond_d

    .line 366
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ge v2, v5, :cond_d

    .line 368
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v8, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 369
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 371
    :cond_d
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 372
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 375
    :cond_e
    iget-object v2, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 376
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 378
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v4, p1, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 383
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->isMultiparty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    .line 384
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1, v2}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 387
    :cond_10
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean v3, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v3, :cond_11

    .line 388
    iget-object v3, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/sec/internal/google/GoogleImsService;->enterEmergencyCallbackMode(I)V

    .line 391
    :cond_11
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 v3, 0x8

    iput v3, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 392
    iput-boolean v1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 393
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->releaseSessionListeners()V

    .line 394
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_12

    .line 396
    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    :cond_12
    return-void

    :catchall_0
    move-exception p0

    .line 394
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onEpdgStateChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 812
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v1, :cond_0

    .line 415
    monitor-exit v0

    return-void

    .line 417
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/google/ImsCallSessionEventListener;->needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone onError()"

    .line 418
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iput p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    .line 420
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 421
    iput p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mPrevRetryAfter:I

    .line 422
    monitor-exit v0

    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    const/16 v3, 0x25b

    const/4 v4, 0x2

    if-lez v2, :cond_5

    const-string v5, "ImsCallSessionEventListener"

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onError(), error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v7, v7, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v5, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-gt v5, v4, :cond_4

    .line 431
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 432
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 433
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->isExistP2pConnection()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-ne p1, v3, :cond_3

    .line 437
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    goto :goto_0

    :cond_3
    const-string p1, "ImsCallSessionEventListener"

    .line 443
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError(), ignore error of cmcCall. just return: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v0

    return-void

    .line 448
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 449
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_5

    .line 450
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-interface {v5, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 453
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_8

    if-eqz v1, :cond_6

    if-ne p1, v3, :cond_6

    const-string v2, "Outgoing Call Barred"

    .line 455
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 456
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v3

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 458
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ge v2, v4, :cond_7

    .line 459
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/ImsCallSessionEventListener;->onErrorBeforeNego(ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 460
    monitor-exit v0

    return-void

    .line 462
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionEventListener;->onErrorWhileNegoOrLater(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 463
    monitor-exit v0

    return-void

    .line 465
    :cond_8
    iget-object p3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p3}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 466
    iget-object p3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p3}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object p3

    const/4 v2, 0x0

    .line 467
    iput-boolean v2, p3, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    .line 468
    invoke-virtual {p3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 469
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 470
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 471
    invoke-virtual {p3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 472
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p2}, Lcom/sec/internal/google/GoogleImsService;->isInitialMerge()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x451

    if-ne p1, p2, :cond_9

    .line 473
    invoke-virtual {p3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 477
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 478
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 480
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onEstablished(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x4

    .line 191
    iput v2, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 192
    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 193
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isWifiCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v3, :cond_3

    .line 199
    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v1, v2, :cond_2

    .line 201
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    :cond_3
    return-void
.end method

.method public onFailure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v1, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 220
    iget v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 221
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 222
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 224
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 225
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 228
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->releaseSessionListeners()V

    return-void
.end method

.method public onForwarded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 276
    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    return-void
.end method

.method public onHeld(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 248
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateHoldToneType(Z)V

    .line 249
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz p1, :cond_0

    .line 252
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsGeneralEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VCIDGeneralFailure"

    .line 829
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 831
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 833
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 700
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v1

    .line 702
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 704
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 706
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 710
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    const-string v7, "connected"

    move v4, p1

    .line 709
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/google/GoogleImsService;->putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 713
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v2, :cond_1

    .line 714
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 715
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, p1}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 716
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 717
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_0

    .line 720
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, p1}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 721
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 722
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 725
    iput-boolean p1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    .line 728
    :cond_3
    iget-boolean p1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 729
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 730
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    check-cast p1, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 731
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v2, :cond_4

    .line 732
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1

    .line 734
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 738
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/internal/google/GoogleImsService;->isInitialMerge()Z

    move-result p1

    if-nez p1, :cond_6

    .line 739
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 741
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v1, :cond_6

    .line 742
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_6
    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const-string v1, "disconnected"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    .line 751
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->removeConferenceState(I)V

    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    .line 672
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/internal/google/GoogleImsService;->clearConferenceStateList()V

    const/4 p1, 0x0

    move v0, p1

    .line 673
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 674
    aget-object v1, p2, v0

    const-string v2, "*23#"

    .line 675
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 676
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "[^0-9]"

    const-string v3, ""

    .line 678
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "010"

    .line 679
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 680
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 682
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 683
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 686
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v5

    aget-object v6, p2, v0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 687
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aget v1, p3, v0

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->participantStatus(I)Ljava/lang/String;

    move-result-object v8

    aget v9, p4, v0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 688
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    .line 686
    invoke-virtual/range {v3 .. v10}, Lcom/sec/internal/google/GoogleImsService;->putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 691
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 692
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 657
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 262
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz p1, :cond_0

    .line 265
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRingingBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 135
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 141
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_0
    return-void
.end method

.method public onSessionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 821
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    :cond_0
    return-void
.end method

.method public onSessionProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 149
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 151
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 156
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 162
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 163
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_3
    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0

    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 234
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 237
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    :cond_0
    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 118
    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 128
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_2
    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0

    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 790
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const-string p1, "error-code"

    .line 792
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 793
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    if-eqz p1, :cond_1

    const-string p0, "ImsCallSessionEventListener"

    const-string p1, "Ignoring USSD error because session was terminated by user"

    .line 794
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 797
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    sget p1, Lcom/sec/internal/google/ImsCallSessionEventListener;->USSD_MODE_NW_ERROR:I

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    .line 799
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
