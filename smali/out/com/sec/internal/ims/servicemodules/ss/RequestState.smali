.class public Lcom/sec/internal/ims/servicemodules/ss/RequestState;
.super Lcom/sec/internal/helper/State;
.source "RequestState.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    return-void
.end method

.method private handleNeedFirstGet()V
    .registers 9

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x65

    const-string v4, "Send GET before PUT due to no cache."

    const/4 v5, 0x1

    if-ne v2, v3, :cond_23

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-nez v3, :cond_23

    .line 220
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    goto :goto_77

    :cond_23
    const/16 v3, 0x67

    if-ne v2, v3, :cond_3d

    .line 223
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-nez v3, :cond_3d

    .line 224
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    goto :goto_77

    :cond_3d
    const/16 v3, 0x68

    const/16 v6, 0x69

    if-ne v2, v6, :cond_57

    .line 227
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-nez v7, :cond_57

    .line 228
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    goto :goto_77

    :cond_57
    const/16 v7, 0x77

    if-ne v2, v7, :cond_77

    const/16 v2, 0x8

    .line 232
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 233
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    .line 234
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-nez v2, :cond_75

    .line 235
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    goto :goto_77

    .line 239
    :cond_75
    iput v6, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    :cond_77
    :goto_77
    return-void
.end method

.method private initPdnInfo()V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 95
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    .line 97
    :cond_21
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

.method private processGetRequest()V
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p0

    .line 57
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method private processPdnConnected()V
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasProfile()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    .line 170
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 171
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_30

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void

    .line 178
    :cond_30
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    if-eqz v3, :cond_40

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_40

    .line 179
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->handleNeedFirstGet()V

    .line 182
    :cond_40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    if-eqz v3, :cond_5f

    .line 183
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v4, 0x73

    if-ne v3, v4, :cond_5f

    .line 184
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "Send GET after PUT error 412"

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v3, 0x72

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 189
    :cond_5f
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 192
    sget-object v3, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0xc

    if-ne v0, v3, :cond_96

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isServiceDeactive()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 193
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v5, "Service is disabled on network side"

    invoke-static {v0, v3, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0x3f3

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 198
    :cond_96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0x3f4

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 203
    :cond_a6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    goto :goto_d8

    .line 205
    :cond_aa
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_b8

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    if-nez v2, :cond_c8

    :cond_b8
    const/16 v2, 0x68

    if-ne v1, v2, :cond_c0

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    if-nez v2, :cond_c8

    :cond_c0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_d5

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    if-eqz v1, :cond_d5

    .line 208
    :cond_c8
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 212
    :cond_d5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processGetRequest()V

    .line 215
    :goto_d8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private processPutRequest()V
    .registers 9

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 63
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_ae

    .line 64
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->setAllMediaCF:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v2, :cond_37

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    if-eqz v0, :cond_37

    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 65
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v0, v1, :cond_37

    .line 66
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Separated requests for media, send requests for audio and video conditions"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    .line 68
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    .line 71
    :cond_37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    const/4 v4, 0x3

    if-eqz v2, :cond_63

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_63

    iget-boolean v6, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    if-eqz v6, :cond_63

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v6, :cond_63

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v5, v3, :cond_55

    if-ne v5, v4, :cond_63

    .line 74
    :cond_55
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "SeparatedRequest CFNRY"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    goto :goto_ae

    .line 76
    :cond_63
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v6, v4, :cond_7b

    iget-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    if-eqz v4, :cond_7b

    .line 77
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "SeparatedRequest CFNL"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    goto :goto_ae

    :cond_7b
    if-eqz v2, :cond_ae

    .line 79
    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFA:Z

    if-eqz v1, :cond_ae

    const/4 v1, 0x4

    if-eq v6, v1, :cond_87

    const/4 v2, 0x5

    if-ne v6, v2, :cond_ae

    :cond_87
    if-ne v6, v1, :cond_8b

    const/4 v1, 0x0

    goto :goto_8c

    :cond_8b
    move v1, v3

    .line 81
    :goto_8c
    iput v1, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 82
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    .line 83
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeparatedRequest CF ALL - start from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :cond_ae
    :goto_ae
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p0

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method private requestPdn()V
    .registers 7

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v1, "ss_domain_setting"

    const-string v2, "PS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSCS"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xc

    if-nez v1, :cond_28

    const-string v1, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 36
    :cond_28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isVolteServiceRegistered(I)Z

    move-result v0

    if-nez v0, :cond_47

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "IMS is not registered, UT request must fail "

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0x3f5

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void

    .line 42
    :cond_47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_83

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-interface {v3, v4, v5, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    move-result v0

    if-eq v0, v1, :cond_88

    .line 46
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPDN fails "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0x3f6

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_88

    .line 50
    :cond_83
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_88
    :goto_88
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 103
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestState::ProcessMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b8

    const/16 v0, 0x64

    if-eq p1, v0, :cond_b4

    const/16 v0, 0xe

    if-eq p1, v0, :cond_b3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_b8

    const-string v0, ""

    packed-switch p1, :pswitch_data_c2

    goto/16 :goto_c0

    .line 131
    :pswitch_3b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v3, 0x10

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 132
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    iput p1, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 133
    iget p1, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez p1, :cond_4d

    .line 134
    iput-object v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 136
    :cond_4d
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_c0

    .line 122
    :pswitch_58
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 123
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v2, :cond_67

    .line 124
    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 126
    :cond_67
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_c0

    .line 112
    :pswitch_72
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v0, 0x7

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 113
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_c0

    .line 117
    :pswitch_84
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v0, 0x6

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 118
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_c0

    .line 149
    :pswitch_96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 150
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 151
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    goto :goto_c0

    .line 140
    :pswitch_9f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processTerminalRequest()V

    goto :goto_c0

    .line 146
    :pswitch_a5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->initPdnInfo()V

    goto :goto_c0

    .line 143
    :pswitch_a9
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    goto :goto_c0

    .line 109
    :pswitch_af
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPdnConnected()V

    goto :goto_c0

    :cond_b3
    return v2

    .line 106
    :cond_b4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->requestPdn()V

    goto :goto_c0

    .line 155
    :cond_b8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasProfile()Z

    move-result p0

    if-nez p0, :cond_c1

    :goto_c0
    return v1

    :cond_c1
    return v2

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_af
        :pswitch_a9
        :pswitch_a5
        :pswitch_9f
        :pswitch_96
        :pswitch_84
        :pswitch_72
        :pswitch_58
        :pswitch_3b
    .end packed-switch
.end method
