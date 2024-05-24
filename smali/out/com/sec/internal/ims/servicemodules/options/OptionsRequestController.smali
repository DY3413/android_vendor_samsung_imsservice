.class public Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;
.super Landroid/os/Handler;
.source "OptionsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    }
.end annotation


# static fields
.field private static final EVENT_OPTIONS_EVENT:I = 0x3

.field private static final EVENT_PROCESS_QUEUE:I = 0x1

.field private static final EVENT_PUSH_ERROR_RESPONSE:I = 0x7

.field private static final EVENT_PUSH_REQUEST:I = 0x2

.field private static final EVENT_PUSH_RESPONSE:I = 0x5

.field private static final EVENT_SEND_CAPEX_ERROR_RESPONSE_COMPLETE:I = 0x8

.field private static final EVENT_SEND_CAPEX_RESPONSE_COMPLETE:I = 0x6

.field private static final EVENT_SET_OWN_CAPABILITIES:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "OptionsReqController"

.field private static final MAX_OPTIONS_REQ:I = 0xf

.field private static final OPTIONS_PROCESS_TIMEOUT:I = 0x1e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

.field private mProcessingRequests:I

.field private mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;


# direct methods
.method public static synthetic $r8$lambda$kqyjmlxXETg9RhqBiQQr7C9FSmY(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->lambda$setImsRegistration$0(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 77
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getOptionsHandler()Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 79
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 80
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private completeRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V
    .registers 4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeRequest: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 313
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setState(I)V

    .line 314
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    return-void
.end method

.method private failedRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V
    .registers 4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failedRequest: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 305
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setState(I)V

    .line 306
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    return-void
.end method

.method private findRequest(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    .registers 6

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    if-eqz v0, :cond_6

    .line 291
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v1

    if-ne v1, p3, :cond_6

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ltz p2, :cond_2d

    .line 292
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v1

    if-eq v1, p2, :cond_2d

    goto :goto_6

    :cond_2d
    return-object v0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleSendCapexResponseComplete(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 4

    .line 391
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    if-eqz p1, :cond_31

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsEvent: handleSendCapexResponseComplete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    .line 393
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->completeRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V

    :cond_31
    return-void
.end method

.method private handleSetOwnCapabilities(JI)V
    .registers 4

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->setOwnCapabilities(JI)V

    return-void
.end method

.method private synthetic lambda$setImsRegistration$0(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 93
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setImsRegistration: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OptionsReqController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onSendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)V
    .registers 9

    .line 231
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/util/List;I)V

    const/4 p1, 0x1

    .line 232
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setIncoming(Z)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendCapexErrorResponse: txID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OptionsReqController"

    invoke-static {v2, p4, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setTxId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setErrorResponseCode(I)V

    .line 236
    invoke-virtual {v0, p5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setReason(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onSendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)V
    .registers 15

    .line 210
    new-instance v6, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;-><init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V

    const/4 p1, 0x1

    .line 211
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setIncoming(Z)V

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OnSendCapexResponse: txID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OptionsReqController"

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6, p4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setTxId(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6, p5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setLastSeen(I)V

    .line 215
    invoke-virtual {v6, p7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setExtFeature(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onSendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    invoke-direct {v0, p1, p2, p5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/util/List;I)V

    const/4 p1, 0x1

    .line 222
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setIncoming(Z)V

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendCapexResponse list: txID "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OptionsReqController"

    invoke-static {v1, p5, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setTxId(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setLastSeen(I)V

    .line 226
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method findOptionsRequest(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    .registers 4

    const/4 v0, -0x1

    .line 286
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->findRequest(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 405
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "EXTFEATURE"

    const-string v4, "TXID"

    const-string v5, "FEATURES"

    const-string v6, "URI"

    packed-switch v2, :pswitch_data_108

    goto/16 :goto_106

    .line 439
    :pswitch_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 440
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "errorcode"

    .line 441
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v1, "reason"

    .line 442
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 440
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onSendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_106

    .line 446
    :pswitch_42
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->handleSendCapexResponseComplete(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_106

    .line 425
    :pswitch_4b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 426
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mContext:Landroid/content/Context;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v8}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v7

    const-string v8, "LASTSEEN"

    if-eqz v7, :cond_8e

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mContext:Landroid/content/Context;

    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 427
    invoke-static {v7, v9}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsOptionsEnabled(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 428
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 429
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move v4, v6

    move v5, v7

    .line 428
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onSendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;II)V

    goto/16 :goto_106

    .line 431
    :cond_8e
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 432
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 433
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    move-object v0, p0

    move-object v1, v6

    move-wide v2, v9

    move v6, v7

    move-object v7, v8

    .line 431
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onSendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)V

    goto :goto_106

    .line 421
    :pswitch_c0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->handleSetOwnCapabilities(JI)V

    goto :goto_106

    .line 417
    :pswitch_ce
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onOptionsEvent(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_106

    .line 407
    :pswitch_d6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 408
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 409
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const-string v3, "MYCAPS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    move-object v0, p0

    move-object v1, v4

    move-wide v2, v5

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    .line 408
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onRequestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;Ljava/util/List;I)V

    goto :goto_106

    .line 413
    :pswitch_103
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->process()V

    :goto_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_103
        :pswitch_d6
        :pswitch_ce
        :pswitch_c0
        :pswitch_4b
        :pswitch_42
        :pswitch_f
    .end packed-switch
.end method

.method public init()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method onOptionsEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 10

    .line 318
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "OptionsReqController"

    if-ne v1, v2, :cond_1f

    const-string p0, "onOptionsEvent: registration is null. fail."

    .line 322
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_37} :catch_148

    .line 334
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsEvent: event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsEvent: mRegistrationId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsEvent: getHandle() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsEvent: event.getSessionId() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsEvent: event.getfeatureslist() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatureList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isResponse()Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 344
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne v4, v5, :cond_d4

    .line 345
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 346
    invoke-interface {v4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_d4

    const-string v4, "403 forbidden response w/o warning header"

    .line 349
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x193

    const-string v5, "Forbidden"

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string v4, "options"

    invoke-interface {v1, v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_d4
    const/4 v1, 0x1

    .line 355
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->findRequest(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-result-object v1

    if-eqz v1, :cond_de

    .line 358
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->completeRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V

    :cond_de
    if-eqz v2, :cond_13d

    .line 361
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v3, :cond_13d

    .line 362
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v3

    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_13d

    .line 363
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPAssertedIdSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 364
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v4, v5, :cond_fb

    .line 365
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->register(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_13d

    .line 372
    :cond_11f
    invoke-static {v2}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-nez v0, :cond_131

    .line 373
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v4

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    and-long/2addr v4, v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_131

    return-void

    .line 377
    :cond_131
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v0

    if-eq v1, v0, :cond_13d

    const-string p0, "onOptionsEvent: event.getSessionId()!= event.getSessionId()"

    .line 378
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 383
    :cond_13d
    :goto_13d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    if-eqz v0, :cond_144

    .line 384
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;->onCapabilityUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    .line 387
    :cond_144
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->process()V

    return-void

    :catch_148
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsEvent: getRegistrationInfo is Null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mRegistrationId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p6}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->findOptionsRequest(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 164
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 165
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v3, v1, v3

    const-string v4, "OptionsReqController"

    if-lez v3, :cond_3d

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRequestCapabilityExchange: options timeout diff = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, set failed"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->failedRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V

    goto :goto_6e

    .line 171
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestCapabilityExchange: myFeatures :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "req.getMyFeatures()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_6d

    .line 173
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_6e

    :cond_6d
    return-void

    .line 181
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move v5, p6

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;-><init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method process()V
    .registers 22

    move-object/from16 v0, p0

    const-string v1, "OptionsReqController"

    const-string v2, "process requestQueue."

    .line 242
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 248
    :cond_12
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 250
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 251
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_df

    .line 252
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2e

    goto/16 :goto_df

    .line 256
    :cond_2e
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 257
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v7

    .line 258
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v9

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getExtFeature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyCaps()Ljava/util/List;

    move-result-object v11

    .line 257
    invoke-interface/range {v5 .. v11}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_d7

    .line 260
    :cond_4f
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v3

    const/4 v5, 0x6

    if-eqz v3, :cond_b5

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v6

    invoke-static {v3, v6}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsOptionsEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 262
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getErrorResponseCode()I

    move-result v3

    if-eqz v3, :cond_97

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getErrorResponseCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_77

    goto :goto_97

    .line 267
    :cond_77
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTxId()Ljava/lang/String;

    move-result-object v9

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 268
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v11

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getErrorResponseCode()I

    move-result v12

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getReason()Ljava/lang/String;

    move-result-object v13

    .line 267
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;IILjava/lang/String;)V

    goto :goto_d7

    .line 263
    :cond_97
    :goto_97
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v15

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyCaps()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTxId()Ljava/lang/String;

    move-result-object v17

    .line 264
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getLastSeen()I

    move-result v18

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 265
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v20

    .line 263
    invoke-interface/range {v14 .. v20}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;ILandroid/os/Message;I)V

    goto :goto_d7

    .line 272
    :cond_b5
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTxId()Ljava/lang/String;

    move-result-object v9

    .line 273
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getLastSeen()I

    move-result v10

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 274
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v12

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getExtFeature()Ljava/lang/String;

    move-result-object v13

    move-object v5, v3

    .line 272
    invoke-interface/range {v5 .. v13}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;ILandroid/os/Message;ILjava/lang/String;)V

    .line 279
    :goto_d7
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setState(I)V

    .line 280
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    .line 282
    :cond_df
    :goto_df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_18

    :cond_eb
    return-void
.end method

.method public registerOptionsEvent(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    return-void
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Z
    .registers 8

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCapabilityExchange: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iari"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "URI"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "FEATURES"

    .line 126
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "EXTFEATURE"

    .line 127
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p0, p1, p4, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCapabilityExchange: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iari"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "URI"

    .line 140
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "MYCAPS"

    .line 141
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 8

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TXID"

    .line 201
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "URI"

    .line 202
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "errorcode"

    .line 203
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reason"

    .line 204
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    const/4 p2, 0x0

    .line 205
    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z
    .registers 10

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TXID"

    .line 150
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "FEATURES"

    .line 151
    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "URI"

    .line 152
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "LASTSEEN"

    .line 153
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EXTFEATURE"

    .line 154
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    .line 155
    invoke-virtual {p0, p1, p6, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TXID"

    .line 190
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "FEATURES"

    .line 191
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p3, "URI"

    .line 192
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "LASTSEEN"

    .line 193
    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x5

    const/4 p3, 0x0

    .line 194
    invoke-virtual {p0, p1, p5, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setImsDeRegistration(Lcom/sec/ims/ImsRegistration;)V
    .registers 6

    const/4 v0, -0x1

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_46

    .line 101
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsDeRegistration: clearing requests queue for phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OptionsReqController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 105
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_28

    .line 106
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 109
    :cond_40
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_5a

    .line 111
    :cond_46
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 p1, 0x0

    .line 112
    :goto_4c
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge p1, v1, :cond_5a

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    :cond_5a
    :goto_5a
    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 92
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setOwnCapabilities(JI)V
    .registers 5

    const/4 v0, 0x0

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
