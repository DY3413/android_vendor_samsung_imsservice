.class public Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;
.super Lcom/sec/internal/ims/core/handler/RegistrationHandler;
.source "ResipRegistrationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResipRegiMgr"

.field private static final SHIP_BUILD:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

.field protected mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mUaHandler:Landroid/os/Handler;

.field protected mUaHandlerThread:Landroid/os/HandlerThread;

.field protected final mUaList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XIoqSPxaUsT4rS-4mqsWmL4R_ME(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->lambda$isUserAgentInRegistered$1(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vCxK7FyDcWJRtA4bXox8VgpgHHE(ILcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->lambda$configureRCS$0(ILcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 100
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 4

    .line 119
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/RegistrationHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    .line 116
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    .line 121
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 123
    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-void
.end method

.method private configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .registers 8

    const-string v0, "ResipRegiMgr"

    const-string v1, "configureMedia:"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_9
    const-string v2, "com.sec.internal.ims.core.handler.secims.ResipMediaHandler"

    .line 401
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object p0

    const-string v3, "getHwSupportedVideoCodecs"

    new-array v4, v1, [Ljava/lang/Class;

    .line 403
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 404
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoCodec()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_33} :catch_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_33} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_33} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception p0

    .line 406
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const-string p0, ""

    .line 409
    :goto_3a
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 411
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioPortStart()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 412
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioDscp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioDscp(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 413
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbbePayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnboaPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 415
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbbePayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 416
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwboaPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmropenPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOpenPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfNbPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfWbPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnboaMaxRed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 421
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbbeMaxRed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrBeMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwboaMaxRed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 423
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbbeMaxRed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrBeWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 424
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsMaxRed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 425
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioAS()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRS()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 429
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRR()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 430
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMaxPTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setMaxPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v2

    .line 432
    invoke-virtual {v2, p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 433
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoPortStart()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 434
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getFramerate()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setFrameRate(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 435
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDisplayFormat(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 436
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayFormatHevc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDisplayFormatHevc(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 437
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPacketizationMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setPacketizationMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 438
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265QvgaPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 439
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265QvgalPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 440
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265VgaPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 441
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265VgalPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 442
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720pPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265Hd720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 443
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720plPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265Hd720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 444
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264720pPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 445
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264720plPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 446
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264VgaPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 447
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264VgalPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 448
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264QvgaPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 449
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264QvgalPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 450
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264CifPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264CifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 451
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264CiflPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264CifLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 452
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH263QcifPayload()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH263QcifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 453
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getUseSpsForH264Hd()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setUseSpsForH264Hd(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 454
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoAS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 455
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 456
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRR()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 457
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextAS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 458
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextRS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 459
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextRR()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 460
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextPort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 461
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioAvpf()I

    move-result v2

    if-ne v2, v1, :cond_1da

    move v2, v1

    goto :goto_1db

    :cond_1da
    move v2, v0

    :goto_1db
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 462
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioSrtp()I

    move-result v2

    if-ne v2, v1, :cond_1e7

    move v2, v1

    goto :goto_1e8

    :cond_1e7
    move v2, v0

    :goto_1e8
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 463
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoAvpf()I

    move-result v2

    if-ne v2, v1, :cond_1f4

    move v2, v1

    goto :goto_1f5

    :cond_1f4
    move v2, v0

    :goto_1f5
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 464
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoSrtp()I

    move-result v2

    if-ne v2, v1, :cond_201

    move v2, v1

    goto :goto_202

    :cond_201
    move v2, v0

    :goto_202
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 465
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextAvpf()I

    move-result v2

    if-ne v2, v1, :cond_20e

    move v2, v1

    goto :goto_20f

    :cond_20e
    move v2, v0

    :goto_20f
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 466
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextSrtp()I

    move-result v2

    if-ne v2, v1, :cond_21b

    move v2, v1

    goto :goto_21c

    :cond_21b
    move v2, v0

    :goto_21c
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 467
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportVideoCapabilities()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoCapabilities(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 468
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRTPTimeout()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setRtpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 469
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRTCPTimeout()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setRtcpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 470
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getIgnoreRtcpTimeoutOnHoldCall()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setIgnoreRtcpTimeoutOnHoldCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 471
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRtcpOnActiveCall()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableRtcpOnActiveCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 472
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableAvSync()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableAvSync(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 473
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableScr()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableScr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 474
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRtcpXr()I

    move-result v2

    if-ne v2, v1, :cond_260

    move v2, v1

    goto :goto_261

    :cond_260
    move v2, v0

    :goto_261
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 475
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRtcpXr()I

    move-result v2

    if-ne v2, v1, :cond_26d

    move v2, v1

    goto :goto_26e

    :cond_26d
    move v2, v0

    :goto_26e
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 476
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfMode(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 477
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableEvsCodec()I

    move-result v2

    if-ne v2, v1, :cond_281

    move v0, v1

    :cond_281
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableEvsCodec(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 478
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDiscontinuousTransmission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDiscontinuousTransmission(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 479
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDtxRecv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDtxRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 480
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsHeaderFull()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsHeaderFull(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 481
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsModeSwitch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsModeSwitch(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 482
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelSend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 483
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelRecv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 484
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelAwareReceive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelAwareReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 485
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsCodecModeRequest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsCodecModeRequest(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 486
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateSend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 487
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateReceive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 488
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 489
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthReceive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 490
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsPayload()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvs2ndPayload()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvs2ndPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 492
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDefaultBandwidth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDefaultBandwidth(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 493
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDefaultBitrate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDefaultBitrate(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 494
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsPayloadExt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsPayloadExt(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 495
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateSendExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 496
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateReceiveExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 497
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSendExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 498
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthReceiveExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 499
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsLimitedCodec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsLimitedCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsUseDefaultRtcpBw()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsUseDefaultRtcpBw(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 502
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object p0

    return-object p0
.end method

.method private configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .registers 5

    .line 1152
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "ResipRegiMgr"

    const-string v2, "configureRCS:"

    .line 1153
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 1156
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1155
    invoke-static {v1, p1, v0, p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsConfig(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/constants/ims/config/RcsConfig;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 1158
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)V

    :cond_3c
    return-void
.end method

.method private configureTimerTS(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 4

    .line 381
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 382
    sget-object p1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_f

    const/16 p0, 0x3e8

    goto :goto_1e

    .line 385
    :cond_f
    sget-object p1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_1b

    sget-object p1, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_18

    goto :goto_1b

    :cond_18
    const/16 p0, 0x7d00

    goto :goto_1e

    :cond_1b
    :goto_1b
    const p0, 0x30d40

    .line 389
    :goto_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "timerTS=%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipRegiMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    return-object p2
.end method

.method private createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 77
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 508
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v12

    .line 509
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v13

    .line 510
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v14

    .line 511
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v15

    .line 512
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    .line 513
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const/16 v16, 0x0

    move-object/from16 v17, v13

    const-string v13, "ResipRegiMgr"

    if-nez v2, :cond_3e

    const-string v0, "createUserAgent: ifacename is null"

    .line 516
    invoke-static {v13, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    .line 520
    :cond_3e
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v18

    .line 521
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v11

    .line 522
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUsePrecondition()I

    move-result v19

    move/from16 v20, v1

    if-eqz v19, :cond_51

    const/16 v22, 0x1

    goto :goto_53

    :cond_51
    const/16 v22, 0x0

    .line 523
    :goto_53
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getPrecondtionInitialSendrecv()Z

    move-result v1

    move/from16 v23, v1

    .line 524
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSessionExpire()I

    move-result v1

    move/from16 v24, v1

    .line 525
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getMinSe()I

    move-result v1

    move/from16 v25, v1

    .line 526
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSessionRefresher()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    .line 527
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRegExpire()I

    move-result v1

    move/from16 v27, v1

    .line 528
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getMssSize()I

    move-result v1

    move/from16 v28, v1

    .line 529
    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getPdnName(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v7

    move/from16 v29, v7

    .line 531
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSipMobility()I

    move-result v7

    move/from16 v30, v7

    .line 532
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isEnableGruu()Z

    move-result v7

    move/from16 v31, v7

    .line 533
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isEnableVcid()Z

    move-result v7

    move/from16 v32, v7

    .line 534
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isEnableSessionId()Z

    move-result v7

    move/from16 v33, v7

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getAudioEngineType()I

    move-result v7

    .line 537
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeForReg()I

    move-result v34

    if-eqz v34, :cond_a8

    move/from16 v34, v7

    const/16 v35, 0x1

    goto :goto_ac

    :cond_a8
    move/from16 v34, v7

    const/16 v35, 0x0

    .line 538
    :goto_ac
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v7

    move/from16 v36, v7

    const-string/jumbo v7, "support_upgrade_precondition"

    .line 539
    invoke-virtual {v12, v7}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 540
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v37

    .line 541
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEncrNullRoaming()Z

    move-result v6

    move/from16 v38, v6

    .line 542
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getAcb()Ljava/util/List;

    move-result-object v6

    move-object/from16 v39, v6

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportUpgradePrecondition "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v11, :cond_129

    const-string v6, "mmtel-video"

    .line 547
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 548
    sget-object v6, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    move v8, v7

    invoke-static {v6}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 549
    sget-object v6, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 550
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v7, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI"

    invoke-virtual {v6, v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_117

    :cond_106
    move v8, v7

    .line 552
    sget-object v6, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 553
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v7, "createUserAgent: add mmtel to Capabilities for E-REGI"

    invoke-virtual {v6, v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 555
    :goto_117
    invoke-static {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    goto :goto_12a

    :cond_129
    move v8, v7

    .line 558
    :goto_12a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createUserAgent: ownCap= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v3, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 560
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v6

    move/from16 v40, v8

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    move/from16 v41, v11

    int-to-long v10, v8

    cmp-long v6, v6, v10

    if-nez v6, :cond_169

    .line 561
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_163

    const-string/jumbo v6, "smsip"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_163

    const-string v6, "createUserAgent: empty capabilities. smsip only registration"

    .line 562
    invoke-static {v13, v3, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_169

    :cond_163
    const-string v0, "createUserAgent: empty capabilities. fail to create"

    .line 564
    invoke-static {v13, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    .line 569
    :cond_169
    :goto_169
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 570
    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v45

    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v44, v10

    move-object/from16 v46, v11

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v49, v4

    invoke-direct/range {v42 .. v49}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserAgent: pdn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") services "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserAgent: uuid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1e7

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1e7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1dd

    goto :goto_1e7

    :cond_1dd
    if-nez v15, :cond_1e2

    const-wide/16 v4, 0x0

    goto :goto_1eb

    .line 583
    :cond_1e2
    invoke-virtual {v15}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    goto :goto_1eb

    .line 581
    :cond_1e7
    :goto_1e7
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getP2pNetworkHandle(I)J

    move-result-wide v4

    .line 586
    :goto_1eb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createUserAgent: profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " iface="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " NetId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v3, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 588
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRegistrationAlgorithm()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_21b

    const-string v8, "md5"

    .line 593
    :cond_21b
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getAuthAlgorithm()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_223

    const-string v10, "hmac-md5-96,hmac-sha-1-96,hmac-sha-2-256-128,hmac-sha-2-512-256"

    .line 597
    :cond_223
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEncAlgorithm()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_22b

    const-string v11, "null,des-ede3-cbc,aes-cbc,aes-gcm-16"

    :cond_22b
    move-object/from16 v42, v15

    .line 604
    iget-object v15, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v15, v3, v12}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v15

    .line 605
    invoke-static {v15}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v15

    .line 610
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimer1()I

    move-result v43

    .line 611
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimer2()I

    move-result v44

    .line 612
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimer4()I

    move-result v45

    .line 613
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v46

    .line 614
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v47

    .line 616
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getQValue()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 617
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v49

    .line 618
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/sec/internal/helper/SimUtil;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v51, v7

    .line 621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v52, v14

    const-string v14, "createUserAgent: task.getMno()="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " sm.getSimMno()="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 622
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v14

    if-eq v7, v14, :cond_2bc

    .line 623
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 624
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/internal/helper/SimUtil;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 625
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v53, v15

    const-string v15, "createUserAgent: Updated mno: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " mvno: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v3, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2c2

    :cond_2bc
    move/from16 v53, v15

    move-object/from16 v7, v49

    move-object/from16 v14, v50

    .line 627
    :goto_2c2
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v9

    .line 628
    invoke-static {v9}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isAutoConfigNeeded(Ljava/util/Set;)Z

    move-result v9

    const-string v15, ""

    if-nez v9, :cond_304

    .line 633
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v49, v14

    .line 634
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v50, v11

    const-string v11, "createUserAgent: AUTOCONFIG_NOT_NEEDED password="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v3, v11}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string v11, "CPM"

    move-object/from16 v14, v16

    move/from16 v57, v43

    move/from16 v58, v44

    move/from16 v59, v45

    move/from16 v60, v46

    move/from16 v61, v47

    move-object/from16 v47, v1

    move-object/from16 v44, v8

    move-object/from16 v43, v10

    move-object v10, v15

    move-object/from16 v1, v18

    const/4 v8, 0x0

    goto/16 :goto_3a5

    :cond_304
    move-object/from16 v50, v11

    move-object/from16 v49, v14

    const-string v9, "password"

    move-object/from16 v11, p11

    .line 636
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "realm"

    .line 637
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    const-string v14, "imMsgTech"

    .line 638
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v43, v10

    const-string v10, "msrpTransType"

    .line 639
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v44, v8

    const-string/jumbo v8, "transport"

    .line 640
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v45, v8

    const-string/jumbo v8, "useKeepAlive"

    .line 641
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move/from16 v46, v8

    const-string/jumbo v8, "qVal"

    .line 642
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v47, v1

    const-string v1, "getRcsConfig - password : "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imMsgTech : "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msrpTransType : "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-static {v13, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Timer_T1"

    .line 645
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v8, "Timer_T2"

    .line 646
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v54, v1

    const-string v1, "Timer_T4"

    .line 647
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v55, v1

    const-string v1, "RegRetryBaseTime"

    .line 648
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v56, v1

    const-string v1, "RegRetryMaxTime"

    .line 649
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v61, v1

    move/from16 v58, v8

    move-object v11, v14

    move-object/from16 v14, v18

    move-object/from16 v1, v45

    move/from16 v8, v46

    move/from16 v57, v54

    move/from16 v59, v55

    move/from16 v60, v56

    .line 654
    :goto_3a5
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v18

    if-eqz v18, :cond_3cf

    invoke-static {v12}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v18

    if-nez v18, :cond_3cf

    move-object/from16 v18, v10

    .line 655
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v12, v3}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    .line 656
    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v10

    move-object/from16 p11, v10

    const-string v10, "createUserAgent: imsDmProfile from DmProfileLoader"

    .line 657
    invoke-static {v13, v3, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v10, p11

    goto :goto_3d5

    :cond_3cf
    move-object/from16 v18, v10

    .line 659
    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v10

    :goto_3d5
    move/from16 v45, v8

    const-string v8, "is_server_header_enabled"

    if-eqz v41, :cond_43d

    .line 663
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v46

    if-nez v46, :cond_3ee

    move-object/from16 v46, v10

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v10

    invoke-static {v3, v10}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v10

    if-eqz v10, :cond_43f

    goto :goto_3f0

    :cond_3ee
    move-object/from16 v46, v10

    .line 664
    :goto_3f0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 665
    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    const-string/jumbo v10, "sip:anonymous@anonymous.invalid"

    .line 666
    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 667
    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 668
    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 669
    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 670
    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 671
    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 672
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isWifiPreConditionEnabled()Z

    move-result v15

    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    .line 673
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->shouldUseCompactHeader()Z

    move-result v15

    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    const/4 v15, 0x1

    .line 674
    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v9

    iget-object v15, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 675
    invoke-interface {v15, v3, v8, v10}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v8

    move/from16 v54, v29

    move/from16 v29, v38

    move/from16 v9, v41

    move-object/from16 v38, v6

    goto/16 :goto_508

    :cond_43d
    move-object/from16 v46, v10

    .line 677
    :cond_43f
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v15, "null"

    const-string v54, "empty"

    if-eqz v10, :cond_465

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUserAgent: impi is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p8

    if-nez v10, :cond_458

    goto :goto_45a

    :cond_458
    move-object/from16 v15, v54

    :goto_45a
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    :cond_465
    move-object/from16 v10, p8

    .line 681
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_489

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUserAgent: domain is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    if-nez v1, :cond_47c

    goto :goto_47e

    :cond_47c
    move-object/from16 v15, v54

    :goto_47e
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    :cond_489
    move-object/from16 v15, p6

    move/from16 v62, v38

    move-object/from16 v38, v6

    move/from16 v6, v62

    .line 686
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_49a

    move-object/from16 p11, v15

    goto :goto_49c

    :cond_49a
    move-object/from16 p11, v14

    .line 690
    :goto_49c
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v14

    .line 691
    invoke-virtual {v14, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    move-object/from16 v14, p7

    move/from16 v62, v29

    move/from16 v29, v6

    move/from16 v6, v62

    .line 692
    invoke-virtual {v10, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v10

    move/from16 v54, v6

    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    .line 693
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 694
    invoke-virtual {v6, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 695
    invoke-virtual {v6, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 696
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 697
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v9

    if-eqz v9, :cond_4e0

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isIPSecAllow()Z

    move-result v9

    if-eqz v9, :cond_4e0

    const/4 v9, 0x1

    goto :goto_4e1

    :cond_4e0
    const/4 v9, 0x0

    :goto_4e1
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 698
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isWifiPreConditionEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 699
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->shouldUseCompactHeader()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    move/from16 v9, v41

    .line 700
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v14, 0x0

    .line 701
    invoke-interface {v10, v3, v8, v14}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v8

    move-object/from16 v14, p11

    .line 703
    :goto_508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###set profile id, id = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x4

    const/4 v10, 0x3

    move/from16 v15, v36

    if-ne v15, v6, :cond_534

    .line 707
    invoke-static {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v6

    if-eqz v6, :cond_531

    goto :goto_544

    :cond_531
    const/4 v6, 0x2

    move v10, v6

    goto :goto_544

    :cond_534
    if-ne v15, v10, :cond_543

    .line 713
    invoke-static {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v6

    if-eqz v6, :cond_541

    goto :goto_544

    :cond_541
    const/4 v10, 0x0

    goto :goto_544

    :cond_543
    move v10, v15

    .line 720
    :goto_544
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v11

    const-string v11, "TTY Type "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " convert to TextMode "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 722
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v11, "srvcc_version"

    const/4 v15, 0x0

    .line 723
    invoke-interface {v6, v3, v11, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v6

    .line 724
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v41, v13

    const-string v13, "ignore_display_name"

    invoke-interface {v11, v3, v13, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v11

    .line 725
    iget-object v13, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move/from16 p6, v11

    const-string v11, "keep_alive_factor"

    invoke-interface {v13, v3, v11, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v11

    .line 727
    iget-object v13, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move/from16 p7, v11

    const-string/jumbo v11, "support_uac"

    invoke-interface {v13, v3, v11, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_595

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->isCpSupportUac(I)Z

    move-result v11

    if-eqz v11, :cond_595

    const/4 v11, 0x1

    goto :goto_596

    :cond_595
    const/4 v11, 0x0

    .line 728
    :goto_596
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUacList()Ljava/util/List;

    move-result-object v13

    .line 729
    invoke-direct {v0, v3, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->filterUacSipListByCpUacType(ILjava/util/List;)V

    .line 732
    invoke-direct {v0, v3, v7, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getVowifi5gsaMode(ILcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;)I

    move-result v15

    move-object/from16 v21, v7

    .line 733
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 p8, v13

    const-string v13, "is_support_update_sa_mode_on_start"

    move/from16 v55, v11

    const/4 v11, 0x0

    .line 734
    invoke-interface {v7, v3, v13, v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v7

    .line 735
    invoke-direct {v0, v9, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getTimerF(ZLcom/sec/ims/settings/ImsProfile;)I

    move-result v9

    .line 738
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, v47

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, p4

    .line 739
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, p5

    .line 740
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 741
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRemoteUriType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v11

    invoke-static {v4, v5, v11, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getNetworkUriType(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 742
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getControlDscp()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 743
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, v44

    .line 744
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, v43

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v11, v50

    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v22

    .line 745
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v23

    .line 746
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v24

    .line 747
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v27

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v25

    .line 748
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 749
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSipUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 750
    invoke-virtual {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v11, v36

    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 751
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRingbackTimer()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 752
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRingingTimer()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, v46

    .line 753
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 754
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 755
    invoke-static {v4, v3}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v28

    .line 756
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v30

    .line 757
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v31

    .line 758
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v32

    .line 759
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableVcid(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v33

    .line 760
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v34

    .line 761
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 762
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 763
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isVceConfigEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v54

    .line 764
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 765
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 766
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isMsrpBearerUsed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 767
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSubscriberTimer()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v35

    .line 768
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v45

    .line 769
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 770
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 771
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 772
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setActiveDataPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v10, v18

    .line 773
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 774
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getFullCodecOfferRequired()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 775
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRcsTelephonyFeatureTagRequired()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v53

    .line 776
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 777
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getIsTransportNeeded()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v20

    .line 778
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 779
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getDbrTimer()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 780
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isTcpGracefulShutdownEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 781
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTcpRstUacErrorcode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 782
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTcpRstUasErrorcode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 783
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getPrivacyHeaderRestricted()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 784
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUsePemHeader()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 785
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportEct()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 786
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEarlyMediaRtpTimeoutTimer()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 787
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getAddHistinfo()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 788
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 789
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfSipMsg()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 790
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfRat()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedPidfRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 791
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUseSubcontactWhenResub()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 792
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUseProvisionalResponse100rel()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 793
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUse183OnProgressIncoming()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 794
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUseQ850causeOn480()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 795
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupport183ForIr92v9Precondition()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 796
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportImsNotAvailable()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 797
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportLtePreferred()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v40

    .line 798
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 799
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportReplaceMerge()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 800
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportAccessType()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 801
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 802
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getOipFromPreferred()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setOipFromPreferred(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 803
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSelectTransportAfterTcpReset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 804
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 805
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 806
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCmcType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 807
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getVideoCrbtSupportType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 808
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getRetryInviteOnTcpReset()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 809
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEnableVerstat()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v57

    .line 810
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v58

    .line 811
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v59

    .line 812
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 813
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerA()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 814
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerB()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 815
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerC()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 816
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerD()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 817
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerE()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 818
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 819
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerG()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 820
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerH()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 821
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerI()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 822
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerJ()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 823
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTimerK()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v60

    .line 824
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v61

    .line 825
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 826
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 827
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->isPttSupported()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 828
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getTryReregisterFromKeepalive()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 829
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSslType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 830
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupport199ProvisionalResponse()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 831
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSend18xReliably()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSend18xReliably(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, v39

    .line 832
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, p6

    .line 833
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 834
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportNetworkInitUssi()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 835
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSendByeForUssi()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 836
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportRfc6337ForDelayedOffer()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 837
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getUse200offerWhenRemoteNotSupport100rel()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUse200offerWhenRemoteNotSupport100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 838
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getHashAlgoType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 839
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVowifi5gsaMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 840
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getExcludePaniVowifiInitialRegi()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setExcludePaniVowifiInitialRegi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 841
    invoke-static {v3}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSingleRegiEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 842
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getNeedCheckAllowedMethodForRefresh()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedCheckAllowedMethodForRefresh(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, p7

    .line 843
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setKeepAliveFactor(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v29

    .line 844
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEncrNullRoaming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 845
    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->isAddMmtelCallComposerTag(ILandroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAddMmtelCallComposerTag(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v4, v55

    .line 846
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportUac(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v4, p8

    .line 847
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUacSipList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 848
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getNeedVoLteRetryInNr()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedVolteRetryInNr(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 849
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextImpuType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpuPreference(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 850
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsUpdateSaOnStartSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 851
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSupportB2cCallcomposerWithoutFeaturetag()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportB2cCallcomposerWithoutFeaturetag(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 853
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_9b1

    .line 854
    sget-object v2, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 856
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAccessToken(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    const-string/jumbo v2, "saServerUrl"

    move-object/from16 v4, p12

    .line 859
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "relayType"

    .line 860
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "eCallNum"

    .line 861
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 863
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SA url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", relayType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cmcEmergencyNumbers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v41

    .line 863
    invoke-static {v7, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_993

    .line 867
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAuthServerUrl(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 869
    :cond_993
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99c

    .line 870
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCmcRelayType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 872
    :cond_99c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a5

    .line 873
    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCmcEmergencyNumbers(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 875
    :cond_9a5
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportDualSimCmc(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    goto :goto_9d4

    :cond_9b1
    move-object/from16 v7, v41

    .line 876
    invoke-interface/range {v38 .. v38}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_9cf

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_9cf

    .line 877
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    goto :goto_9d4

    :cond_9cf
    move-object/from16 v2, v21

    .line 879
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    :goto_9d4
    move-object/from16 v14, v49

    .line 881
    invoke-virtual {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMvnoName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v2, p9

    .line 882
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v2, p10

    .line 883
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUserAgent: TransportType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " port="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 885
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a22

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserAgent: sessionRefresher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 887
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 890
    :cond_a22
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a33

    .line 891
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 894
    :cond_a33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserAgent: hostname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", P-CSCF="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v4, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 895
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 898
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 901
    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 903
    invoke-direct {v0, v12, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureTimerTS(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v2, v51

    move/from16 v1, v52

    .line 905
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setPdn(I)V

    move-object/from16 v1, v42

    .line 906
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setNetwork(Landroid/net/Network;)V

    .line 908
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v3

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v4, v12}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a99

    .line 910
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_PANI_NO_USER_AGENT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    move-object/from16 v3, p1

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    const-string v0, "createUserAgent: pani is null"

    .line 911
    invoke-static {v7, v4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    :cond_a99
    move-object/from16 v3, p1

    .line 915
    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 916
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 918
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->isVceConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_ab7

    const-string v1, "enable subscribe dialog"

    .line 919
    invoke-static {v7, v4, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 920
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 923
    :cond_ab7
    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 924
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserAgent:mno="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 927
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    move-object/from16 v5, p13

    invoke-direct {v1, v0, v4, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V

    .line 1091
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->create()I

    return-object v2
.end method

.method private filterUacSipListByCpUacType(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1607
    invoke-static {p1}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getSupportUacType(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0

    .line 1608
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterUacSipListByCpUacType : modem support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1609
    sget-object p0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-ne v0, p0, :cond_26

    .line 1610
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_2f

    .line 1611
    :cond_26
    sget-object p0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-ne v0, p0, :cond_2f

    const-string p0, "REGISTER"

    .line 1612
    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method private getP2pNetworkHandle(I)J
    .registers 13

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getP2pNetworkHandle, cmcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1101
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v2, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_29
    if-ge v5, v2, :cond_82

    aget-object v6, v0, v5

    .line 1102
    invoke-virtual {p0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 1113
    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "netId (NetworkHandle): "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x7

    if-eq p1, v6, :cond_53

    const/16 v6, 0x8

    if-ne p1, v6, :cond_51

    goto :goto_53

    :cond_51
    move-wide v6, v8

    goto :goto_7f

    :cond_53
    :goto_53
    if-eqz v7, :cond_79

    const/4 v6, 0x1

    .line 1119
    invoke-virtual {v7, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found netId for cmcType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", netId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :cond_79
    const-string v6, "not found netId for wifi-direct"

    .line 1124
    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, v3

    :goto_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_82
    return-wide v6
.end method

.method private getPdnName(I)Ljava/lang/String;
    .registers 3

    const/4 p0, -0x1

    if-eq p1, p0, :cond_38

    if-eqz p1, :cond_35

    const/4 p0, 0x1

    if-eq p1, p0, :cond_31

    const/4 p0, 0x5

    if-eq p1, p0, :cond_35

    const/16 p0, 0xb

    if-eq p1, p0, :cond_2e

    const/16 p0, 0xf

    if-eq p1, p0, :cond_2b

    .line 1147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    const-string p0, "emergency"

    return-object p0

    :cond_2e
    const-string p0, "ims"

    return-object p0

    :cond_31
    const-string/jumbo p0, "wifi"

    return-object p0

    :cond_35
    const-string p0, "internet"

    return-object p0

    :cond_38
    const-string p0, "default"

    return-object p0
.end method

.method private getTimerF(ZLcom/sec/ims/settings/ImsProfile;)I
    .registers 3

    if-eqz p1, :cond_18

    .line 1531
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p0

    if-gtz p0, :cond_9

    goto :goto_18

    .line 1534
    :cond_9
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p0

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1532
    :cond_18
    :goto_18
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p0

    return p0
.end method

.method private getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 7

    .line 1462
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1463
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1464
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1466
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_a

    :cond_27
    if-eqz v2, :cond_a

    .line 1470
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p2, :cond_4f

    .line 1472
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 1473
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_4f
    return-object v1

    :cond_50
    const/4 v0, 0x0

    if-eqz p2, :cond_58

    .line 1485
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0

    :cond_58
    return-object v0
.end method

.method private getVowifi5gsaMode(ILcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;)I
    .registers 14

    .line 1538
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1539
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0

    .line 1542
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "vowifi_5gsa_mode"

    const-string v2, "ENABLE"

    .line 1543
    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1544
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DEPRIORITIZE"

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    .line 1545
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "support_vowifi_deprioritize_nr5g"

    .line 1546
    invoke-interface {v0, p1, v1, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1547
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v4, "support_disable_vowifi_5gsa"

    .line 1548
    invoke-interface {v1, p1, v4, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_33

    move-object v0, v2

    goto :goto_3b

    :cond_33
    if-eqz v1, :cond_38

    const-string v0, "DISABLE"

    goto :goto_3b

    .line 1554
    :cond_38
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0

    .line 1558
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "EPDGHANDOVERENABLE"

    const-string/jumbo v5, "user_config"

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1560
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v6, "ONLYEPSFALLBACK"

    invoke-static {p1, v4, v5, v6, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/16 v6, 0x14

    .line 1562
    invoke-static {p3, v6}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6d

    const/16 v6, 0x12

    invoke-static {p3, v6}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p3

    if-eqz p3, :cond_6d

    .line 1563
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getNrInterworkingMode(I)I

    move-result p3

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$NrInterworking;->FULL_SUPPORT:I

    if-eq p3, v6, :cond_6d

    move p3, v7

    goto :goto_6e

    :cond_6d
    move p3, v3

    .line 1564
    :goto_6e
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v8, "NRPREFERREDMODE"

    invoke-static {p1, v6, v5, v8, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1566
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v9, "NRSAMODE"

    invoke-static {p1, v8, v5, v9, v7}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vowifi5gsaMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", hoEnable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", onlyEpsFallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", needDisable5gsa : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isNrPreferredMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isNrSaMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResipRegiMgr"

    invoke-static {v8, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1570
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    if-eqz v1, :cond_c7

    if-nez v4, :cond_c9

    :cond_c7
    if-eqz p3, :cond_13c

    .line 1571
    :cond_c9
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_d1

    if-eqz v6, :cond_13c

    if-eqz v5, :cond_13c

    .line 1572
    :cond_d1
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DEPRIORITIZE:I

    return p0

    .line 1574
    :cond_d4
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_12f

    const-string/jumbo p2, "ro.boot.hardware"

    const-string p3, ""

    .line 1575
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "qcom"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_ed

    .line 1576
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0

    :cond_ed
    :try_start_ed
    const-string p2, "com.sec.internal.ims.core.handler.secims.ResipMediaHandler"

    .line 1579
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 1580
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object p0

    const-string p3, "getSupportVowifiDisable5gsa"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1581
    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 1582
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSupportVowifiDisable5gsa : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_13c

    .line 1585
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DISABLE:I
    :try_end_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ed .. :try_end_129} :catch_12a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ed .. :try_end_129} :catch_12a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ed .. :try_end_129} :catch_12a
    .catch Ljava/lang/IllegalAccessException; {:try_start_ed .. :try_end_129} :catch_12a

    return p0

    :catch_12a
    move-exception p0

    .line 1588
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_13c

    :cond_12f
    if-eqz v1, :cond_133

    if-nez v4, :cond_135

    :cond_133
    if-eqz p3, :cond_13c

    :cond_135
    if-eqz v6, :cond_13c

    if-eqz v5, :cond_13c

    .line 1593
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DISABLE:I

    return p0

    .line 1597
    :cond_13c
    :goto_13c
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0
.end method

.method private isCpSupportUac(I)Z
    .registers 2

    .line 1601
    invoke-static {p1}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getSupportUacType(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object p0

    .line 1602
    sget-object p1, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-eq p0, p1, :cond_f

    sget-object p1, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL16:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static synthetic lambda$configureRCS$0(ILcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .registers 2

    .line 1156
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isUserAgentInRegistered$1(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;
    .registers 2

    const/4 v0, 0x0

    .line 1195
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private needRemoveEmergencyUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)Z
    .registers 5

    .line 311
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1d

    return v1

    .line 314
    :cond_1d
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p0

    if-lez p0, :cond_4d

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result p0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNumOfEmerPcscfIp()I

    move-result p2

    if-ge p0, p2, :cond_4d

    .line 315
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "pending Emergency Register msg, Remove Emergency UserAgent"

    const-string p2, "ResipRegiMgr"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_4d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public configure(I)V
    .registers 6

    const-string v0, "ResipRegiMgr"

    const-string v1, "configure:"

    .line 1164
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1170
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2a

    .line 1171
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    :cond_2a
    const-string v2, ""

    .line 1172
    :goto_2c
    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/DeviceUtil;->getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1174
    :cond_30
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRegistration(ILjava/lang/String;)V

    .line 1175
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "srvcc_version"

    const/4 v2, 0x0

    invoke-interface {p0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configSrvcc(II)V

    return-void
.end method

.method public deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .registers 8

    .line 284
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 285
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deregisterInternal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",DEREGI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x11020002

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 293
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_70

    const-string v3, "presence"

    .line 295
    invoke-virtual {v2, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :goto_71
    if-nez v1, :cond_7b

    const-string p0, "ResipRegiMgr"

    const-string p1, "deregisterInternal: UserAgent is null, can\'t deregister"

    .line 299
    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 302
    :cond_7b
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deregister(ZZ)V

    .line 304
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_8c

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->needKeepEmergencyTask()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 305
    :cond_8c
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_a9

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p2

    if-eqz p2, :cond_a9

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_a9

    .line 306
    :cond_a6
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_a9
    return-void
.end method

.method public dump()V
    .registers 7

    const-string v0, "ResipRegiMgr"

    .line 1326
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v1, "Dump of UserAgents:"

    .line 1327
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1329
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 1330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAgent ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] State: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], Profile: ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 1334
    :cond_66
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->dump()V

    .line 1335
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->dump()V

    return-void
.end method

.method protected getAudioEngineType()I
    .registers 2

    .line 1340
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getModemBoardName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHANNON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 1342
    :cond_e
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getChipName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unisoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x3

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "ResipRegiMgr"

    const-string p1, "getImsiByUserAgent: ua is null!"

    .line 1384
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1388
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1389
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getImsiByUserAgentHandle(I)Ljava/lang/String;
    .registers 2

    .line 1400
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1401
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 4

    .line 1493
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1494
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 3

    const/4 v0, 0x0

    .line 1437
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 8

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserAgent, phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1444
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1445
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1447
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_20

    :cond_3d
    if-eqz v2, :cond_20

    .line 1451
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserAgent, reg.getPhoneId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_20

    return-object v0

    :cond_64
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_9e

    const-string v1, ""

    .line 1406
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 1407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgentByImsi : Argument imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipRegiMgr"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1409
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1410
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    if-eqz v6, :cond_2b

    .line 1412
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_2b

    :cond_48
    if-eqz v5, :cond_2b

    .line 1416
    invoke-virtual {v5, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1417
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    .line 1418
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    .line 1419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserAgentByImsi, phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2b

    .line 1422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserAgentByImsi imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1423
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    return-object v4

    :cond_9d
    return-object v0

    .line 1431
    :cond_9e
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 7

    .line 1513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1515
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_f

    .line 1516
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1517
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1519
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_f

    :cond_32
    if-eqz v2, :cond_f

    .line 1522
    invoke-virtual {v2, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1523
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3e
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1527
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public bridge synthetic getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 4

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1373
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1374
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentOnPdn(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 5

    .line 1503
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1504
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v1

    if-ne v1, p1, :cond_a

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    if-ne v1, p2, :cond_a

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .registers 3

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public handleInactiveCiaOnMobileConnected(ILcom/sec/internal/ims/core/RegisterTask;)V
    .registers 7

    .line 1256
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] handleInactiveCiaOnMobileConnected() need CIA_Inactive = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipRegiMgr"

    .line 1257
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_64

    .line 1261
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1262
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez p0, :cond_61

    .line 1264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] handleInactiveCiaOnMobileConnected() task.getUserAgent() returned null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1267
    :cond_61
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    :cond_64
    return-void
.end method

.method public handleInactiveCiaOnMobileDisconnected(ILcom/sec/internal/ims/core/RegisterTask;)V
    .registers 9

    .line 1272
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] handleInactiveCiaOnMobileDisconnected() need CIA_Inactive = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipRegiMgr"

    .line 1273
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_69

    .line 1276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 1277
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1278
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez p0, :cond_66

    .line 1280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] handleInactiveCiaOnMobileDisconnected() task.getUserAgent() returned null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1283
    :cond_66
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    :cond_69
    return-void
.end method

.method public init()V
    .registers 4

    .line 148
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UaHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    .line 149
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 153
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V

    return-void
.end method

.method public isUserAgentInRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .registers 3

    .line 1194
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda2;-><init>()V

    .line 1195
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1196
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZ)V
    .registers 6

    .line 353
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method public onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V
    .registers 6

    .line 323
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p4

    if-eqz p4, :cond_1c

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p4, p5, :cond_1c

    .line 324
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->needRemoveEmergencyUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 325
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_1b
    return-void

    .line 331
    :cond_1c
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p4, p5, :cond_2d

    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    goto :goto_8c

    .line 335
    :cond_2d
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result p3

    const-string p4, "ResipRegiMgr"

    if-eqz p3, :cond_51

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object p5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p3, p5, :cond_47

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result p3

    if-eqz p3, :cond_51

    .line 337
    :cond_47
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "Dont Remove the user Agent for Refresh Reg ,Re-register to be triggered."

    invoke-static {p4, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8c

    .line 339
    :cond_51
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz p3, :cond_63

    .line 340
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p3

    if-ne p3, p2, :cond_63

    .line 341
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_8c

    .line 342
    :cond_63
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p3

    if-eqz p3, :cond_8c

    .line 343
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "remove user agent not in the IRegisterTask: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    .line 345
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->terminate()V

    .line 346
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->unRegisterListener()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public registerInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 197
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v13

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerInternal: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pcscf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget-boolean v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->SHIP_BUILD:Z

    if-nez v1, :cond_27

    move-object v1, v3

    goto :goto_29

    :cond_27
    const-string v1, ""

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ResipRegiMgr"

    .line 198
    invoke-static {v12, v13, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v16

    .line 203
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 205
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v17

    .line 206
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v0, :cond_110

    const-string/jumbo v0, "register: creating UserAgent."

    .line 208
    invoke-static {v12, v13, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    iget-object v11, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v18, v11

    move-object/from16 v11, p12

    move-object/from16 v19, v12

    move-object/from16 v12, p13

    move/from16 p2, v13

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v13}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 212
    iget-object v1, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)V

    .line 214
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 216
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 217
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_e2

    .line 218
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLogTimer;->setVolteRegisterStartTime(I)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND SIP REGISTER <+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLogTimer;->getVolteRegisterStartTime(I)J

    move-result-wide v1

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_e7

    :cond_e2
    const-string v0, "SEND SIP REGISTER"

    .line 222
    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 227
    :goto_e7
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1eb

    .line 228
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    invoke-interface {v0, v15, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    goto/16 :goto_1eb

    :cond_104
    const-string/jumbo v0, "register: fail creating UserAgent."

    move/from16 v1, p2

    move-object/from16 v2, v19

    .line 231
    invoke-static {v2, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_110
    move-object v2, v12

    move v1, v13

    .line 235
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v6

    if-eqz v3, :cond_11b

    .line 237
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setPcscfIp(Ljava/lang/String;)V

    .line 241
    :cond_11b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "register: Re-Register with new services="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {v15, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 245
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_16d

    const-string v2, "mmtel-video"

    .line 246
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 247
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 248
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 249
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI"

    invoke-virtual {v2, v1, v15, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_16d

    .line 251
    :cond_15d
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 252
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "createUserAgent : add mmtel to Capabilities for E-REGI"

    invoke-virtual {v2, v1, v15, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 256
    :cond_16d
    :goto_16d
    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)V

    .line 257
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setServiceList(Ljava/util/Set;)V

    .line 258
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setLinkedImpuList(Ljava/util/List;)V

    move-object/from16 v2, p7

    .line 259
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setImpu(Ljava/lang/String;)V

    .line 260
    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setSingleRegiEnabled(Z)V

    .line 262
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_19c

    .line 263
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->isAddMmtelCallComposerTag(ILandroid/content/Context;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setAddMmtelCallComposerTag(Z)V

    .line 266
    :cond_19c
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v2

    if-eqz v2, :cond_1b7

    .line 267
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    goto :goto_1b8

    :cond_1b7
    const/4 v2, 0x0

    .line 268
    :goto_1b8
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setImMsgTech(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_1df

    move-object/from16 v2, p11

    .line 271
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setThirdPartyFeatureTags(Ljava/util/List;)V

    .line 275
    :cond_1df
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyReRegistering(ILjava/util/Set;)V

    .line 276
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->register()I

    :cond_1eb
    :goto_1eb
    const/4 v0, 0x1

    return v0
.end method

.method public removePreviousLastPani(I)V
    .registers 2

    .line 1289
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->removePreviousPlani(I)V

    return-void
.end method

.method public removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .registers 8

    .line 1350
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUserAgent: task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipRegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1352
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v0

    .line 1353
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v1, :cond_4f

    .line 1355
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo v0, "removeUserAgent: UserAgent null"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1356
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUserAgent()V

    return-void

    .line 1360
    :cond_4f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUserAgent: UserAgent handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1361
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->terminate()V

    .line 1362
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUserAgent()V

    return-void
.end method

.method public sendDmState(IZ)V
    .registers 4

    .line 1180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendDmState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResipRegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1181
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    .line 1182
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendDmState(IZ)V

    return-void
.end method

.method public sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDnsQuery: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResipRegiMgr"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method public setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .registers 3

    const-string p0, "ResipRegiMgr"

    const-string/jumbo v0, "setSilentLogEnabled:"

    .line 1187
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    .line 1189
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setSilentLogEnabled(Z)V

    return-void
.end method

.method public setSimManagers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    return-void
.end method

.method public suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
    .registers 9

    .line 358
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 359
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 360
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getSuspendState()Z

    move-result v1

    if-eq v1, p2, :cond_73

    .line 361
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2e

    const-string v5, "Suspend : "

    goto :goto_30

    :cond_2e
    const-string v5, "Resume : "

    :goto_30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 363
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->suspended(Z)V

    if-eqz p2, :cond_58

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->removeRecoveryAction()V

    goto :goto_71

    .line 369
    :cond_58
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_71

    .line 370
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    :cond_71
    :goto_71
    const/4 p0, 0x1

    return p0

    :cond_73
    const/4 p0, 0x0

    return p0
.end method

.method public updateGeolocation(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .registers 3

    .line 1315
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "ResipRegiMgr"

    const-string/jumbo p1, "updateGeolocation: ua is null. return"

    .line 1316
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1320
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1321
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    return-void
.end method

.method public updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .registers 8

    .line 1207
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1208
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1209
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    return-void

    .line 1215
    :cond_30
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V

    .line 1217
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    if-nez v3, :cond_41

    return-void

    .line 1220
    :cond_41
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const-string v4, "IEEE-802.11"

    .line 1223
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1224
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v0, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1225
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-nez v5, :cond_6a

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1226
    :cond_6a
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    goto :goto_76

    :cond_74
    const-string v4, ""

    .line 1230
    :cond_76
    :goto_76
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setCurPani(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updatePani(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-interface {p1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPaniSet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRat(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .registers 3

    .line 1294
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 1298
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1299
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateRat(I)V

    return-void
.end method

.method public updateTimeInPlani(ILcom/sec/ims/settings/ImsProfile;)V
    .registers 16

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p2

    if-eqz p2, :cond_7f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7f

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1240
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)J

    move-result-wide v3

    .line 1241
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isChangedPlani(ILjava/lang/String;)Z

    move-result p2

    .line 1243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTimeInPlani: plani "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", time "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ResipRegiMgr"

    invoke-static {v8, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1244
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_5c

    .line 1245
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    :cond_5c
    cmp-long v3, v3, v11

    if-eqz v3, :cond_7f

    if-eqz p2, :cond_7f

    .line 1249
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    return-void
.end method

.method public updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .registers 3

    .line 1304
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "ResipRegiMgr"

    const-string/jumbo p1, "updateVceConfig: no pending task, simply return"

    .line 1305
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1309
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1310
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateVceConfig(Z)V

    return-void
.end method
