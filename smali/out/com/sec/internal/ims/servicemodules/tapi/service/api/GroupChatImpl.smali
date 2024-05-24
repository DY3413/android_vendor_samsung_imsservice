.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
.super Lcom/gsma/services/rcs/chat/IGroupChat$Stub;
.source "GroupChatImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

.field private mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field private mSessionLeaved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    .line 70
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 75
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    .line 70
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 75
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 93
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    return-void
.end method


# virtual methods
.method public addParticipants(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : addParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/contact/ContactId;

    if-eqz v1, :cond_11

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 359
    :cond_3d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public canAddListParticipants(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 329
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    return v1

    .line 332
    :cond_a
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 334
    invoke-virtual {v2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v3, v3

    invoke-interface {p0, v2, v3, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 336
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_37
    return v1

    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method public canAddParticipants()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 314
    :try_start_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_28

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 318
    :cond_17
    :try_start_17
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    if-nez p0, :cond_24

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v2, p0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_28

    if-eqz p0, :cond_24

    const/4 v3, 0x1

    .line 321
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw p0
.end method

.method public canSendMessage()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public convertStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .registers 2

    .line 98
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 99
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_26

    .line 123
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 120
    :pswitch_10
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 117
    :pswitch_13
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 114
    :pswitch_16
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 111
    :pswitch_19
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 108
    :pswitch_1c
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 104
    :pswitch_1f
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_24

    .line 101
    :pswitch_22
    sget-object p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    :goto_24
    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getChatId()Ljava/lang/String;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDirection()I
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    return p0
.end method

.method public getMaxParticipants()I
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getMaxParticipantsCount()I

    move-result p0

    return p0
.end method

.method public getParticipants()Ljava/util/Map;
    .registers 5

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 172
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->convertStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    return-object p0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p0

    .line 406
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 407
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 408
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 409
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    if-ne v1, v2, :cond_a

    .line 410
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getState()Lcom/gsma/services/rcs/chat/GroupChat$State;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAllowedToLeave()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public leave()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : leave()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->closeChat(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    return-void
.end method

.method public openChat()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    new-instance v3, Landroid/location/Location;

    const-string v0, "gps"

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 268
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 269
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 270
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    move-result-object v0

    const/4 v10, 0x0

    .line 274
    :try_start_25
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 275
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 276
    invoke-static {p0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 277
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 275
    invoke-interface/range {v0 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->shareLocationInChat(Ljava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 279
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    goto :goto_4a

    :cond_49
    move-object p0, v10

    :goto_4a
    if-eqz p0, :cond_5a

    .line 287
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 283
    :cond_5a
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Can not get imMessage with messageId "

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_62} :catch_67
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_6b

    :catch_67
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6b
    return-object v10
.end method

.method public sendIsComposingEvent(Z)V
    .registers 4

    .line 306
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : sendIsComposingEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .registers 20

    move-object/from16 v0, p0

    .line 242
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : sendMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 245
    :try_start_b
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 246
    invoke-static {v0, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-string/jumbo v6, "text/plain"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p1

    .line 245
    invoke-interface/range {v2 .. v17}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-nez v0, :cond_4e

    return-object v1

    .line 253
    :cond_4e
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_5b} :catch_61
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_5b} :catch_5c

    return-object v2

    :catch_5c
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_65

    :catch_61
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_65
    return-object v1
.end method

.method public setComposingStatus(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : setComposingStatus() ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz p0, :cond_1f

    const/4 v0, 0x3

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    :cond_1f
    return-void
.end method
