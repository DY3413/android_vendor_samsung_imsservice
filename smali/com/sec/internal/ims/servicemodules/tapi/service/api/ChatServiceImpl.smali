.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
.super Lcom/gsma/services/rcs/chat/IChatService$Stub;
.source "ChatServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SUBJECT:Ljava/lang/String; = "chat"

.field private static mChatSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/chat/IOneToOneChat;",
            ">;"
        }
    .end annotation
.end field

.field private static mGroupChatSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/chat/IGroupChat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupChatListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/chat/IGroupChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mLock:Ljava/lang/Object;

.field private mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    .line 128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;-><init>()V

    .line 104
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 110
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 143
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 155
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 165
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    .line 167
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 169
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method public static addChatSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;)V
    .locals 1

    .line 562
    invoke-static {p0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 563
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static addGroupChatSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;)V
    .locals 2

    .line 702
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1207
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    .line 1209
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1210
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1213
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private convertParticipantStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 0

    .line 441
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 442
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 466
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 463
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 460
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 457
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 454
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 451
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 447
    :pswitch_5
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 444
    :pswitch_6
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getChatSession(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .locals 1

    .line 572
    invoke-static {p0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 573
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-object p0
.end method

.method private notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .locals 7

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_1

    .line 436
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupMessageStateChanged(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    :goto_1
    return-void
.end method

.method protected static removeChatSession(Ljava/lang/String;)V
    .locals 2

    .line 582
    invoke-static {p0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 584
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected static removeGroupChatSession(Ljava/lang/String;)V
    .locals 1

    .line 711
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static translateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 2

    .line 1345
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 1346
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_0

    .line 1347
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1348
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_1

    .line 1349
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1350
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_2

    .line 1351
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1352
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_3

    .line 1353
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1354
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_4

    .line 1355
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 849
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 822
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 748
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 750
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public clearMessageDeliveryExpiration(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public deleteGroupChat(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 1010
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatDeleted(Ljava/util/List;)V

    .line 1011
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    return-void
.end method

.method public deleteGroupChats()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 944
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : delete All GroupChats()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 948
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    .line 949
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 950
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 951
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 955
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatDeleted(Ljava/util/List;)V

    .line 956
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : deleteMessage() msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1026
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1027
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1030
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "chat_id"

    .line 1031
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact"

    .line 1033
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1032
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1034
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1037
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1038
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1041
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1042
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p1, v5, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_2

    .line 1049
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1050
    :try_start_1
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 1052
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1054
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1056
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1057
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 1060
    :try_start_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v4, v1, p1}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 1062
    :try_start_4
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1065
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1066
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1068
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    return-void

    :catchall_1
    move-exception p0

    .line 1066
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 1026
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 1034
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method public deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteOneToOneChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 968
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "there is no session for ft"

    .line 972
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 975
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_filetransfer != 1 and chat_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 978
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getMessages(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 982
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 983
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 985
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 986
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 988
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 989
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 990
    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 989
    invoke-virtual {v6, v4, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 992
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 995
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->removeChatSession(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    return-void
.end method

.method public deleteOneToOneChats()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteOneToOneChats()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_filetransfer != 1"

    const/4 v1, 0x0

    .line 918
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getMessages(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 922
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 923
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 925
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 926
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 928
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 929
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 930
    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 929
    invoke-virtual {v6, v4, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 931
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 934
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 935
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    return-void
.end method

.method public getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 873
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    .line 874
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V

    return-object v0
.end method

.method public getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 808
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/IGroupChat;

    return-object p0
.end method

.method public getMessages(ZLjava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1174
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "_id"

    const-string v2, "chat_id"

    .line 1175
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 1178
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v4

    .line 1179
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const/4 v6, 0x0

    .line 1180
    invoke-virtual {v4, v3, p2, v6, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1181
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1185
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1187
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1186
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eq v3, p1, :cond_2

    goto :goto_0

    .line 1196
    :cond_2
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1195
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1197
    invoke-direct {p0, v0, v3, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1199
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_1
    const-string p0, "deleteOneToOneFileTransfers: Message not found."

    .line 1182
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_5

    .line 1199
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v6

    :goto_2
    if-eqz p2, :cond_6

    .line 1180
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
.end method

.method public getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 485
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : openSingleChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 490
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v3

    .line 491
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getChatSession(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    if-nez v4, :cond_2

    .line 495
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 497
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_0

    .line 498
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 499
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 502
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->getCoreSession()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Core chat session already exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v4

    .line 517
    :cond_3
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->removeChatSession(Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_4
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->removeChatSession(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 525
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create a new chat session with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 530
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v6, "chat"

    const-string/jumbo v7, "text/plain"

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 531
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 535
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 544
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {p1, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 546
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addChatSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;)V

    return-object p1

    .line 540
    :cond_7
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getOneToOneChat: session is error..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "session is error..."

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    .line 551
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1383
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    .line 1384
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1386
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1387
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1388
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getServiceVersion()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    const/4 p0, 0x2

    return p0
.end method

.method public getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start : getUndeliveredMessages()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 1126
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1127
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    .line 1130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object p1

    .line 1134
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    const-string v1, "_id"

    .line 1135
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "notification_status"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1140
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "direction"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1141
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "is_filetransfer"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = 0"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 1142
    invoke-virtual {v0, v1, p0, v2, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1144
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1145
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1142
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 1148
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public handleReceiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 8

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1224
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    .line 1226
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    .line 1228
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->receiveGroupChatMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1231
    monitor-exit v1

    return-void

    .line 1234
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1235
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {p2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1237
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1236
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 1239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 1239
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public initiateGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gsma/services/rcs/chat/IGroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : initiateGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 771
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v5, "text/plain"

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 777
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz p0, :cond_1

    .line 784
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addGroupChatSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;)V

    return-object p1

    .line 780
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "initiateGroupChat: session is error..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "session is error..."

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 792
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 790
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAllowedToInitiateGroupChat()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 725
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 726
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {p0, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    .line 731
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    throw p0
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 196
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 197
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "im"

    .line 198
    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 885
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : markMessageAsRead()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 890
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 891
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 894
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 895
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 897
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v1, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 898
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 899
    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 900
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public markUndeliveredMessagesAsProcessed(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start : markUndeliveredMessagesAsProcessed()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    .line 1160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyChangeForDelete()V
    .locals 2

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public notifyGroupChatDeleted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyGroupChatDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 419
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v3, p1}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onDeleted(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 421
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 425
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyGroupChatStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V
    .locals 6

    .line 264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyGroupChateStateChanged  chatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->name()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    if-nez v2, :cond_1

    const-string p0, "notifyMessageGroupDeliveryInfoChanged: Not group chat, drop out"

    .line 271
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    monitor-exit v1

    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    if-eqz p3, :cond_2

    .line 279
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 280
    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->ordinal()I

    move-result v4

    .line 281
    invoke-virtual {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->ordinal()I

    move-result v5

    .line 279
    invoke-interface {v3, p1, v4, v5}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onStateChanged(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 284
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 288
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyGroupMessageStateChanged(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .locals 11

    .line 296
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyGroupMessageStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v9

    .line 300
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v3, v9}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "notifyMessageGroupDeliveryInfoChanged: Not group chat, drop out"

    .line 304
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v1

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v0, :cond_1

    .line 310
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 311
    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v7

    invoke-virtual {p3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->ordinal()I

    move-result v8

    move-object v4, v9

    move-object v5, p1

    move-object v6, v2

    .line 310
    invoke-interface/range {v3 .. v8}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 313
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 317
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 7

    .line 387
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyGroupParticipantInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    .line 390
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 391
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->convertParticipantStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v1

    .line 393
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 396
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 397
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-interface {v5, v6, v2, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 400
    :try_start_2
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 404
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyMessageGroupDeliveryInfoChanged(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/ims/util/ImsUri;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .locals 16

    move-object/from16 v1, p0

    .line 352
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "notifyGroupDeliveryInfoChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v10

    .line 355
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v3, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "notifyMessageGroupDeliveryInfoChanged: Session is null, drop out"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v2

    return-void

    .line 361
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v12

    if-nez p2, :cond_1

    .line 364
    monitor-exit v2

    return-void

    .line 367
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v13, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v13, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v14, :cond_2

    .line 372
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 374
    invoke-virtual/range {p3 .. p3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->ordinal()I

    move-result v9

    move-object v4, v10

    move-object v5, v13

    move-object v6, v12

    move-object v7, v11

    .line 372
    invoke-interface/range {v3 .. v9}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 376
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 380
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 247
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 252
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0

    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0

    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
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

    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0

    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 1

    .line 617
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 621
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object p3

    .line 622
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    return-void
.end method

.method public onChatEstablished(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onChatInvitationReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 4

    .line 657
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : onChatInvitationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 662
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addGroupChatSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;)V

    .line 664
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gsma.services.rcs.chat.action.NEW_GROUP_CHAT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chatId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string p0, "session.getParticipantsString().size() != 1"

    .line 671
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 674
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 678
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v1, v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 679
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addChatSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;)V

    :cond_2
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0

    return-void
.end method

.method public onChatUpdateState(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 1

    .line 601
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 605
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object p3

    .line 606
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    return-void
.end method

.method public onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 1

    .line 1409
    sget-object p4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p6, "onComposingNotificationReceived"

    invoke-static {p4, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    .line 1413
    :try_start_0
    new-instance p6, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p6, p3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 1417
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    .line 1420
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v0, p1, p6, p5}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1423
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1426
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 1428
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p0, p6, p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    .line 1430
    :goto_3
    monitor-exit p4

    return-void

    :goto_4
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateChatSucceeded(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0

    return-void
.end method

.method public onGroupChatLeaderUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 7

    .line 1566
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1568
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImdnNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, p3, :cond_1

    if-nez p4, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1572
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v6, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1571
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_0

    .line 1576
    :cond_0
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    sget-object p3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object p4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageGroupDeliveryInfoChanged(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/ims/util/ImsUri;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    goto :goto_0

    .line 1580
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, p3, :cond_3

    if-nez p4, :cond_2

    .line 1582
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1583
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v6, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1582
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_0

    .line 1587
    :cond_2
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    sget-object p3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object p4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageGroupDeliveryInfoChanged(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/ims/util/ImsUri;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 6

    .line 1525
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1526
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->receiveGroupChatMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 1532
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1533
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {p2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1535
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1534
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 1537
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 1537
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1

    .line 1552
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p3, "onMessageSendingFailed():"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1554
    new-instance p3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {p2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1555
    sget-object p2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->FAILED_SEND:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 1544
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1547
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 0

    return-void
.end method

.method public onParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1457
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1458
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1464
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1465
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1471
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1472
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public receiveGroupChatMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 689
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : receiveGroupChatMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.chat.action.NEW_GROUP_CHAT_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 863
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 836
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRespondToDisplayReports(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1092
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start : setRespondToDisplayReports() enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ChatRespondToDisplayReports"

    .line 1095
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public translateReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    .locals 0

    .line 1329
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 1330
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$ImSessionClosedReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 1338
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    goto :goto_0

    .line 1335
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    goto :goto_0

    .line 1332
    :cond_1
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    :goto_0
    return-object p0
.end method

.method public translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$State;
    .locals 1

    .line 1300
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq p3, p0, :cond_5

    .line 1319
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->ABORTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1314
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1309
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, p0, :cond_5

    .line 1310
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->ACCEPTING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1302
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, p0, :cond_4

    .line 1303
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1304
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, p0, :cond_5

    .line 1305
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    :cond_5
    :goto_0
    return-object v0
.end method
