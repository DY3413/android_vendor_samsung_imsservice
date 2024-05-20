.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
.super Landroid/os/Handler;
.source "ImSessionProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;


# static fields
.field private static final EVENT_RESET_INCOMING_SESSION_FOR_A2P:I = 0x2

.field private static final EVENT_VOLUNTARY_DEPARTURE_GROUPCHAT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field protected final mChatEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

.field private final mGroupChatsForDeparture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private final mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mImSessionListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/im/IImSessionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;


# direct methods
.method public static synthetic $r8$lambda$1CNjDmNHNIMLPGEcnCcWKfn0deg(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$ignoreIncomingMsgSet$14(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$1jxKhoR8Un3xndBhS3svksT58tU(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$changeGroupChatIcon$8(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1t5J2hP7GA0klhSuh8wpuzpZqZE(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$createChat$3(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$40TKfsd0lr-_ZyEQdGB7U0HEt5M(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$onComposingNotificationReceived$1(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5988lkUapufcRn5qWC81jyAheF8(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$addParticipants$4(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$785MpzuflhpPrlWnabRfuxDLhCQ(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$openChat$17(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8jOaTTZ9gqtHifXaCtRa98AEbew(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$notifyImSessionEstablished$22(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9T4vc0i1Ge6sS4CC5_67zl6plkM(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$sendComposingNotification$15(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ew_5Y-M6AqUhC1j-k_0x5ospVM8(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$onImdnNotificationReceived$0(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IolnNRNTYQ6c-JXn1e0MKl2w1Z0(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$receiveDeliveryTimeout$24(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LRVLaCHkjV2KQD6FvytNAKhNxGI(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$onIncomingSessionReceived$21(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mq1aSFR2LC-nhjWMctTI7XEM3So(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$acceptChat$16(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rf6trM93IDsudcXB_onjwQc-9jE(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$changeGroupChatLeader$6(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQE4Rs8jv_5zUnEtwnOiPxQkVaQ(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$deleteChats$10(Ljava/util/List;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V9A9I6ggeAiG5cCzFUAlB11LbsE(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$changeGroupChatSubject$7(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XcIs8MAto_fiCCZflmY0XMrbWz0(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$getComposingActiveUris$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRp6Q5-Xauk0VKRVvFXFY-uYRng(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$closeChat$19(Ljava/util/List;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCeGLt7veNKL0Mvt2maM97j7SEM(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$deleteChatsForUnsubscribe$11()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dee-hHC9JPsyL7jZ9-b5sSlWU3A(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$closeChat$18(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZa4AiSx3p25vAv2_MkH-NVrMjk(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$changeGroupAlias$9(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f6pCxEYNK-EErbSXzSA4ViLE638(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$notifyImSessionClosed$23(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fturNk6bPowY0Oun6BXKts3hSvA(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$processRejoinGCSession$20(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8huKxK8a3NT1ASJfxz4q8rS7ns(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$deleteAllChats$12()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oXcTqF9Osjl6Zmwr-0XCBXdEoA8(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$answerGcSession$13(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmmfZmBgg5xFcSWr2ERd1yPwWBE(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$removeParticipants$5(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 1

    .line 114
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 117
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 118
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 119
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 120
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    .line 121
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    invoke-direct {p2, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    .line 122
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    return-void
.end method

.method private checkForRejectIncomingSession(IZZ)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 2

    .line 2176
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "check_msgapp_imsession_reject"

    .line 2178
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2179
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkForRejectIncomingSession: default message app is not samsung"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object p0

    .line 2183
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkMainSwitchOff(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2184
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkForRejectIncomingSession: main Switch Off"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 2185
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    :goto_0
    return-object p0

    :cond_2
    if-eqz p3, :cond_3

    .line 2188
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    const-string p3, "participantbased_closed_groupchat"

    invoke-interface {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2191
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkForRejectIncomingSession: group chat type mismatched"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object p0

    .line 2196
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "auth_based_session_control"

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2197
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result p0

    if-nez p0, :cond_4

    .line 2198
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "GroupChatAuth is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private closeChatInternal(Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1440
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeChatInternal: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1444
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1446
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Session not found in the cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1448
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1451
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1452
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    const v4, 0x4000000a    # 2.0000024f

    .line 1453
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 1455
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    if-eqz v3, :cond_2

    .line 1456
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 1458
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    .line 1460
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1461
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1463
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_2

    .line 1466
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1468
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_1

    .line 1470
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1471
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleVoluntaryDeparture(Ljava/util/List;Z)V

    :cond_7
    return-void
.end method

.method private handleVoluntaryDeparture(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1980
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1981
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1982
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1983
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEmptySession()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 1988
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsReusable(Z)V

    .line 1989
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 1990
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isOwnNumberChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_0

    .line 1992
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 1994
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1995
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1996
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_0

    .line 1998
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2001
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2002
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2003
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2005
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_0

    .line 2010
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2011
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventVoluntaryDeparture()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$acceptChat$16(Ljava/lang/String;ZI)V
    .locals 3

    .line 1360
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptChat: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isAccept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "acceptChat: Session not found in the cache"

    .line 1363
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1367
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 1373
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    goto :goto_0

    .line 1375
    :cond_2
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$addParticipants$4(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$answerGcSession$13(Ljava/lang/String;Z)V
    .locals 4

    .line 1278
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "answerSession: %s %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1285
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    goto :goto_0

    .line 1287
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$changeGroupAlias$9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeGroupChatIcon$8(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupChatIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$changeGroupChatLeader$6(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1117
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$changeGroupChatSubject$7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$closeChat$18(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1418
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChatInternal(Ljava/util/List;ZZ)V

    return-void
.end method

.method private synthetic lambda$closeChat$19(Ljava/util/List;ZZ)V
    .locals 0

    .line 1429
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChatInternal(Ljava/util/List;ZZ)V

    return-void
.end method

.method private synthetic lambda$createChat$3(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v2, p7

    move/from16 v15, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    .line 959
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createChat: participants="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", subject="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", sdpContentType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", threadId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", requestMessageId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", isBroadcastChat="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isClosedGC="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", iconName="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", iconUri="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", isTokenUsed="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isTokenLink="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", conversationId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", contributionId="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p14

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", sessionUri="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p15

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 959
    invoke-static {v7, v1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v10

    .line 967
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v11, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v11

    const/16 v16, 0x0

    if-nez v11, :cond_1

    .line 968
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v11

    const-string v12, "pending_for_regi"

    invoke-interface {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 969
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 970
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, v1, v8, v3, v9}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v16

    .line 975
    :cond_1
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11, v1, v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 979
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto/16 :goto_c

    .line 988
    :cond_2
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_4

    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v12, v13

    :goto_2
    if-nez v2, :cond_6

    if-eqz v12, :cond_6

    .line 992
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v13, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v13

    if-nez v13, :cond_6

    const-string v2, "GroupChat is disabled. getGroupChatEnabled=false"

    .line 993
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 995
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, v1, v8, v3, v9}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-object v16

    :cond_6
    if-eqz v12, :cond_9

    if-eqz v4, :cond_9

    .line 1002
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v13, v3, v4}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1004
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v2, "icon file doesn\'t exist"

    .line 1005
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 1007
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, v1, v8, v3, v9}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    return-object v16

    :cond_8
    move-object v13, v3

    goto :goto_5

    :cond_9
    move-object/from16 v13, v16

    .line 1014
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    if-eqz v15, :cond_a

    const-string v3, "participantbased_closed_groupchat"

    .line 1017
    invoke-interface {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 1016
    :goto_6
    invoke-virtual {v0, v12, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    .line 1019
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v5, :cond_b

    if-nez v6, :cond_b

    .line 1022
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    :cond_b
    move-object v6, v2

    if-eqz v12, :cond_c

    .line 1035
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v3, v2, :cond_d

    .line 1036
    :cond_c
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v11, v3, v10, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v16

    :cond_d
    if-nez v12, :cond_10

    if-nez v16, :cond_10

    .line 1040
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v11, v10, v5, v2}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 1041
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    move-object/from16 p2, v3

    if-eqz v5, :cond_e

    .line 1044
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    move-object/from16 p9, v4

    const/4 v4, 0x1

    if-ge v3, v4, :cond_f

    .line 1045
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    move-object/from16 v17, v6

    .line 1047
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move/from16 v18, v12

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v6, v2, v12, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    .line 1048
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "createChat() : error, participant table is empty"

    .line 1050
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v0, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    goto :goto_7

    :cond_e
    move-object/from16 p9, v4

    :cond_f
    move-object/from16 v17, v6

    move/from16 v18, v12

    goto :goto_7

    :cond_10
    move-object/from16 p2, v3

    move-object/from16 p9, v4

    move-object/from16 v17, v6

    move/from16 v18, v12

    move-object/from16 v5, v16

    :goto_7
    if-nez v5, :cond_11

    .line 1056
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v16, p2

    move-object v3, v10

    move-object/from16 v12, p9

    move-object v4, v11

    move-object/from16 v5, v16

    move-object/from16 v11, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, v13

    move-object v13, v12

    move/from16 v17, v18

    move-object/from16 v12, p13

    move-object v1, v13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-virtual/range {v2 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    goto :goto_8

    :cond_11
    move-object/from16 v16, p2

    move-object/from16 v2, p3

    move-object/from16 v1, p9

    move/from16 v17, v18

    .line 1059
    invoke-virtual {v5, v8, v9, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->restartSession(ILjava/lang/String;Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v2, "start_session_when_create_groupchat"

    .line 1062
    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1063
    invoke-static/range {v16 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1064
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 1067
    :cond_12
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 1068
    invoke-interface {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatSucceeded(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_9

    .line 1071
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v17, :cond_14

    move-object v3, v1

    goto :goto_a

    :cond_14
    move-object v3, v2

    .line 1073
    :goto_a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_15

    goto :goto_b

    :cond_15
    move-object v1, v2

    .line 1074
    :goto_b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x40000009    # 2.0000021f

    .line 1075
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p1

    invoke-static {v1, v3, v2, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    return-object v5

    :cond_16
    :goto_c
    move v3, v1

    const-string v1, "createChat: normalizedParticipants is null or empty"

    .line 980
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 982
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v1, v3, v8, v2, v9}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    return-object v16
.end method

.method private synthetic lambda$deleteAllChats$12()Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1251
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteAllChats"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1254
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 1255
    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 1256
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v3

    .line 1258
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteChats, stateId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 1263
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$deleteChats$10(Ljava/util/List;Z)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteChats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V

    .line 1172
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1175
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1176
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v2

    .line 1178
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1179
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1180
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1181
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1185
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1188
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1189
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1192
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v2

    .line 1193
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    .line 1194
    invoke-static {v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string/jumbo v5, "wait_deactvaing_delete_chat"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    .line 1195
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteChats, stateId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x4000000b    # 2.0000026f

    .line 1196
    invoke-static {v5, v3, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 1197
    invoke-static {v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-nez v4, :cond_2

    .line 1201
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1202
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_2

    .line 1207
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1208
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleVoluntaryDeparture(Ljava/util/List;Z)V

    .line 1210
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$deleteChatsForUnsubscribe$11()Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1224
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteChatsForUnsubscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionByChatType(Z)V

    .line 1226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v1, :cond_0

    .line 1227
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v2, v3, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 1229
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1230
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 1231
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    goto :goto_0

    .line 1235
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getComposingActiveUris$2(Ljava/lang/String;)V
    .locals 3

    .line 299
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getComposingActiveUris: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Session not found in the cache."

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyComposingActiveUris(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyComposingActiveUris(Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$ignoreIncomingMsgSet$14(Ljava/lang/String;Z)V
    .locals 3

    .line 1320
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreIncomingMsgSet: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isIgnore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1325
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 1327
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsMuted(Z)V

    .line 1328
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onIgnoreIncomingMsgSetResponse(Ljava/lang/String;Z)V

    return-void

    .line 1332
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onIgnoreIncomingMsgSetResponse(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$notifyImSessionClosed$23(I)V
    .locals 2

    .line 1882
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImSessionClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->doPendingUpdateRegistration()V

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 1888
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    const/4 v0, 0x0

    .line 1890
    :try_start_0
    invoke-interface {p1, v0}, Lcom/sec/ims/im/IImSessionListener;->onImSessionEstablished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1892
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notifyImSessionClosed failed to send IImSessionListener.onImSessionEstablished"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$notifyImSessionEstablished$22(I)V
    .locals 2

    .line 1861
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImSessionEstablished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 1864
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    const/4 v0, 0x1

    .line 1866
    :try_start_0
    invoke-interface {p1, v0}, Lcom/sec/ims/im/IImSessionListener;->onImSessionEstablished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1868
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notifyImSessionEstablished failed to send IImSessionListener.onImSessionEstablished"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onComposingNotificationReceived$1(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    return-void
.end method

.method private synthetic lambda$onImdnNotificationReceived$0(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onCanceledNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    return-void
.end method

.method private synthetic lambda$onIncomingSessionReceived$21(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1593
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->acquireWakeLock(Ljava/lang/Object;)V

    .line 1596
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    return-void

    .line 1600
    :cond_0
    sget-object v12, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingSessionReceived: convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1603
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v13

    .line 1604
    invoke-static {v13}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1606
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1607
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    invoke-virtual {v11, v13, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;

    move-result-object v14

    .line 1609
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v15, 0x0

    if-gt v2, v4, :cond_3

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    move v10, v15

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v4

    .line 1611
    :goto_2
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsClosedGroupChat:Z

    invoke-direct {v11, v13, v10, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->checkForRejectIncomingSession(IZZ)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v1, "onIncomingSessionReceived: reject"

    .line 1613
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-direct {v4, v3, v5, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 1615
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    return-void

    .line 1619
    :cond_4
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsClosedGroupChat:Z

    if-eqz v2, :cond_5

    const-string v2, "participantbased_closed_groupchat"

    .line 1620
    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v4, v15

    .line 1619
    :goto_3
    invoke-virtual {v11, v10, v4, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v9

    .line 1622
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v13, v2, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mFromBlocked:Z

    .line 1623
    monitor-enter p0

    .line 1624
    :try_start_0
    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mPrevContributionId:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1625
    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    :goto_4
    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move v2, v13

    move v4, v10

    move-object v5, v9

    move-object/from16 v17, v9

    move-object v9, v14

    move/from16 v18, v10

    move-object/from16 v10, v16

    .line 1624
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->findSession(ILjava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1627
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {v2, v1, v14}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->updateParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Set;)V

    if-nez v1, :cond_9

    .line 1630
    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    if-eqz v1, :cond_7

    const-string v1, "onIncomingSessionReceived: no session. accept rcse-standfw invite"

    .line 1631
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    const/4 v3, 0x0

    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v13, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLandroid/os/Message;)V

    .line 1634
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    .line 1636
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    .line 1637
    monitor-exit p0

    return-void

    :cond_7
    const-string v1, "onIncomingSessionReceived: Make new incoming session."

    .line 1641
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    :goto_5
    move-object/from16 v3, v17

    invoke-virtual {v1, v0, v14, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1644
    invoke-static {v13}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string v3, "check_initiator_sessionuri"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v18, :cond_9

    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1645
    invoke-virtual {v2, v13, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    iget-object v3, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v13, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1646
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 1650
    :cond_9
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    iget-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    iget-boolean v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    invoke-virtual {v2, v13, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dumpIncomingSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;ZZ)V

    .line 1652
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v18, :cond_a

    .line 1653
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitiatorAlias(Ljava/lang/String;)V

    :cond_a
    if-eqz v18, :cond_b

    .line 1657
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v13, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitiator(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_6

    .line 1658
    :cond_b
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    if-eqz v2, :cond_c

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingSessionReceived: event.mIsChatbotRole=true, event.mInitiator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1660
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1659
    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->removeUriParametersAndHeaders(Lcom/sec/ims/util/ImsUri;)V

    .line 1662
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitiator(Lcom/sec/ims/util/ImsUri;)V

    .line 1663
    invoke-static {v13}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string v3, "delay_to_deregi_for_a2p_session"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c

    .line 1665
    invoke-direct {v11, v13, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->processIncomingSessionForA2P(II)V

    .line 1669
    :cond_c
    :goto_6
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setIsTokenUsed(Z)V

    .line 1670
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDeviceId(Ljava/lang/String;)V

    .line 1671
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-nez v2, :cond_d

    .line 1672
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgFallbackSupported:Z

    iget-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgRevokeSupported:Z

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNetworkFallbackMech(ZZ)V

    .line 1673
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptTypes:Ljava/util/List;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    .line 1674
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptWrappedTypes:Ljava/util/List;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    .line 1676
    :cond_d
    iget-boolean v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 1678
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 1680
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    if-eqz v1, :cond_e

    .line 1681
    iget-object v2, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 1684
    :cond_e
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->releaseWakeLock(Ljava/lang/Object;)V

    .line 1685
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$openChat$17(Ljava/lang/String;Z)V
    .locals 3

    .line 1390
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openChat: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", has Invitation UI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "openChat: Session not found in the cache"

    .line 1394
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1398
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1403
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImSessionStart()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    if-ne p0, v0, :cond_2

    if-nez p2, :cond_2

    const/4 p0, 0x0

    .line 1405
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$processRejoinGCSession$20(Ljava/util/List;ILjava/lang/String;)V
    .locals 2

    .line 1496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1497
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1500
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processRejoinGCSession()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$receiveDeliveryTimeout$24(Ljava/lang/String;)V
    .locals 0

    .line 1929
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1931
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "receiveDeliveryTimeout session not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1934
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveDeliveryTimeout()V

    return-void
.end method

.method private synthetic lambda$removeParticipants$5(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1105
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->removeParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$sendComposingNotification$15(Ljava/lang/String;IZ)V
    .locals 0

    .line 1346
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->sendComposingNotification(Ljava/lang/String;IZ)V

    return-void
.end method

.method private makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")V"
        }
    .end annotation

    .line 1946
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1947
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1948
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ";"

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1949
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 1950
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_1

    .line 1952
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    .line 1954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1957
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1960
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1963
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1964
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v2, p1, v4, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    goto :goto_1

    .line 1966
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1967
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    :cond_4
    return-void
.end method

.method private processIncomingSessionForA2P(II)V
    .locals 4

    .line 2241
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIncomingSessionForA2P: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2244
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2245
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 2246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected acceptChat(Ljava/lang/String;ZI)V
    .locals 1

    .line 1359
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected addParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1092
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected answerGcSession(Ljava/lang/String;Z)V
    .locals 1

    .line 1277
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected cancelMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1309
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->cancelMessages(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1146
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda23;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1134
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1116
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1128
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected closeChat(Ljava/lang/String;)V
    .locals 1

    .line 1416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda18;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected closeChat(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1429
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ZZ)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZ)Ljava/util/concurrent/Future;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 933
    invoke-virtual/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 958
    new-instance v0, Ljava/util/concurrent/FutureTask;

    move-object/from16 v17, v1

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda17;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda17;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v1, p0

    .line 1080
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 910
    invoke-virtual/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected deleteAllChats()Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1250
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda19;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1265
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1164
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1212
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1223
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1237
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected findSession(ILjava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 2210
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_0

    .line 2213
    iget-object p9, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 v0, 0x0

    invoke-virtual {p9, p2, p5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-nez p5, :cond_2

    .line 2217
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object p1

    sget-object p5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne p1, p5, :cond_1

    .line 2218
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1, p2, p7, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p5

    goto :goto_1

    .line 2220
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1, p2, p6, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p5

    :cond_2
    :goto_1
    if-nez p5, :cond_4

    .line 2229
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p4, p1, :cond_4

    .line 2230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {p0, p8, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p5

    goto :goto_2

    .line 2235
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {p0, p8, p1, p2, p9}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p5

    :cond_4
    :goto_2
    return-object p5
.end method

.method protected generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 0

    if-eqz p3, :cond_0

    .line 2163
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2166
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 2169
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0

    .line 2171
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0
.end method

.method protected getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;
    .locals 0

    .line 2117
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    return-object p0
.end method

.method protected getChatEventListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;",
            ">;"
        }
    .end annotation

    .line 2146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    return-object p0
.end method

.method public getComposingActiveUris(Ljava/lang/String;)V
    .locals 1

    .line 298
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V

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

    .line 2158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;
    .locals 0

    .line 2150
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    return-object p0
.end method

.method protected getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 1754
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method protected getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;",
            ">;"
        }
    .end annotation

    .line 2154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    .line 1710
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1712
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeOwnNumberFromParticipants(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;I)V

    return-object p2
.end method

.method protected handleEventBlocklistChanged()V
    .locals 5

    .line 2054
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEventBlocklistChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 2056
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2057
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2058
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2060
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2061
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2062
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDetailedState()Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne v2, v3, :cond_0

    .line 2063
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleEventVoluntaryDeparture()V
    .locals 7

    .line 2020
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventVoluntaryDeparture: mGroupChatsForDeparture size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "max_sipinvite_atonce"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 2026
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2027
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/CollectionUtils;->partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$Partition;->get(I)Ljava/util/List;

    move-result-object v0

    .line 2028
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2029
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_0

    .line 2031
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2032
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 2033
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x3e8

    .line 2034
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 2037
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2038
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2039
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_1

    .line 2041
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 2042
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    goto :goto_2

    .line 2046
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6
    :goto_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 153
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RESET_INCOMING_SESSION_FOR_A2P: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventVoluntaryDeparture()V

    :goto_0
    return-void
.end method

.method protected hasEstablishedSession()Z
    .locals 3

    .line 1911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1913
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isEstablishedSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1917
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasEstablishedSession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected ignoreIncomingMsgSet(Ljava/lang/String;Z)V
    .locals 1

    .line 1319
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected init(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 8

    .line 126
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 127
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 128
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 129
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    .line 130
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p1, p2, v0, p0, p3}, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGcmHandler:Lcom/sec/internal/ims/servicemodules/im/GcmHandler;

    return-void
.end method

.method protected isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 1

    .line 2111
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    .line 2112
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string v0, "onekey_report_psi"

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->stringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2113
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyImSessionClosed(I)V
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isEstablishedSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda21;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected notifyImSessionEstablished(I)V
    .locals 1

    .line 1859
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isEstablishedSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1860
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v1

    .line 344
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAddParticipantsFailed: chatId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", convId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", contId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x4000000e    # 2.0000033f

    .line 350
    invoke-static {v2, v1, p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 352
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 353
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddParticipantsSucceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 323
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBlockedMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1

    .line 536
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 537
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 520
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 521
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatIconFailed: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 505
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 506
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatIconSuccess: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 489
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 490
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 429
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 412
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 413
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatSubjectFailed: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subject="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 476
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeGroupChatSubjectSucceeded: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subject="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 452
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onChatClosed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 4

    .line 200
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 202
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 206
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionClosed(I)V

    return-void
.end method

.method public onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3

    if-nez p1, :cond_0

    .line 219
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onChatDeparted : invalid ImSession"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChatDeparted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isReusable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 228
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mGroupChatsForDeparture:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChatEstablished(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 170
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    iget-object v7, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatEstablished(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionEstablished(I)V

    return-void
.end method

.method public onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 3

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 186
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatUpdateState(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChatSubjectUpdated: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subject="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 827
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 828
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 8

    .line 253
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyComposingReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isComposing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 255
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 3

    .line 1525
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceInfoUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "onConferenceInfoUpdated: Session not found."

    .line 1528
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v1, v2, :cond_1

    const-string p0, "onConferenceInfoUpdated: ignore the event."

    .line 1531
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1534
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveConferenceInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    :goto_0
    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 4

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGroupChatIconDeleted: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 855
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 856
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onGroupChatIconDeleted(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 4

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGroupChatIconUpdated: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 842
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 696
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderChanged: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", leader= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 703
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onGroupChatLeaderUpdated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGroupChatLeaderInformed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 3

    .line 716
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderInformed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-void
.end method

.method public onImErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)V
    .locals 4

    .line 772
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImErrorReport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 775
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x40000016    # 2.0000052f

    const-string v3, "none"

    .line 778
    invoke-static {v2, p2, v3, v1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    if-eqz p0, :cond_2

    .line 780
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const-string v1, "im"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onImErrorReport : 403 forbidden service not authorised"

    .line 786
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    goto :goto_0

    :cond_1
    const-string p1, "onImErrorReport : 403 forbidden no warning header, try re-regi"

    .line 782
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_2
    :goto_0
    return-void
.end method

.method protected onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 2

    .line 266
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_0

    .line 272
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda15;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    :goto_0
    return-void
.end method

.method public onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 756
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a message in INVITE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    .line 759
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    :cond_0
    return-void
.end method

.method public onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Z)V
    .locals 3

    .line 730
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionProcessed, need to notify?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 733
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiatorAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 746
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 747
    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChatInvitationReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_1

    .line 751
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method protected onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 2

    .line 1592
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1686
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onIncomingSlmLMMSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;)V
    .locals 9

    .line 1695
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSlmLMMSessionReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1698
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mIsGroup:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1699
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V

    invoke-interface {p0, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    goto :goto_0

    .line 1701
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V

    :goto_0
    return-void
.end method

.method public onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ")V"
        }
    .end annotation

    .line 2132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method protected onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1792
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onMessageSendingFailed: msg is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1795
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1796
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p3, "onMessageSendingFailed: temporary message."

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 1798
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    goto :goto_0

    .line 1800
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    return-void

    .line 1803
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 1805
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1806
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 1805
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRegistrationType(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 1806
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1807
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed: engine error and deregistered. fallback to legacy."

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 1811
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v1, v2, :cond_4

    .line 1812
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    invoke-interface {v1, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    :cond_4
    if-nez v0, :cond_5

    .line 1816
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onMessageSendingFailed: session not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1820
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    .line 1821
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v0

    move-object v5, p3

    .line 1820
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dumpMessageSendingFailed(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1824
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 1825
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgImdnId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1829
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "GATE"

    const-string v2, "<GATE-M>MMS_ERROR</GATE-M>"

    .line 1831
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageSendingFailed: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", imdnId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "result="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8

    .line 1836
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", required_action="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1834
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1838
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    const-string v1, ", result="

    const-string v2, ", strategy="

    if-eqz v0, :cond_9

    .line 1839
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageSendingFailed ImMessage: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 1841
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    goto :goto_2

    .line 1843
    :cond_9
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_a

    .line 1844
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageSendingFailed FtMessage: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 1846
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    goto :goto_3

    .line 1850
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    return-void
.end method

.method protected onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4

    .line 1758
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1760
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1762
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onMessageSendingSucceeded: session not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1765
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageSendingSucceeded: type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1765
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1769
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 1771
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void

    .line 1776
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 1777
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 1779
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1780
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    return-void

    .line 1783
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-eq v1, v2, :cond_5

    .line 1784
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->removeFromPendingListWithDelay(I)V

    .line 1787
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sentMessageForCloudSync(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 610
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsAdded: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", participants= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 613
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 616
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 633
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsJoined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsJoined: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", participants= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 636
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 638
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 639
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 680
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsKickedOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsKickedOut: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", participants= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 685
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 686
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 656
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyParticipantsLeft: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", participants= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)V

    .line 661
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 662
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 1

    .line 871
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 872
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 593
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsDeleted: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", participants= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteParticipant(Ljava/util/Collection;)V

    .line 597
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deleteParticipant(Ljava/util/Collection;)V

    return-void
.end method

.method public onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 554
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsInserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParticipantsInserted: chatId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 557
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addParticipant(Ljava/util/Collection;)V

    .line 558
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addParticipant(Ljava/util/Collection;)V

    return-void
.end method

.method public onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 574
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantsUpdated: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", participants= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 575
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;)V

    return-void
.end method

.method public onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 805
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasProcessingFileTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 806
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyOngoingFtEvent(ZI)V

    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v1

    .line 389
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoveParticipantsFailed: chatId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", convId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", contId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x4000000f    # 2.0000036f

    .line 395
    invoke-static {v2, v1, p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 398
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 368
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestSendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public onSendCanceledNotificationDone(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2252
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V

    return-void
.end method

.method protected onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 4

    .line 1565
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    goto :goto_0

    .line 1570
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string p0, "onSessionClosed: Session not found."

    .line 1573
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1575
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionClosed: chatId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", convId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1578
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x40000014    # 2.0000048f

    .line 1580
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    invoke-static {v0, v2, v3, p0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 1582
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    :goto_1
    return-void
.end method

.method protected onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 4

    .line 1544
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionEstablished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    const-string p0, "onSessionEstablished: Session not found."

    .line 1549
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1551
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionEstablished: chatId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", convId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "none"

    :goto_0
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    const p0, 0x40000010    # 2.0000038f

    .line 1555
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mChatId:Ljava/lang/String;

    invoke-static {p0, v0, p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public openChat(Ljava/lang/String;Z)V
    .locals 1

    .line 1389
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected processRejoinGCSession(I)V
    .locals 9

    .line 1480
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1482
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 1484
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1487
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoRejoinSession()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1488
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "max_sipinvite_atonce"

    .line 1491
    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    .line 1492
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rejoinSession: list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    .line 1494
    invoke-static {v2, v0}, Lcom/sec/internal/helper/CollectionUtils;->partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1495
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, v3, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ILjava/lang/String;)V

    const-wide/16 v5, 0x3e8

    add-int/lit8 v3, v2, 0x1

    int-to-long v7, v2

    mul-long/2addr v7, v5

    invoke-virtual {p0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v3

    goto :goto_1

    .line 1507
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1508
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 1511
    :cond_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1512
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processRejoinGCSession()V

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected readMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1301
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method protected readMessages(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImdnHandler:Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method protected receiveDeliveryTimeout(Ljava/lang/String;)V
    .locals 1

    .line 1928
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 3

    .line 2076
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImSessionListener phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 2078
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2083
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionEstablished(I)V

    return-void

    :cond_2
    const-string p0, "no registerImSessionListener and not work"

    .line 2086
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeFromRevokingMessages(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->removeFromRevokingMessages(Ljava/util/Collection;)V

    return-void
.end method

.method protected removeOwnNumberFromParticipants(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            "I)V"
        }
    .end annotation

    .line 1725
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOwnNumberFromParticipants participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1727
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1729
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1737
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1740
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_2

    .line 1741
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method protected removeParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1104
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda24;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendComposingNotification(Ljava/lang/String;IZ)V
    .locals 1

    .line 1345
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V
    .locals 0

    .line 2122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImRevocationHandler:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    return-void
.end method

.method protected unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 3

    .line 2097
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImSessionListener phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mImSessionListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 2100
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
