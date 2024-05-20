.class public Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
.super Landroid/os/Handler;
.source "FtProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;


# static fields
.field private static final EVENT_REJECT_FT_RESUME_INVITE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mContext:Landroid/content/Context;

.field private final mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private final mImsFtListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ft/IImsOngoingFtEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field private final mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;


# direct methods
.method public static synthetic $r8$lambda$0wssIATGUz6Bjmo1GJjjS1U6sMA(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$resumeSendingTransfer$7(Ljava/lang/String;ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3CaE1GzXkWIZxfD4lHG7gkhat90(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$onAutoResumeTransfer$0(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8dCY7270F9vnKaycW5TTHR72A0A(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$handleFileResizeResponse$11(Ljava/lang/String;ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9HDnA_gpDD9h2UxtcdOoruDs-GM(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$onSendDeliveredNotification$1(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DwqGXrWVmLtheaj8b3j9OcQzNEc(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$rejectFileTransfer$6(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FbHz8RwPfapzIjWEmwsyPZJg9Mw(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$sendFile$5(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7CwWBy4--fyya4KNEf31iIjHlM(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$resumeReceivingTransfer$8(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IE031_zGB1g3pyWoy9wpGSh7PzU(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$notifyOngoingFtEvent$12(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$JkCKJyGQV1lGz78SYbKZm9rbJys(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$setAutoAcceptFt$10(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YS235K29PH94Q0MqE86g5ygNZHk(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$attachFileToGroupChat$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZIc9hPEXkMI61jwPFOzGBYyD63A(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$acceptFileTransfer$2(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sQxp7msQZvIMTpYW7EPBMJ5KUlQ(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$attachFileToSingleChat$3(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zSb1FKaYCoovQwwFWIpjzFi9nDk(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$cancelFileTransfer$9(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 1

    .line 103
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    invoke-static {}, Lcom/sec/internal/helper/CollectionUtils;->createArrayListMultimap()Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 106
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 107
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 108
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 109
    new-instance p2, Lcom/sec/internal/ims/util/ThumbnailTool;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/util/ThumbnailTool;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 110
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    return-void
.end method

.method private checkForRejectIncomingFileTransfer(ILcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;ZZZZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    .locals 6

    .line 1241
    iget-object v0, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1242
    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getActiveCall(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1243
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne p1, v0, :cond_0

    .line 1244
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Receive geolocation Push via MSRP FT during inactive call!!."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object p1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    .line 1249
    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-nez p1, :cond_1

    .line 1250
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onIncomingFileTransferReceived, no GC session for GC FT. auto reject"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object p1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 1254
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onIncomingFileTransferReceived, user reject GC FT."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object p1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/4 p1, 0x1

    if-eqz p6, :cond_3

    if-nez p7, :cond_3

    if-eqz p8, :cond_3

    .line 1261
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onIncomingFileTransferReceived, duplicate message with imdnid: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1263
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v4, 0x0

    iget-boolean v5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;Z)V

    return-object p0

    :cond_3
    if-nez p6, :cond_4

    if-eqz p7, :cond_4

    .line 1266
    iget-boolean p3, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    if-eqz p3, :cond_4

    .line 1267
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p4, "onIncomingFileTransferReceived, resume invite from MT cannot find history, auto reject"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1269
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v4, 0x0

    iget-boolean v5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;Z)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method private findFileTransfer(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    iget-wide v3, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    iget-object v5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1282
    iget-object v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1284
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_1

    .line 1285
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onIncomingFileTransferReceived, found messageByImdn: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    move-object v0, p0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$acceptFileTransfer$2(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 557
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptFileTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "FT not found in the cache."

    .line 561
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p2

    .line 564
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "acceptFileTransfer: not registered"

    .line 565
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "acceptFileTransfer: No session"

    .line 568
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 571
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acceptTransfer(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$attachFileToGroupChat$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p9

    .line 732
    sget-object v15, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachFileToGroupChat: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contentUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", disp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestMessageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isFtSms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", contentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isResizable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBroadcast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fileDisposition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v10

    const/16 v17, 0x0

    if-nez v10, :cond_0

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachFileToGroupChat: chat not exist - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 746
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    .line 747
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 748
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v18

    const-string v5, "attachFileToGroupChat: not registered"

    const/4 v2, 0x1

    if-nez v18, :cond_5

    .line 750
    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 779
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    const/4 v12, 0x0

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p3

    move/from16 v20, v6

    move-object v6, v11

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object v11, v10

    move v10, v12

    move-object v12, v11

    move/from16 v11, p8

    move-object v14, v12

    move/from16 v12, p9

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachFileToGroupChat: Make new outgoing ft "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "attachFileToSingleChat: File copy failed"

    .line 784
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v17

    .line 789
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    move/from16 v10, v20

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v6, v19

    .line 790
    invoke-static {v15, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-object v17

    .line 795
    :cond_3
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 796
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long v4, v4

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    invoke-virtual {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v7

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-wide/from16 p6, v4

    move-object/from16 p8, v6

    move/from16 p9, v7

    .line 795
    invoke-interface/range {p4 .. p9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    .line 798
    invoke-virtual {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v2, v3, :cond_4

    .line 799
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    :cond_4
    move-object/from16 p1, v14

    move-object v2, v15

    goto/16 :goto_3

    :cond_5
    :goto_0
    move/from16 v24, v6

    move-object v6, v5

    move-object v5, v10

    move/from16 v10, v24

    .line 751
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const-string/jumbo v3, "slm"

    .line 752
    invoke-virtual {v1, v10, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 753
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v13, :cond_8

    :cond_6
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 754
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v1, v3, :cond_8

    .line 755
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v13, :cond_7

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v1, v3, :cond_8

    :cond_7
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const-string v3, "ft_http"

    .line 756
    invoke-virtual {v1, v10, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    move/from16 v16, v2

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    move/from16 v16, v1

    .line 760
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v19

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 762
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v20

    move-object v3, v5

    move-object/from16 v4, p2

    move-object/from16 p1, v5

    move-object/from16 v5, p3

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move/from16 v22, v10

    move/from16 v10, p11

    move-object/from16 v11, v20

    move/from16 v12, p6

    move/from16 v13, p9

    move/from16 v14, v16

    move-object/from16 v23, v15

    move-object/from16 v15, p10

    move/from16 v16, p8

    .line 760
    invoke-virtual/range {v1 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v1

    .line 765
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    move/from16 v3, v22

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v3, v21

    move-object/from16 v2, v23

    .line 766
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-object v17

    :cond_9
    move-object/from16 v2, v23

    if-nez v18, :cond_b

    const-string v0, "attachFileToGroupChat: FT MSRP is not supported"

    .line 772
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v0, v2, :cond_a

    .line 774
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 773
    :goto_2
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v17

    .line 803
    :cond_b
    :goto_3
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    move-object/from16 v4, p3

    invoke-static {v3, v4}, Lcom/sec/internal/helper/FileUtils;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v0, "attachFileToGroupChat: No files found"

    .line 804
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v17

    .line 812
    :cond_c
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 813
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    move-object/from16 v17, v1

    :goto_4
    return-object v17
.end method

.method private synthetic lambda$attachFileToSingleChat$3(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v13, p11

    move/from16 v2, p13

    move/from16 v3, p14

    .line 600
    sget-object v15, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachFileToSingleChat: fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contentUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contactUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " disp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " requestMessageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isprotectedAccountMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isResizable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isExtraft="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p10

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isFtSms="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " fileDisposition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isTokenUsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isTokenLink="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-static {v15, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 606
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 607
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 612
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 620
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v6, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_1

    .line 624
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 625
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v17

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v18

    sget-object v20, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v16, v4

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session not found, new session created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v6, v2

    .line 632
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 633
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    if-eqz v13, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v18, v4

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v18, v5

    :goto_1
    const-string v3, "application/vnd.gsma.rcspushlocation+xml"

    const/16 v19, 0x0

    if-nez v18, :cond_4

    .line 636
    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 638
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 640
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v11

    invoke-virtual {v4, v11, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v4, v6

    move v11, v5

    move-object/from16 v5, p2

    move-object/from16 p13, v6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p10

    move-object/from16 v12, v16

    move/from16 v13, p11

    move/from16 v14, v17

    move-object/from16 v22, v15

    move/from16 v15, v20

    move-object/from16 v16, p12

    move/from16 v17, p9

    .line 638
    invoke-virtual/range {v2 .. v17}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v2

    if-nez v18, :cond_5

    const-string v0, "attachFileToSingleChat: isFTViaHttp is false"

    move-object/from16 v15, v22

    .line 644
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v19

    :cond_5
    move-object/from16 v15, v22

    goto/16 :goto_5

    :cond_6
    move-object/from16 p13, v6

    .line 649
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 650
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v5, :cond_7

    const/4 v4, 0x1

    .line 651
    :cond_7
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtStAndFwEnabled()Z

    move-result v2

    .line 654
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 656
    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v5, v7, v6, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    goto :goto_2

    :cond_8
    move-object/from16 v5, v19

    :goto_2
    if-eqz v4, :cond_9

    .line 658
    invoke-interface {v12, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    .line 660
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    invoke-virtual {v5, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 661
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 662
    :cond_a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 663
    invoke-interface {v12, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 665
    :cond_b
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 667
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMDN modified: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual/range {p13 .. p13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    move-object/from16 v4, p13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v12

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v14, p15

    invoke-virtual/range {v2 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v2

    .line 673
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v0, "attachFileToSingleChat: File copy failed"

    .line 674
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v19

    .line 680
    :cond_c
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachFileToSingleChat: Make new outgoing ft "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "attachFileToSingleChat: not registered"

    .line 683
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-object v19

    .line 688
    :cond_d
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    .line 689
    invoke-virtual/range {p13 .. p13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-static {v1, v3}, Lcom/sec/internal/helper/BlockedNumberUtil;->isKnoxBlockedNumber(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 690
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v19

    .line 694
    :cond_e
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UNSUPPORTED TYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 695
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v19

    .line 699
    :cond_f
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    move-object/from16 v3, p3

    invoke-static {v1, v3}, Lcom/sec/internal/helper/FileUtils;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v0, "attachFileToSingleChat: No files found"

    .line 700
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    return-object v19

    .line 704
    :cond_10
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 705
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-object v2
.end method

.method private synthetic lambda$cancelFileTransfer$9(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 3

    .line 983
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFileTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "FT not found in the cache."

    .line 987
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleFileResizeResponse$11(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1119
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFileResizeResponse: FT not found in the cache."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1123
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p3, "handleFileResizeResponse: not registered"

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void

    .line 1128
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p0, v0, :cond_2

    .line 1129
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFileResizeResponse: FT is cancelled already!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1132
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->handleFileResizeResponse(ZLandroid/net/Uri;)V

    goto :goto_0

    .line 1134
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Message not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyOngoingFtEvent$12(ZI)V
    .locals 3

    .line 1147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOngoingFtEvent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 1152
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1154
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 1155
    invoke-interface {v1, p1}, Lcom/sec/ims/ft/IImsOngoingFtEventListener;->onFtStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$onAutoResumeTransfer$0(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 357
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoResumeTransfer: messageId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onAutoResumeTransfer: session not found in the cache."

    .line 360
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 365
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "onAutoResumeTransfer: not registered"

    .line 366
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 370
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 373
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 374
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method private synthetic lambda$onSendDeliveredNotification$1(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 433
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendDeliveredNotification: msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDeliveredNotification: chatId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imdnId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_0
    const-string p0, "session not found in the cache."

    .line 441
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$rejectFileTransfer$6(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 3

    .line 886
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectFileTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "FT not found in the cache."

    .line 890
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->rejectTransfer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$resumeReceivingTransfer$8(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 945
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeReceivingTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v1, p1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "resumeReceivingTransfer: FT not found in the cache."

    .line 948
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 951
    :cond_0
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContentUri(Landroid/net/Uri;)V

    .line 952
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "resumeReceivingTransfer: Session not found in the cache."

    .line 954
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 959
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p3

    if-nez p3, :cond_2

    instance-of p3, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz p3, :cond_2

    const-string p2, "resumeReceivingTransfer: not registered"

    .line 960
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void

    .line 964
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 965
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz p0, :cond_3

    const-string p0, "request resuming FT to sender using INVITE"

    .line 966
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 968
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    const/4 p3, 0x1

    .line 970
    invoke-virtual {p2, p1, p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$resumeSendingTransfer$7(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 4

    .line 905
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSendingTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    const-string v1, "resumeSendingTransfer: FT not found in the cache."

    if-nez p1, :cond_0

    .line 908
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 912
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsResizable(Z)V

    .line 913
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContentUri(Landroid/net/Uri;)V

    .line 914
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p2

    if-nez p2, :cond_1

    .line 916
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 920
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 921
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p3

    if-nez p3, :cond_2

    instance-of p3, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz p3, :cond_2

    const-string p2, "resumeSendingTransfer: not registered"

    .line 922
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void

    .line 928
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 929
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 931
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 932
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 933
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method private synthetic lambda$sendFile$5(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    if-nez p1, :cond_0

    .line 850
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sendFile: Message not found in cache"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 853
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFile: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "sendFile: Session not found in the cache"

    .line 857
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 861
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 862
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v2, :cond_2

    const-string v1, "sendFile: not registered"

    .line 863
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void

    .line 871
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-nez p0, :cond_3

    .line 872
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 874
    :cond_3
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method private synthetic lambda$setAutoAcceptFt$10(II)V
    .locals 3

    .line 1002
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1005
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    .line 1008
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoAcceptFt: accept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDataRoaming(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDataRoaming(I)Z

    move-result p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    if-ne p2, v0, :cond_3

    move p1, v1

    .line 1013
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p2, :cond_4

    const-string v0, "AutoAcceptFileTransfer"

    .line 1014
    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 1015
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    const-string p2, "AutoAcceptFtInRoaming"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method private notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ft_fallback_directly_offline"

    .line 1174
    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1175
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1177
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    :goto_0
    return-void
.end method

.method private onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1212
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onNotifyCloudMsgFtEvent: session not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1216
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->notifyCloudMsgFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    return-void
.end method

.method private rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    .line 1225
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mIsSlmSvcMsg:Z

    if-eqz v0, :cond_0

    .line 1226
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 1228
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 556
    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v15, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda7;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p10

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p12

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)V

    invoke-direct {v0, v15}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v1, p0

    .line 818
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)Ljava/util/concurrent/Future;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v16, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    .line 599
    new-instance v0, Ljava/util/concurrent/FutureTask;

    move-object/from16 v17, v1

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v1, p0

    .line 709
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 1

    .line 982
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;",
            ">;"
        }
    .end annotation

    .line 1233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    return-object p0
.end method

.method protected handleFileResizeResponse(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 1

    .line 1113
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;ZLandroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleFileTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V
    .locals 4

    .line 1188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFileTransferProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 1191
    iget v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    goto :goto_0

    .line 1193
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1194
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1197
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->handleTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V

    goto :goto_1

    :cond_2
    const-string p0, "handleFileTransferProgress: cannot get FtMessage."

    .line 1199
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    if-eqz p0, :cond_1

    .line 136
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 137
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p0, p1, :cond_1

    .line 138
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CancelingState: Failed to reject transfer."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 115
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    return-void
.end method

.method protected notifyOngoingFtEvent(ZI)V
    .locals 1

    .line 1146
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ZI)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAutoResumeTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    .line 356
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    .line 418
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 419
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 405
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFtErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 2

    .line 454
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFtErrorReport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 457
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 459
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v1, :cond_0

    const-string p1, "onFtErrorReport : 403 forbidden w/o warning header"

    .line 460
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x193

    const-string v1, "Forbidden"

    invoke-direct {p1, v0, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string v0, "ft"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_0
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 1

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 536
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIncomingFileTransferReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1026
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingFileTransferReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingFileTransferReceived: conversationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imdnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSLM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1030
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    .line 1034
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;

    move-result-object v7

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingFileTransferReceived normalizedParticipants : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-gt v0, v6, :cond_1

    iget-boolean v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsConference:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    .line 1038
    :goto_1
    iget v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    if-eqz v0, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    .line 1040
    :goto_2
    iget-boolean v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    if-nez v0, :cond_4

    .line 1041
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    return-void

    .line 1045
    :cond_3
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;

    const/4 v13, 0x0

    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v8, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    move-object v12, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V

    .line 1049
    :cond_4
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-boolean v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-nez v1, :cond_6

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1050
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "participantbased_closed_groupchat"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v6

    .line 1049
    :goto_4
    invoke-virtual {v0, v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    .line 1053
    iget-object v12, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v14, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    sget-object v21, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move v13, v8

    move v15, v3

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-virtual/range {v12 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->findSession(ILjava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v12

    .line 1055
    iget-object v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v13

    .line 1056
    invoke-direct {v9, v12, v10, v13}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->findFileTransfer(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v14

    if-eqz v12, :cond_7

    move v15, v6

    goto :goto_5

    :cond_7
    move v15, v5

    :goto_5
    if-eqz v12, :cond_8

    .line 1058
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v16, v6

    goto :goto_6

    :cond_8
    move/from16 v16, v5

    :goto_6
    if-eqz v14, :cond_9

    move/from16 v17, v6

    goto :goto_7

    :cond_9
    move/from16 v17, v5

    :goto_7
    if-eqz v14, :cond_a

    .line 1059
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_a

    move/from16 v18, v6

    goto :goto_8

    :cond_a
    move/from16 v18, v5

    :goto_8
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v22, v2

    move-object/from16 v2, p1

    move/from16 v19, v4

    move v4, v15

    move v15, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    move-object v15, v7

    move/from16 v7, v19

    move/from16 v20, v8

    move/from16 v8, v18

    .line 1057
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->checkForRejectIncomingFileTransfer(ILcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;ZZZZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1062
    invoke-direct {v9, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    return-void

    :cond_b
    move/from16 v0, v19

    if-eqz v0, :cond_d

    .line 1066
    iget-boolean v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    if-eqz v1, :cond_d

    if-eqz v14, :cond_d

    const-string v1, "onIncomingFileTransferReceived, resume invite"

    .line 1067
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    if-lez v1, :cond_c

    add-int/lit8 v5, v1, -0x1

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v14, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setTransferredBytes(I)V

    :cond_d
    if-nez v12, :cond_e

    const-string v1, "onIncomingFileTransferReceived: Session not found by participants."

    .line 1075
    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    move-object/from16 v3, v22

    invoke-virtual {v1, v2, v15, v3, v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v12

    .line 1080
    :cond_e
    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 1081
    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    if-eqz v14, :cond_f

    .line 1085
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1086
    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1087
    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    goto :goto_a

    .line 1089
    :cond_f
    iget-boolean v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    if-eqz v1, :cond_10

    .line 1090
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    iget-object v5, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    iget-object v6, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 1091
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    move/from16 v8, v20

    .line 1090
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v1

    iput-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1092
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-ne v1, v2, :cond_10

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1093
    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    iput-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1096
    :cond_10
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    invoke-virtual {v1, v2, v12, v10, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v14

    .line 1098
    :goto_a
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1099
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 1101
    :cond_11
    invoke-virtual {v12, v14, v10, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    .line 1102
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    iget-object v3, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public onRequestChatType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onRequestCompleteCallback(Ljava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getFtCompleteCallback()Landroid/os/Message;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/internal/helper/FilePathGenerator;->getFileDownloadPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRequestParticipantUris(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 522
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public onRequestRegistrationType()Ljava/lang/Integer;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onRequestRegistrationType()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    .line 432
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GATE"

    const-string v1, "<GATE-M>MMS_ERROR</GATE-M>"

    .line 309
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_3

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 315
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-nez p1, :cond_4

    .line 320
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onTransferCanceled: session not found in the cache."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v0

    if-nez v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionClosed(I)V

    :cond_5
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 262
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v3, "display_ft_in_gallery"

    .line 263
    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v3, "video"

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update gallery app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setCountReconfiguration(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->removeReconfigurationEvent()V

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 277
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 280
    :cond_4
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-nez v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    if-eqz v0, :cond_5

    .line 283
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result p1

    if-nez p1, :cond_5

    .line 284
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionClosed(I)V

    :cond_5
    return-void
.end method

.method public onTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    :cond_0
    return-void

    .line 198
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 199
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 200
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTransferInProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 338
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionEstablished(I)V

    :cond_1
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 228
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferProgressReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 234
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 212
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileTransferReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 215
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 4

    .line 151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsOngoingFtListener phoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasProcessingFileTransfer()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyOngoingFtEvent(ZI)V

    return-void

    :cond_1
    :try_start_1
    const-string p0, "no registerImsOngoingFtListener and not work"

    .line 160
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    .line 163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 1

    .line 885
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 944
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 1

    .line 904
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;ZLandroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected sendFile(J)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    .line 829
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method protected sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    .line 848
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected sendFile(Ljava/lang/String;)V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 839
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method protected setAutoAcceptFt(II)V
    .locals 1

    .line 1000
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;II)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 3

    .line 168
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImsOngoingListener phoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 176
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
