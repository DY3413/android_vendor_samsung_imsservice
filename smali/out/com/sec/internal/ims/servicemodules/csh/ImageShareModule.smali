.class public Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;
.super Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;
.source "ImageShareModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;


# static fields
.field private static final EVENT_INCOMING_SESSION:I = 0x2

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x3

.field private static final EVENT_TRANSFER_COMPLETE:I = 0x4

.field private static final EVENT_TRANSFER_FAILED:I = 0x6

.field private static final EVENT_TRANSFER_PROGRESS:I = 0x5

.field private static LOG_TAG:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mHasImageShareSupport:[Z

.field private mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

.field private mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:[J

.field private mRegistrationId:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 63
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->NAME:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p2, p1, [J

    .line 69
    fill-array-data p2, :array_2e

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    new-array p1, p1, [Z

    .line 70
    fill-array-data p1, :array_3a

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mListeners:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 84
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 85
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    return-void

    :array_2e
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_3a
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private disableIshFeature()V
    .registers 3

    .line 401
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disableIshFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CapabilityDiscoveryModule"

    .line 403
    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object p0

    .line 404
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->disableFeature(J)V

    return-void
.end method

.method private ishReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I
    .registers 2

    .line 408
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$3;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_1a

    const/16 p0, 0x9

    return p0

    :pswitch_e
    const/16 p0, 0xc

    return p0

    :pswitch_11
    const/4 p0, 0x6

    return p0

    :pswitch_13
    const/4 p0, 0x3

    return p0

    :pswitch_15
    const/4 p0, 0x4

    return p0

    :pswitch_17
    const/16 p0, 0xa

    return p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private readConfig(I)V
    .registers 8

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string v2, "isAuth"

    .line 478
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 477
    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string v2, "maxsizeimageshare"

    .line 480
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 479
    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v0, p1

    .line 481
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readConfig phonId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ImageShare enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ImageShare Max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    aget-wide v4, v2, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7c

    .line 484
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "readconfig: isauth true but forced disable for SPRINT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->disableIshFeature()V

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aput-boolean v3, p0, p1

    :cond_7c
    return-void
.end method

.method private updateFeatures(I)V
    .registers 5

    .line 518
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->readConfig(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 524
    :goto_29
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_43

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string v2, "is"

    .line 525
    invoke-static {v0, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_43

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v0, v0

    aput-wide v0, p0, p1

    goto :goto_51

    .line 528
    :cond_43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFeatures: RCS is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p0, p1

    :goto_51
    return-void
.end method


# virtual methods
.method public acceptShare(J)V
    .registers 6

    .line 211
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 214
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getFileSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/StorageEnvironment;->isSdCardStateFine(J)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 215
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->acceptIncomingSession()V

    goto :goto_49

    .line 217
    :cond_2a
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->incomingSessionPreReject()V

    goto :goto_49

    .line 220
    :cond_2e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCommunicationError()V

    :goto_49
    return-void
.end method

.method public cancelShare(J)V
    .registers 6

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 229
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->cancelByLocalSession()V

    goto :goto_3b

    .line 231
    :cond_20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCommunicationError()V

    :goto_3b
    return-void
.end method

.method public createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/csh/ImageShare;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 206
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .registers 3

    .line 510
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 511
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 512
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxSize()J
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 90
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .registers 1

    const-string p0, "is"

    .line 95
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .registers 4

    .line 239
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 242
    :catch_7
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not Image Share"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .registers 3

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object p0

    return-object p0
.end method

.method public getWarnSize()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 442
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_50

    .line 463
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 464
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishTransferFailedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;)V

    goto :goto_50

    .line 459
    :cond_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 460
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishTransferProgressEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;)V

    goto :goto_50

    .line 455
    :cond_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 456
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishTransferCompleteEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;)V

    goto :goto_50

    .line 451
    :cond_39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 452
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;)V

    goto :goto_50

    .line 447
    :cond_45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 448
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;)V

    :goto_50
    return-void
.end method

.method public ishCancelFailed(I)V
    .registers 9

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz v0, :cond_38

    .line 310
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    .line 311
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object p0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/16 v6, 0xc

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V

    .line 314
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ishCancelFailed sessionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " broadcast finished"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 316
    :cond_38
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already removed session"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public ishIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;)V
    .registers 8

    .line 360
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mSessionId:I

    .line 361
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 362
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 363
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mFt:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    .line 364
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIshIncomingSessionEvent( #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): Enter"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/samsungrcssos"

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 369
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Skipping OpenAPI incoming session message"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_4f
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ishSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;)V
    .registers 6

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 250
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ishSessionEstablishedEvent sessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4b

    .line 254
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 255
    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 257
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessioinEstablished()V

    .line 259
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    iget-wide v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 260
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 259
    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastConnected(JLcom/sec/ims/util/ImsUri;)V

    goto :goto_52

    .line 262
    :cond_4b
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Session is Not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void
.end method

.method public ishTransferCompleteEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;)V
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;->mSessionId:I

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz p1, :cond_32

    .line 323
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transferCompleted()V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 326
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 325
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCompleted(JLcom/sec/ims/util/ImsUri;)V

    .line 328
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-nez v0, :cond_39

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastSystemRefresh(Ljava/lang/String;)V

    goto :goto_39

    .line 333
    :cond_32
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already removed session"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public ishTransferFailedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;)V
    .registers 13

    .line 267
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mSessionId:I

    .line 268
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 269
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ishTransferFailedEvent sessionId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 271
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 273
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v1, v3, :cond_52

    .line 275
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    if-eqz v2, :cond_41

    .line 277
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    if-eqz v3, :cond_52

    .line 281
    new-instance v4, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x193

    const-string v6, "Forbidden"

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string v5, "ish_tapi"

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_52
    if-eqz v0, :cond_86

    .line 286
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    if-eqz v2, :cond_69

    .line 289
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v3

    .line 290
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSH(IZ)V

    .line 293
    :cond_69
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget v9, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 295
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I

    move-result v10

    .line 293
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V

    .line 297
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne p1, v0, :cond_8d

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCshServiceNotReady()V

    goto :goto_8d

    .line 302
    :cond_86
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already removed session"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    return-void
.end method

.method public ishTransferProgressEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;)V
    .registers 13

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz v0, :cond_7a

    .line 340
    iget-wide v9, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;->mProgress:J

    .line 341
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 343
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "progressing for in_progress state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x64

    mul-long/2addr v3, v9

    .line 344
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iput-wide v9, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    .line 346
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/ICshConstants$ShareDatabase;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 349
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 350
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    iget-wide v7, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    move-wide v5, v9

    .line 348
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastProgress(JLcom/sec/ims/util/ImsUri;JJ)V

    .line 351
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;

    .line 352
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v9, v10}, Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;->onIshTransferProgressEvent(Ljava/lang/String;J)V

    goto :goto_62

    .line 355
    :cond_7a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Session is Not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    return-void
.end method

.method public notifyInvalidDataPath(Ljava/lang/String;)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastInvalidDataPath(Ljava/lang/String;)V

    return-void
.end method

.method public notifyLimitExceeded(JLcom/sec/ims/util/ImsUri;)V
    .registers 4

    .line 0
    return-void
.end method

.method public notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V
    .registers 14

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V

    return-void
.end method

.method public onConfigured(I)V
    .registers 5

    .line 139
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateFeatures(I)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 5

    .line 158
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-nez p2, :cond_11

    return-void

    :cond_11
    const/4 p2, -0x1

    .line 164
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 165
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateServiceStatus(I)V

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 145
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 150
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 153
    :cond_16
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateServiceStatus(I)V

    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateFeatures(I)V

    return-void
.end method

.method public registerImageShareEventListener(Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;)V
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .registers 4

    .line 107
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_28

    .line 108
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshTransferComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshTransferFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v0, 0x0

    .line 120
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 123
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_26
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->disableIshFeature()V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshIncomingSession(Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshSessionEstablished(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshTransferComplete(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshTransferProgress(Landroid/os/Handler;)V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshTransferFailed(Landroid/os/Handler;)V

    return-void
.end method

.method protected updateServiceStatus(I)V
    .registers 6

    .line 492
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->updateServiceStatus(I)V

    .line 495
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, v0, p1

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v2, p1

    .line 496
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 497
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 499
    :goto_27
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsServiceReady:Z

    if-eq v0, p1, :cond_3a

    .line 500
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsServiceReady:Z

    if-eqz p1, :cond_35

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastServiceReady()V

    goto :goto_3a

    .line 504
    :cond_35
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastServiceNotReady()V

    :cond_3a
    :goto_3a
    return-void
.end method
