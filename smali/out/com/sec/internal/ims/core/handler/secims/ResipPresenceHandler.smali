.class public Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;
.super Lcom/sec/internal/ims/core/handler/PresenceHandler;
.source "ResipPresenceHandler.java"


# static fields
.field public static final EVENT_PRESENCE_NOTIFY:I = 0x67

.field public static final EVENT_PRESENCE_PUBLISH_RESPONSE:I = 0x65

.field public static final EVENT_PRESENCE_SUBSCRIBE_RESPONSE:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallbackMessageToSubscriptionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

.field protected final mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mRequestCallbackMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field protected mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/PresenceHandler;-><init>(Landroid/os/Looper;)V

    .line 73
    sget-object p1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 90
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    .line 94
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    return-void
.end method

.method private callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 190
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "callbackPresenceResponse() : callback found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 191
    invoke-static {v0, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 192
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_25

    .line 194
    :cond_1e
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "callbackPresenceResponse() : cannot find callback"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method private getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    .registers 9

    .line 199
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 200
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    .line 201
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eqz p0, :cond_1b

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    :cond_1b
    move v6, v0

    .line 205
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    move v2, v0

    .line 206
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->sipError()J

    move-result-wide v0

    long-to-int v3, v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->errorStr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    return-object p0
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 132
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 3

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 127
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private handleNewPresenceInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 23

    move-object/from16 v0, p0

    .line 299
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;

    .line 300
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->handle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-eqz v2, :cond_22

    .line 303
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    .line 305
    :cond_22
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;-><init>(ILjava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->contactInfoLength()I

    move-result v4

    .line 307
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNewPresenceInfo(): subscriptionID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNewPresenceInfo(): contactinfo size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x0

    :goto_5e
    if-ge v6, v4, :cond_2ab

    .line 310
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->contactInfo(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;

    move-result-object v7

    if-nez v7, :cond_81

    .line 312
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact info is null for index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move/from16 v20, v6

    const/4 v6, 0x0

    goto/16 :goto_2a6

    .line 315
    :cond_81
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->serviceStatusLength()I

    move-result v8

    .line 316
    new-instance v9, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v9, v3}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 317
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->uri()Ljava/lang/String;

    move-result-object v10

    .line 318
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->entityUri()Ljava/lang/String;

    move-result-object v11

    .line 319
    sget-object v12, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleNewPresenceInfo(): entity uri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", contact uri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v9, v10}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 322
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c8

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c8

    const-string v13, "handleNewPresenceInfo: set TelUri from entity"

    .line 323
    invoke-static {v12, v3, v13}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    invoke-virtual {v9, v11}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    goto :goto_cb

    .line 326
    :cond_c8
    invoke-virtual {v9, v10}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 328
    :goto_cb
    invoke-virtual {v9, v3}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 329
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/ims/presence/PresenceInfo;->setSubscriptionId(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_d6
    if-ge v11, v8, :cond_15d

    .line 331
    invoke-virtual {v7, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->serviceStatus(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;

    move-result-object v12

    if-eqz v12, :cond_155

    .line 333
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->mediaCapabilitiesLength()I

    move-result v13

    .line 334
    new-array v15, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_e5
    if-ge v14, v13, :cond_f0

    .line 336
    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->mediaCapabilities(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_e5

    .line 339
    :cond_f0
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->serviceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->version()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v15}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v13

    if-nez v13, :cond_115

    .line 342
    new-instance v13, Lcom/sec/ims/presence/ServiceTuple;

    sget v14, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    move/from16 v20, v6

    int-to-long v5, v14

    .line 343
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->serviceId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->version()Ljava/lang/String;

    move-result-object v18

    move-object v14, v13

    move-object/from16 v19, v15

    move-wide v15, v5

    invoke-direct/range {v14 .. v19}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_117

    :cond_115
    move/from16 v20, v6

    .line 345
    :goto_117
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_130

    const-string v5, ""

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_130

    .line 346
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    goto :goto_137

    .line 348
    :cond_130
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleNewPresenceInfo(): status is null"

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    :goto_137
    invoke-virtual {v9, v13}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 351
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleNewPresenceInfo(): "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/sec/ims/presence/ServiceTuple;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_157

    :cond_155
    move/from16 v20, v6

    :goto_157
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v20

    goto/16 :goto_d6

    :cond_15d
    move/from16 v20, v6

    .line 354
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_174

    .line 355
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPidf(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->addPidfXmls(Ljava/lang/String;)V

    goto :goto_17b

    .line 358
    :cond_174
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleNewPresenceInfo(): empty pidf"

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    :goto_17b
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNewPresenceInfo: state - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", state reason - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    :try_start_1a1
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1f8

    .line 370
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionState;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f8

    .line 371
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_27f

    .line 372
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 373
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->addUriTerminatedReason(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v10, 0x6

    .line 374
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1fb

    .line 375
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_1ed

    .line 376
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_1f8

    .line 378
    :cond_1ed
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    :cond_1f8
    :goto_1f8
    const/4 v6, 0x0

    goto/16 :goto_2a1

    :cond_1fb
    const/4 v10, 0x3

    .line 380
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_240

    .line 381
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_21a

    .line 382
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_1f8

    :cond_21a
    new-array v6, v11, [Lcom/sec/internal/constants/Mno;

    .line 383
    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;
    :try_end_21e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a1 .. :try_end_21e} :catch_299

    const/4 v10, 0x0

    :try_start_21f
    aput-object v7, v6, v10
    :try_end_221
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21f .. :try_end_221} :catch_23e

    :try_start_221
    sget-object v7, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v12

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_237

    .line 384
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V
    :try_end_236
    .catch Ljava/lang/IllegalArgumentException; {:try_start_221 .. :try_end_236} :catch_299

    goto :goto_1f8

    :cond_237
    const/4 v5, 0x0

    .line 386
    :try_start_238
    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V
    :try_end_23b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_238 .. :try_end_23b} :catch_23c

    goto :goto_1f8

    :catch_23c
    move v6, v5

    goto :goto_29a

    :catch_23e
    move v6, v10

    goto :goto_29a

    .line 388
    :cond_240
    :try_start_240
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27a

    const/4 v8, 0x5

    .line 389
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27a

    .line 390
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_260

    goto :goto_27a

    .line 393
    :cond_260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNewPresenceInfo: state failure reason - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_278
    .catch Ljava/lang/IllegalArgumentException; {:try_start_240 .. :try_end_278} :catch_299

    goto/16 :goto_1f8

    :cond_27a
    :goto_27a
    const/4 v6, 0x0

    .line 391
    :try_start_27b
    invoke-virtual {v9, v6}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    goto :goto_2a1

    :cond_27f
    const/4 v6, 0x0

    const-string v7, "handleNewPresenceInfo: no reason"

    .line 396
    invoke-static {v5, v3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_2a1

    .line 398
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v10, v7

    invoke-direct {v5, v10, v11, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V
    :try_end_298
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27b .. :try_end_298} :catch_29a

    goto :goto_2a1

    :catch_299
    const/4 v6, 0x0

    .line 403
    :catch_29a
    :goto_29a
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "State or Reason is not understandable."

    invoke-static {v5, v3, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    :cond_2a1
    :goto_2a1
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {v5, v9}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :goto_2a6
    add-int/lit8 v5, v20, 0x1

    move v6, v5

    goto/16 :goto_5e

    .line 408
    :cond_2ab
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->setSubscriptionState(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionStateReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->setSubscriptionStateReason(Ljava/lang/String;)V

    .line 410
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private handleNotify(Landroid/os/Message;)V
    .registers 4

    .line 211
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 212
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 233
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 225
    :pswitch_17
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_NOTIFY_STATUS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNotifyStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_4a

    .line 221
    :pswitch_22
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_SUBSCRIBE_STATUS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleSubscribeStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_4a

    .line 218
    :pswitch_2d
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(), NOTIFY_PRESENCE_UNPUBLISH_STATUS, just ignore..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 214
    :pswitch_35
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_PUBLISH_STATUS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handlePublishStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_4a

    .line 229
    :pswitch_40
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_PRESENCE_SUBSCRIBE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNewPresenceInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x32c9
        :pswitch_40
        :pswitch_35
        :pswitch_2d
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method private handleNotifyStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 6

    .line 280
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;

    .line 281
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 282
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eqz v0, :cond_1e

    .line 284
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    .line 287
    :cond_1e
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->isSuccess()Z

    move-result v2

    .line 288
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->subscribeTerminatedReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->subscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 290
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifyStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private handlePublishResponse(Landroid/os/Message;)V
    .registers 6

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePublishResponse() isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "handlePublishResponse(): "

    .line 161
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_32

    .line 165
    :cond_2d
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    return-void
.end method

.method private handlePublishStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 16

    .line 238
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;

    .line 239
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eqz v0, :cond_1e

    .line 242
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    :cond_1e
    move v13, v1

    .line 244
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->isSuccess()Z

    move-result v3

    .line 245
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->sipErrorCode()J

    move-result-wide v1

    long-to-int v4, v1

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->sipErrorPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->minExpires()J

    move-result-wide v1

    long-to-int v6, v1

    .line 247
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->etag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->remoteExpires()J

    move-result-wide v8

    .line 248
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->isRefresh()Z

    move-result v10

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->retryAfter()J

    move-result-wide v11

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;-><init>(ZILjava/lang/String;ILjava/lang/String;JZJI)V

    .line 249
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePublishStatusUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private handleSubscribeResponse(Landroid/os/Message;)V
    .registers 6

    .line 172
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeResponse() isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 175
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "handleSubscribeResponse(): "

    .line 176
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_4f

    .line 181
    :cond_45
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4f
    return-void
.end method

.method private handleSubscribeStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 10

    .line 255
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;

    .line 256
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 257
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eqz v0, :cond_1e

    .line 259
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    .line 261
    :cond_1e
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->isSuccess()Z

    move-result v3

    .line 262
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->sipErrorCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->sipErrorPhrase()Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->minExpires()J

    move-result-wide v6

    long-to-int v6, v6

    move-object v2, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    .line 265
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSubscribeStatusUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->subscriptionId()Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_68

    const/4 p0, 0x0

    .line 271
    invoke-static {v3, v0, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 272
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6d

    :cond_68
    const-string p0, "handleSubscribeStatusUpdate: no call back"

    .line 274
    invoke-static {v2, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_6d
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_26

    .line 147
    :pswitch_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_NOTIFY."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNotify(Landroid/os/Message;)V

    goto :goto_26

    .line 143
    :pswitch_11
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_SUBSCRIBE_RESPONSE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleSubscribeResponse(Landroid/os/Message;)V

    goto :goto_26

    .line 139
    :pswitch_1c
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_PUBLISH_RESPONSE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handlePublishResponse(Landroid/os/Message;)V

    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x65
        :pswitch_1c
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method

.method public init()V
    .registers 4

    .line 100
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 101
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x67

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerPresenceEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V
    .registers 8

    .line 108
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "presence publish:"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "presence"

    .line 110
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_16

    const-string/jumbo p0, "publish: UserAgent not found."

    .line 112
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 116
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presence publish: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 118
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    const/16 p3, 0x65

    .line 120
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v1, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V

    return-void
.end method

.method public registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 420
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 430
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 435
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 425
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForWatcherInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V
    .registers 13

    const-string v0, "presence"

    .line 458
    invoke-direct {p0, v0, p5}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_11

    .line 460
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "subscribe: UserAgent not found."

    invoke-static {p0, p5, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 464
    :cond_11
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subscribe: subscription id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p5, 0x66

    .line 465
    invoke-virtual {p0, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 466
    iget-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {p5, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {p5, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILcom/sec/ims/util/ImsUri;ZLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    const-string v3, "presence"

    .line 441
    invoke-direct {p0, v3, p7}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    if-nez v3, :cond_11

    .line 443
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeList: UserAgent not found"

    invoke-static {v0, p7, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 447
    :cond_11
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subscribeList: subscription id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p7, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x66

    .line 448
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 449
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribeList(ILjava/util/List;ZLjava/lang/String;ZILandroid/os/Message;)V

    return-void
.end method

.method public unpublish(I)V
    .registers 5

    .line 474
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "presence unpublish:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "unpublish: UserAgent not found. UserAgent already was de-registerd"

    .line 479
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void

    .line 483
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presence unpublish: handle = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 487
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->requestUnpublish()V

    return-void
.end method

.method public updateServiceVersion(ILjava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "presence updateServiceVersion:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 496
    :cond_5a
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateServiceVersion(ILjava/util/HashMap;)V

    return-void
.end method
