.class public Lcom/sec/internal/ims/servicemodules/im/ImSession;
.super Lcom/sec/internal/helper/StateMachine;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;,
        Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    }
.end annotation


# static fields
.field protected static final CLOSE_SESSION_TIMEOUT_TIMER:J = 0x2bf20L

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:J = 0xbb8L

.field protected static final DEFER_WITHOUT_STARTSESSION:I = 0x0

.field protected static final DEFER_WITH_STARTSESSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImSession"

.field private static final MESSAGE_REVOKE_OPERATION_TIME:I = 0x2710

.field private static final REQUEST_THRESHOLD_TIME:I = 0x1388

.field private static final SEND_MESSAGE_THRESHOLD_TIME:I = 0x12c


# instance fields
.field protected final mAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

.field private mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field private final mChatId:Ljava/lang/String;

.field protected mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

.field protected mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field protected final mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

.field private final mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

.field private final mComposingActiveUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field protected mComposingNotificationInterval:I

.field private mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

.field protected final mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field protected final mCurrentCanceledMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCurrentMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

.field private final mDetailedStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/helper/IState;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field protected final mEstablishedImSessionInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

.field protected final mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

.field protected final mImSessionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field protected mInProgressRequestCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mInReplyToContributionId:Ljava/lang/String;

.field protected mIncomingMessageEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

.field private mInitiator:Lcom/sec/ims/util/ImsUri;

.field private mInitiatorAlias:Ljava/lang/String;

.field protected mIsBlockedIncomingSession:Z

.field protected mIsComposing:Z

.field protected mIsOfflineGCInvitation:Z

.field protected mIsRevokeTimerRunning:Z

.field private mIsTimerExpired:Z

.field private mIsTokenUsed:Z

.field protected mLeaderParticipant:Ljava/lang/String;

.field protected final mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

.field protected final mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedToRevokeMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnImsi:Ljava/lang/String;

.field protected final mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingFileTransfer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field protected final mProcessingFileTransfer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRawHandle:Ljava/lang/Object;

.field protected mRemoteAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemoteAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestMessageId:Ljava/lang/String;

.field protected mRetryTimer:I

.field private mSdpContentType:Ljava/lang/String;

.field private mSendMessageResponseTimeout:I

.field private final mServiceId:Ljava/lang/String;

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field protected final mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

.field protected mSupportedFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;"
        }
    .end annotation
.end field

.field protected mSwapUriType:Z

.field private mThreadId:I

.field protected mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$HqnWaTP92nPSssNeg-ZMJMGey-w(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->lambda$processPendingFtHttp$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tNEBqd78JL2satpAkfFQdaUEHoA(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->lambda$processPendingNotifications$1(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImSession#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    .line 114
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    .line 115
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    .line 120
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentCanceledMessages:Ljava/util/List;

    .line 130
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    const/4 v3, -0x1

    .line 133
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    .line 147
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    const-string v3, ""

    .line 148
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    .line 149
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 151
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    const/16 v3, 0x78

    .line 162
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    .line 168
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 172
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    .line 184
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 185
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 186
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 187
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 188
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 190
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v3, :cond_1

    .line 191
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    goto :goto_1

    .line 193
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnNumber:Ljava/lang/String;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnGroupAlias:Ljava/lang/String;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSubject:Ljava/lang/String;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConversationId:Ljava/lang/String;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mContributionId:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnIMSI:Ljava/lang/String;

    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mIconPath:Ljava/lang/String;

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    move-object/from16 v16, v4

    move-object v4, v3

    invoke-direct/range {v4 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 198
    :goto_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    .line 199
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 201
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v3, :cond_2

    .line 202
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 203
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v5, v6, v7, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 206
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 207
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v5, v6, v7, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 211
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 212
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSdpContentType:Ljava/lang/String;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    .line 213
    iget v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mThreadId:I

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    .line 214
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRequestMessageId:Ljava/lang/String;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    .line 215
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRawHandle:Ljava/lang/Object;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    .line 216
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    .line 218
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string v3, "sendmsg_resp_timeout"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSendMessageResponseTimeout:I

    .line 219
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mServiceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    .line 220
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptTypes:Ljava/util/List;

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    .line 221
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptWrappedTypes:Ljava/util/List;

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    .line 222
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/helper/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 229
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    .line 230
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    .line 231
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    .line 232
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    .line 233
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    .line 234
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    const/4 v1, 0x0

    .line 235
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->initState()V

    return-void
.end method

.method private addPendingRevocationMessage(Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2546
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne p0, v0, :cond_0

    .line 2547
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private cancelInProgressChatMsg(Lcom/sec/internal/ims/servicemodules/im/ImMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 2

    .line 1834
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    .line 1835
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p3, v0, :cond_3

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelInProgressChatMsg : mark msg failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1839
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "cancelInProgressChatMsg : no fallback in case of chatbots"

    .line 1840
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1841
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, p3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 1844
    :cond_1
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 1848
    :cond_2
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, p3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private cancelInProgressFTInComingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 0

    .line 1855
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 1856
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cancelInProgressFTInComingMsg : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1857
    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsWifiUsed:Z

    if-eqz p0, :cond_0

    .line 1858
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1860
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelInProgressFTOutGoingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 2

    .line 1867
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1868
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cancelInProgressFTOutGoingMsg : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1869
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1870
    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsWifiUsed:Z

    if-eqz p0, :cond_0

    .line 1871
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1873
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1875
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isFtSms()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 1876
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p2

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-static {p2, p0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1877
    :cond_2
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 1880
    :cond_3
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, p3, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Z
    .locals 1

    .line 2184
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2185
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Z
    .locals 1

    .line 2199
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2200
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private initState()V
    .locals 3

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 852
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 854
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 856
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 857
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isSessionTimeoutRequired()Z
    .locals 2

    .line 2039
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSessionTimeoutSupported()Z
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isSessionTimeoutRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$processPendingFtHttp$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 4

    .line 1372
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1374
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private static synthetic lambda$processPendingNotifications$1(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 4

    .line 1395
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private processPendingFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 1450
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isAutoResumable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1451
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1452
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 1453
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1454
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    goto :goto_0

    .line 1455
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1456
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    .line 1457
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_4

    .line 1458
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 1460
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "auto_resend_failed_ft"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1461
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq v0, v1, :cond_4

    .line 1462
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private processPendingImMessage(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2

    .line 1438
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    .line 1439
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_1

    .line 1440
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :cond_1
    return-void
.end method

.method private setSubject(Ljava/lang/String;)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setSubject(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abortAllHttpFtOperations()V
    .locals 6

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortAllHttpFtOperations :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1775
    instance-of v3, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 1776
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processDeregistration : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1779
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1781
    :cond_1
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v2, :cond_0

    .line 1782
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processDeregistration : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1784
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1794
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1795
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel pending file transfer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1798
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1800
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public acceptSession(Z)V
    .locals 1

    .line 919
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x3ee

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected acquireWakeLock(Ljava/lang/Object;)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method protected addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 10

    .line 2063
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;-><init>(Ljava/lang/Object;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-boolean p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz p2, :cond_1

    .line 2066
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_NOTIFICATION_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    :goto_0
    iput-object p1, v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 2068
    :cond_1
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    return-object v9
.end method

.method protected addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 1

    .line 2079
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected addInProgressRequestCallback(Landroid/os/Message;)V
    .locals 3

    .line 2668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInProgressRequestCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/16 v0, 0x7e1

    .line 2669
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2670
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addParticipant(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1126
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1127
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1036
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d1

    const/4 v1, 0x0

    .line 1037
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    const/16 v0, 0x7d3

    .line 1041
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method protected addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->startFileTransferTimer()V

    :cond_0
    return-void
.end method

.method protected attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1

    const/16 v0, 0xbbc

    .line 1474
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected cancelInProgressMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 3

    .line 1822
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1823
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v2, :cond_1

    .line 1824
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressChatMsg(Lcom/sec/internal/ims/servicemodules/im/ImMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_0

    .line 1825
    :cond_1
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v2, :cond_2

    .line 1826
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressFTOutGoingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_0

    .line 1827
    :cond_2
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v2, :cond_0

    .line 1828
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressFTInComingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected cancelMessages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1241
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1242
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 1243
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/lang/String;)V

    .line 1245
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1249
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onSendCanceledNotificationDone(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1251
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xbd1

    .line 1252
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_3
    return-void
.end method

.method protected cancelPendingFilesInQueue()V
    .locals 5

    .line 1890
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1895
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1896
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel pending file transfer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1898
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1899
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1901
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected changeGroupAlias(Ljava/lang/String;)V
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7dc

    .line 1080
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected changeGroupChatIcon(Ljava/lang/String;)V
    .locals 1

    .line 1068
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7de

    .line 1069
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected changeGroupChatLeader(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1090
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d8

    .line 1091
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected changeGroupChatSubject(Ljava/lang/String;)V
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7da

    .line 1063
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected checkAndUpdateSessionTimeout()V
    .locals 6

    .line 2021
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isSessionTimeoutSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3fa

    .line 2022
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2023
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_0

    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateSessionTimeout serviceId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getCallComposerTimerIdle()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2027
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getCallComposerTimerIdle()I

    move-result v1

    if-lez v1, :cond_1

    .line 2028
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getCallComposerTimerIdle()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2031
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateSessionTimeout "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeSession()V
    .locals 2

    .line 1003
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getSessionStopReason(Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    move-result-object v0

    const/4 v1, 0x1

    .line 1004
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    return-void
.end method

.method protected closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsReusable(Z)V

    .line 1015
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 1016
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 1017
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    :cond_0
    const/16 p1, 0x3f4

    .line 1019
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected deleteParticipant(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1137
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1138
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 2335
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2338
    :cond_2
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2339
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez p0, :cond_4

    .line 2340
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 2342
    :cond_4
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected failCurrentCanceledMessages()V
    .locals 5

    .line 1695
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentCanceledMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1696
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onSendCanceledNotificationDone(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1698
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentCanceledMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1

    const/4 v0, 0x0

    .line 1682
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    return-void
.end method

.method protected failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V
    .locals 4

    .line 1686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    const/16 v2, 0xbba

    .line 1687
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1688
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-direct {v2, p1, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1689
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1691
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 3

    .line 1728
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    invoke-static {p4}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1732
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 1733
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1734
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V
    .locals 1

    .line 1811
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Z)V

    return-void
.end method

.method protected forceCloseSession()V
    .locals 1

    const/16 v0, 0x3f7

    .line 1026
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    return-object p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object p0

    return-object p0
.end method

.method public getChatStateId()I
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result p0

    return p0
.end method

.method protected getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object p0

    return-object p0
.end method

.method protected getComposingActiveUris()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method protected getContributionId()Ljava/lang/String;
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConversationId()Ljava/lang/String;
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentSessionState()Lcom/sec/internal/helper/IState;
    .locals 0

    .line 881
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    return-object p0
.end method

.method public getDetailedState()Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-object p0
.end method

.method protected getDeviceId()Ljava/lang/String;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    return-object p0
.end method

.method protected getFtCompleteCallback()Landroid/os/Message;
    .locals 1

    const/16 v0, 0xbbe

    .line 2427
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p0

    return p0
.end method

.method public getImSessionClosedEvent()Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    return-object p0
.end method

.method protected getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 2

    if-eqz p1, :cond_1

    .line 2120
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2121
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 3

    .line 2214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2215
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mReceivedMessageIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getInReplyToContributionId()Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    return-object p0
.end method

.method protected getInitiator()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 1108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiator:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method protected getInitiatorAlias()Ljava/lang/String;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiatorAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getIsTokenUsed()Z
    .locals 0

    .line 491
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTokenUsed:Z

    return p0
.end method

.method protected getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 3

    .line 2160
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2161
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxParticipantsCount()I
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getMaxParticipantsCount()I

    move-result p0

    return p0
.end method

.method protected getNeedToRevokeMessages()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2483
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    return-object p0
.end method

.method public getOwnImsi()Ljava/lang/String;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getOwnPhoneNum()Ljava/lang/String;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 0

    if-eqz p1, :cond_0

    .line 629
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticipants()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getParticipantsSize()I
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public getParticipantsString()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 616
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getParticipantsUri()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPhoneId()I
    .locals 2

    .line 377
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method protected getRawHandle()Ljava/lang/Object;
    .locals 0

    .line 2636
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    return-object p0
.end method

.method protected getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 2418
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 668
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/util/ImsUri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRequestMessageId()Ljava/lang/String;
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    return-object p0
.end method

.method protected getSdpContentType()Ljava/lang/String;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    .line 843
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method protected getSessionUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubject()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object p0

    return-object p0
.end method

.method protected getThreadId()I
    .locals 0

    .line 689
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    return p0
.end method

.method protected getUserAlias()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUserAlias(Z)Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 2089
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acquireWakeLock(Ljava/lang/Object;)V

    .line 2091
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 2093
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 2094
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    if-eqz v5, :cond_1

    const/16 p1, 0x3f3

    goto :goto_1

    :cond_1
    const/16 p1, 0x3ef

    .line 2095
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLandroid/os/Message;)V

    .line 2096
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    :cond_2
    return-void
.end method

.method protected handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 3

    .line 2106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2108
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handlePendingEvents()V
    .locals 2

    .line 2707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePendingEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2709
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2711
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected handleRequestTimeout()V
    .locals 4

    .line 2687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2689
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x7d9

    if-eq v2, v3, :cond_0

    .line 2696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequestTimeout: Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2691
    :cond_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 2692
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatLeaderFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    .line 2701
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2703
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handlePendingEvents()V

    return-void
.end method

.method protected handleSendingStateRevokeMessages()V
    .locals 1

    const/16 v0, 0xbcc

    .line 2580
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method protected handleUploadedFileFallback(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V
    .locals 2

    .line 2613
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getUploadedFileFallbackSLMTech()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2621
    :cond_0
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 2618
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    goto :goto_0

    :cond_2
    const/16 v0, 0xbbf

    .line 2615
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method protected hasActiveImSessionInfo()Z
    .locals 0

    .line 2174
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasImSessionInfo(Ljava/lang/Object;)Z
    .locals 0

    .line 834
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 2317
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method protected isAutoAccept()Z
    .locals 2

    .line 2373
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "force_auto_accept"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2377
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2378
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAutAcceptGroupChat()Z

    move-result p0

    return p0

    .line 2380
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAutAccept()Z

    move-result p0

    return p0
.end method

.method protected isAutoRejoinSession()Z
    .locals 3

    .line 1492
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "groupchat_auto_rejoin"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 1493
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isBotSessionAnonymized()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getBotPrivacyDisable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 1

    .line 569
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z
    .locals 0

    .line 359
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isChatbotManualAcceptUsed()Z
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "use_chatbot_manualaccept"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiator:Lcom/sec/ims/util/ImsUri;

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p0

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isChatbotRole()Z
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isChatbotRole()Z

    move-result p0

    return p0
.end method

.method protected isEmptySession()Z
    .locals 1

    .line 2399
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isEstablishedState()Z
    .locals 1

    .line 2390
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFirstMessageInStart(Ljava/lang/String;)Z
    .locals 1

    .line 2003
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFirstMsgInvite()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFirstMsgInvite(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "firstmsg_groupchat_invite"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 2004
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string/jumbo p1, "use_msrp"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupChat()Z
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result p0

    return p0
.end method

.method protected isMsgFallbackSupported()Z
    .locals 1

    .line 2452
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isMsgRevocationSupported()Z
    .locals 1

    .line 2456
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isMuted()Z
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result p0

    return p0
.end method

.method protected isRejoinable()Z
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isRespondDisplay()Z
    .locals 1

    .line 1312
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRespondDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isReusable()Z
    .locals 0

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isReusable()Z

    move-result p0

    return p0
.end method

.method public isTimerExpired()Z
    .locals 0

    .line 2460
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTimerExpired:Z

    return p0
.end method

.method protected isVoluntaryDeparture()Z
    .locals 1

    .line 2408
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected leaveSessionWithReject(Ljava/lang/Object;)V
    .locals 5

    const v0, 0x40000100    # 2.000061f

    const-string v1, "User left"

    .line 2715
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 2718
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 2719
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 2720
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 2721
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2722
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 2723
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    return-void
.end method

.method protected messageRevocationRequest(Ljava/util/List;ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 2498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageRevocationRequest() : imdnIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userSelectResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userSelectType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_2

    .line 2515
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2516
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v2, p3, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p3

    .line 2517
    instance-of v2, p3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-nez v2, :cond_1

    .line 2518
    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addPendingRevocationMessage(Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 2507
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2508
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v2, p3, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p3

    .line 2509
    instance-of v2, p3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-nez v2, :cond_3

    .line 2510
    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addPendingRevocationMessage(Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_1

    .line 2523
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 2524
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {p2, p3, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    :cond_5
    const/16 p2, 0xbc8

    .line 2526
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 2528
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2529
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {p3, p2, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p2

    .line 2530
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addPendingRevocationMessage(Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_3

    .line 2532
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2533
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {p1, p2, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    :cond_8
    :goto_4
    return-void
.end method

.method protected messageRevocationRequestAll(ZI)V
    .locals 2

    .line 2493
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2494
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->messageRevocationRequest(Ljava/util/List;ZI)V

    return-void
.end method

.method protected needToUseGroupChatInvitationUI()Z
    .locals 3

    .line 2360
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "groupchat_invitationui_used"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 2361
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAutAcceptGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2363
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToUseGroupChatInvitationUI, ChatState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return v0
.end method

.method protected onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method protected onAddParticipantsSucceeded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 1579
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1581
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1583
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    .line 1584
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1588
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1589
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V

    .line 1591
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1592
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 1594
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected onChangeGroupAliasFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method protected onChangeGroupChatIconFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method protected onChangeGroupChatLeaderFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1623
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method protected onChangeGroupChatSubjectFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method protected onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 11

    .line 1657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    if-nez v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 1659
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/ims/util/UriGenerator;Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;Ljava/lang/String;)V

    return-void
.end method

.method protected onEstablishmentTimeOut(Ljava/lang/Object;)V
    .locals 2

    .line 2628
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object p1

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SESSION_ESTABLISHMENT_TIMEOUT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2630
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-eq v0, v1, :cond_0

    .line 2631
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    :cond_0
    return-void
.end method

.method protected onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Z)V

    return-void
.end method

.method protected onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    const-string v0, "msg cannot be null"

    .line 1506
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v2, :cond_0

    .line 1509
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1512
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xbcd

    .line 1513
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1515
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    const/16 p1, 0xbce

    .line 1516
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 p1, 0xbcf

    .line 1517
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method protected onRemoveParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method protected onSendCanceledNotification(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2604
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendCanceledNotification : messages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2607
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xbd2

    .line 2608
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v8

    .line 2607
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendCanceledNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSendDisplayedNotification(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2584
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendDisplayedNotification : messages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2587
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 2588
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v3, v4, :cond_0

    .line 2591
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    move-object v2, v0

    .line 2593
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xbc5

    .line 2594
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    .line 2595
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v8

    .line 2593
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2598
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xbc4

    const-wide/16 v0, 0x5dc

    .line 2599
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    :cond_2
    return-void
.end method

.method protected onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 9

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendImdnFailed event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1266
    instance-of v0, p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_1

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 1268
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 1271
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p1

    .line 1272
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 1273
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xbc3

    .line 1274
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    .line 1275
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v8

    move-object v1, p2

    .line 1273
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 1276
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRespondDisplay()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 1277
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0xbc5

    .line 1278
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    .line 1279
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v7

    move-object v0, p2

    .line 1277
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    :cond_3
    return-void
.end method

.method protected onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1

    const/16 v0, 0xbba

    .line 1291
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1292
    new-instance p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mRawHandle:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {p2, v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1293
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onSendSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "msg cannot be null"

    .line 1527
    invoke-static {v1, v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "onSendSlmMessage"

    .line 1528
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1530
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1532
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v3, v4, :cond_1

    .line 1533
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1534
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 1535
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/PublicAccountUri;->convertToPublicAccountUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    goto :goto_1

    :cond_1
    move-object/from16 v17, v2

    .line 1540
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.gsma.botsuggestion.response.v1.0+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1541
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.gsma.botsharedclientdata.v1.0+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 1542
    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    .line 1545
    :cond_2
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v6

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 1546
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getUserAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v13

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 1547
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v15

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    const/16 v4, 0xbc0

    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 1548
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const/16 v16, 0x1

    const/16 v19, 0x0

    if-ne v4, v5, :cond_3

    move/from16 v4, v16

    goto :goto_2

    :cond_3
    move/from16 v4, v19

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v20

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v21

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v5

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-static {v5, v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v22, v16

    goto :goto_3

    :cond_4
    move/from16 v22, v19

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v23

    move-object v5, v2

    move-object/from16 v16, v3

    move/from16 v19, v4

    invoke-direct/range {v5 .. v23}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 1550
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1551
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    .line 1554
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v3

    if-le v1, v3, :cond_6

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_4

    .line 1555
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    :goto_4
    move-object/from16 v3, p1

    .line 1554
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    .line 1557
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V

    .line 1558
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1559
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method protected onSimRefresh(I)V
    .locals 3

    .line 2257
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2259
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 2260
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    if-eq v2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update previous phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    :cond_1
    return-void
.end method

.method protected processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 2

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCancelMessages :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1816
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 1817
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 1818
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    return-void
.end method

.method protected processDeregistration()V
    .locals 7

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDeregistration :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCloseSession()V

    .line 1749
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgRevocationSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1751
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1752
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v4, v3, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1753
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v5, v6, :cond_0

    .line 1754
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1755
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->stopMsgRevokeOperationTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 1758
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {v2, v3, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    const/4 v0, 0x0

    .line 1760
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 1761
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1762
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v2, 0xbca

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    :cond_2
    const/4 v0, 0x1

    .line 1764
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    return-void
.end method

.method public processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 1

    .line 901
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acquireWakeLock(Ljava/lang/Object;)V

    .line 904
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f2

    .line 905
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ed

    .line 907
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected processPendingFtHttp(I)V
    .locals 5

    .line 1352
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1353
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    const-string p1, "processPendingFtHttp"

    .line 1354
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1355
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1356
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1358
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1360
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    .line 1361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI of SIM sent this message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", IMSI of current SIM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1362
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current status of this message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v2, v3, :cond_1

    .line 1365
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_1

    .line 1367
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1368
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1371
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1379
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_5

    .line 1380
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected processPendingMessages(I)V
    .locals 4

    .line 1319
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1320
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPendingMessages phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1322
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1323
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1325
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 1326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "processPendingMessages: ownImsi is not loaded."

    .line 1327
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    return-void

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1331
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1332
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateOwnIMSI(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1334
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1335
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1339
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1340
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v1, :cond_6

    .line 1341
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingImMessage(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    goto :goto_2

    .line 1342
    :cond_6
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_5

    .line 1343
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected processPendingNotifications(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 1391
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRespondDisplay()Z

    move-result v0

    .line 1393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1394
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/ImSession$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1402
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1404
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v4, :cond_0

    .line 1405
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    .line 1406
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v4

    .line 1407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendDispositionNotification current : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " desired : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1409
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v4, v5, :cond_1

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v3, v6, :cond_1

    .line 1410
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1411
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v4, v6, :cond_0

    .line 1412
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    if-ne v3, v5, :cond_2

    if-eqz v0, :cond_2

    .line 1414
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1415
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v3, v4, :cond_0

    .line 1416
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 1418
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1425
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1426
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_1

    .line 1429
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xbc4

    .line 1430
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_5
    return-void
.end method

.method protected processRejoinGCSession()V
    .locals 2

    .line 1481
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "groupchat_auto_rejoin"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 1482
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRejoinGCSession : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/16 v0, 0x3fc

    .line 1484
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1485
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRejoinGCSession for bye : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/16 v0, 0x3fd

    .line 1487
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected receiveComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 4

    .line 971
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mInterval:I

    if-eqz v0, :cond_0

    .line 972
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 976
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mIsComposing:Z

    if-eqz p1, :cond_1

    .line 977
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xbd0

    .line 978
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 979
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 980
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->checkAndUpdateSessionTimeout()V

    goto :goto_0

    .line 982
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected receiveConferenceInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 1

    const/16 v0, 0x7d5

    .line 962
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected receiveDeliveryTimeout()V
    .locals 1

    const/16 v0, 0xbc7

    .line 1099
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected receiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1225
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1226
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mReceivedMessageIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 p2, 0xbbb

    .line 1230
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public receiveSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 1

    const/16 v0, 0x3f6

    .line 953
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public receiveSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 1

    const/16 v0, 0x3eb

    .line 944
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected receiveSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1

    const/16 v0, 0xbc1

    .line 1302
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V
    .locals 2

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveTransfer: mProcessingFileTransfer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/16 v0, 0xbbe

    .line 1987
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->receiveTransfer(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    .line 1989
    instance-of p2, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1990
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1991
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1992
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    :cond_0
    return-void
.end method

.method protected reconnectGuardTimerExpired()V
    .locals 1

    .line 2487
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    if-nez v0, :cond_0

    const/16 v0, 0xbca

    .line 2488
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public rejectSession()V
    .locals 1

    const/16 v0, 0x3f0

    .line 926
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected rejectSession(I)V
    .locals 1

    .line 935
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected releaseWakeLock(Ljava/lang/Object;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method protected removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 0

    .line 2136
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2138
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected removeImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)Z
    .locals 0

    .line 2151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected removeInProgressRequestCallback(Landroid/os/Message;)V
    .locals 2

    .line 2676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInProgressRequestCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2677
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2679
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7e1

    .line 2680
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2682
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handlePendingEvents()V

    :cond_0
    return-void
.end method

.method protected removeMsgFromListForRevoke(Ljava/lang/String;)V
    .locals 0

    .line 2468
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/util/Collection;)V

    return-void
.end method

.method protected removeMsgFromListForRevoke(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2473
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->removeFromRevokingMessages(Ljava/util/Collection;)V

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMsgFromListForRevoke() : msg imdnId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", remaining list size : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2475
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2476
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 2477
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    const/16 v0, 0xbca

    .line 2478
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2477
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected removeParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1051
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d6

    const/4 v1, 0x0

    .line 1052
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected restartSession(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 994
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    .line 995
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    .line 996
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSubject(Ljava/lang/String;)V

    return-void
.end method

.method protected resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 1943
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTransferFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mProcessingFileTransfer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1948
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsResuming(Z)V

    const/16 v0, 0xbbe

    .line 1949
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1950
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_2

    .line 1951
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_1

    .line 1953
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_1

    .line 1956
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_1

    .line 1959
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1960
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 1962
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1963
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1964
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 1966
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 1968
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1969
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_1

    .line 1970
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1971
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateQueued()V

    .line 1972
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public sendComposing(ZI)V
    .locals 0

    .line 1149
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    .line 1150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0xbcd

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1

    const/16 v0, 0xbc2

    .line 1568
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendFile::entering .... queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1911
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const/16 v1, 0xbbe

    if-eqz v0, :cond_1

    .line 1912
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isFtSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1913
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1915
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_0

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1918
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    const/16 v0, 0xbbd

    .line 1922
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1923
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1924
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 1925
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    .line 1926
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1931
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1932
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendImMessage: ChatbotMessagingTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1170
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v0, v1, :cond_0

    .line 1171
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkChatbotMessagingTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;ZLjava/util/Set;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V

    .line 1173
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    .line 1174
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v0, v1, :cond_1

    .line 1175
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void

    .line 1179
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSlmSvcMsg(Z)V

    .line 1182
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1184
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1185
    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSlmSvcMsg(Z)V

    .line 1188
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xbbf

    .line 1189
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    :cond_6
    const/16 v0, 0xbb9

    .line 1191
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1198
    :goto_2
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "support_sendmsg_resp_timeout"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xbc6

    .line 1199
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSendMessageResponseTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_7
    return-void
.end method

.method protected setContributionId(Ljava/lang/String;)V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    return-void
.end method

.method protected setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method protected setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    return-void
.end method

.method protected setInReplyToContributionId(Ljava/lang/String;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    return-void
.end method

.method protected setInitiator(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiator:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method protected setInitiatorAlias(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiatorAlias:Ljava/lang/String;

    return-void
.end method

.method protected setIsTimerExpired(Z)V
    .locals 0

    .line 2464
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTimerExpired:Z

    return-void
.end method

.method protected setIsTokenUsed(Z)V
    .locals 0

    .line 495
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTokenUsed:Z

    return-void
.end method

.method protected setNetworkFallbackMech(Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;)V
    .locals 1

    .line 2447
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNetworkFallbackMech: mChatFallbackMech="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method protected setNetworkFallbackMech(ZZ)V
    .locals 2

    .line 2431
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2432
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2434
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v0

    if-lez v0, :cond_1

    .line 2436
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2439
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNetworkFallbackMech: isMsgFallbackSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isMsgRevokeSupported="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isGroupChat()="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", getChatRevokeTimer()="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 2442
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mChatFallbackMech="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2439
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method setNotEmptyContributionId()V
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2566
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    .line 2565
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    return-void
.end method

.method setNotEmptyConversationId()V
    .locals 1

    .line 2556
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 2556
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    return-void
.end method

.method protected setOwnImsi(Ljava/lang/String;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setOwnIMSI(Ljava/lang/String;)V

    return-void
.end method

.method protected setOwnPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setOwnPhoneNum(Ljava/lang/String;)V

    return-void
.end method

.method protected setRawHandle(Ljava/lang/Object;)V
    .locals 0

    .line 2645
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    return-void
.end method

.method protected setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2

    const-string v0, "msg cannot be null"

    .line 1211
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_0

    const/16 v0, 0x3fb

    .line 1213
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_0
    return-void
.end method

.method protected setSessionUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method protected startMsgRevokeOperationTimer(Ljava/lang/String;)V
    .locals 2

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMsgRevokeOperationTimer() : imdnId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/16 v0, 0xbcb

    .line 2571
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public startSession()V
    .locals 1

    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "broadcast message just use SLM, should never start session"

    .line 889
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3e9

    .line 892
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected stopMsgRevokeOperationTimer(Ljava/lang/String;)V
    .locals 2

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMsgRevokeOperationTimer() : imdnId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xbcb

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSession [mChatData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdpContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAcceptTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAcceptWrappedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsComposing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    .line 2281
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mClosedReason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mComposingNotificationInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mComposingActiveUris="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mProcessingFileTransfer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingFileTransfer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestMessageId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentMessages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptWrappedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toStringForDump()Ljava/lang/String;
    .locals 2

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSession [ChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ConvId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 2299
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ContId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 2300
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ChatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 2301
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Participants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    .line 2302
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 2303
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ClosedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected transitionToProperState()V
    .locals 5

    .line 2226
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2228
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToProperState : ImSessionInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2231
    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2235
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    goto :goto_2

    .line 2237
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    goto :goto_2

    .line 2239
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 2240
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 2242
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    goto :goto_2

    .line 2245
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    goto :goto_2

    .line 2241
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    .line 2248
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    if-eq v0, v1, :cond_7

    .line 2249
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_7
    return-void
.end method

.method protected transitionToStartingState()V
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method protected updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    return-void
.end method

.method protected updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V

    return-void
.end method

.method protected updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    return-void
.end method

.method protected updateIsChatbotRole(Z)V
    .locals 3

    .line 411
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isChatbotRole()Z

    move-result v1

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 414
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 419
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsChatbotRole(Z)V

    return-void
.end method

.method protected updateNetworkForPendingMessage(Landroid/net/Network;Landroid/net/Network;)V
    .locals 4

    .line 1708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1709
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkForPendingMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pended message(s) in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1711
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1714
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 1712
    :cond_1
    :goto_1
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 1

    if-nez p2, :cond_0

    .line 789
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateParticipantAlias, skipping update"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 793
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateParticipantAlias, SnF session and alias empty - do not update"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 798
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 805
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateParticipantAlias, participant alias is up to date"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 799
    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setUserAlias(Ljava/lang/String;)V

    .line 800
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 801
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 803
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :goto_1
    return-void
.end method

.method protected updateParticipantsStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 4

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 770
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 771
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 772
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 773
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 777
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method protected updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 1

    .line 257
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setRawHandle(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mContributionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 259
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mConversationId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 260
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mInReplyToContributionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    .line 261
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSdpContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 263
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 264
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method protected updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    return-void
.end method

.method protected updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0

    .line 2351
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-void
.end method
