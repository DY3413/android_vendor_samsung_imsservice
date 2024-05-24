.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;
.super Landroid/os/Handler;
.source "CapabilityForIncall.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityForIncall"

.field public static final NAME:Ljava/lang/String;


# instance fields
.field protected mActiveCallLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field protected mIsNeedUpdateCallState:Z

.field private mRcsProfile:Ljava/lang/String;

.field mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method public static synthetic $r8$lambda$EZxRZcab9NLXAzDsclA0FG2HeHo(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->lambda$processCallStateChanged$0(Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OFMLW2kZGMp5eZswcDHzzsP_tGM(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->lambda$processCallStateChangedOnDeregi$1(Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .registers 5

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRcsProfile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 53
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method

.method private checkConnectedCalls(Ljava/util/concurrent/CopyOnWriteArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)I"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 117
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_1a
    return p1
.end method

.method private checkPrevConnectedCalls(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)I"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 127
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_1a
    return p1
.end method

.method private synthetic lambda$processCallStateChanged$0(Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V
    .registers 23

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v0, p3

    .line 59
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkConnectedCalls(Ljava/util/concurrent/CopyOnWriteArrayList;)I

    move-result v9

    .line 60
    invoke-direct {v7, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setActiveCalls(I)Ljava/util/List;

    move-result-object v10

    .line 61
    invoke-direct {v7, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkPrevConnectedCalls(Ljava/util/List;)I

    move-result v11

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallStateChanged: nConnectedCalls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nPrevConnectedCalls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "CapabilityForIncall"

    invoke-static {v12, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    .line 66
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 67
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    :cond_43
    const-string v3, ""

    :goto_45
    iput-object v3, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRcsProfile:Ljava/lang/String;

    if-eqz v2, :cond_199

    .line 69
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRcsProfile:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 70
    :cond_57
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CALL_SERVICE:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasAnyFeature(J)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 71
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    .line 72
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getExtFeatureAsJoinedString()Ljava/lang/String;

    move-result-object v13

    .line 73
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v4

    .line 74
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 75
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v0

    const/4 v14, 0x0

    .line 74
    invoke-interface {v1, v5, v0, v14, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v5

    .line 77
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-wide v1, v2

    move-object v3, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v15

    .line 78
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_a8
    :goto_a8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 79
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v10, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    move-result-object v6

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_103

    .line 83
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_f2

    if-ne v9, v1, :cond_f2

    .line 84
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide v3, v15

    move-object v5, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    goto :goto_a8

    :cond_f2
    if-le v9, v1, :cond_a8

    .line 86
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide v3, v15

    move-object v5, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    goto :goto_a8

    .line 89
    :cond_103
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_10b

    if-le v11, v1, :cond_127

    :cond_10b
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_127

    if-ne v9, v1, :cond_127

    .line 90
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide v3, v15

    move-object v5, v13

    move-object/from16 p3, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    goto :goto_155

    :cond_127
    move-object/from16 p3, v6

    .line 91
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_139

    if-ne v11, v1, :cond_139

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_147

    if-gt v9, v1, :cond_147

    .line 92
    :cond_139
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-nez v2, :cond_155

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_155

    if-le v9, v1, :cond_155

    .line 93
    :cond_147
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide v3, v15

    move-object v5, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    :cond_155
    :goto_155
    move-object/from16 v0, p3

    .line 95
    invoke-interface {v10, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a8

    .line 100
    :cond_15c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_160
    :goto_160
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_199

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnected call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_160

    if-ne v11, v1, :cond_160

    .line 103
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 104
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 105
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v8, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    goto :goto_160

    .line 110
    :cond_199
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$processCallStateChangedOnDeregi$1(Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .registers 12

    const-string v0, "CapabilityForIncall"

    const-string v1, "mImsRegInfo: null"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkConnectedCalls(Ljava/util/concurrent/CopyOnWriteArrayList;)I

    move-result v0

    .line 146
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setActiveCalls(I)Ljava/util/List;

    move-result-object v1

    .line 147
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkPrevConnectedCalls(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    .line 149
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    .line 151
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 152
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    move-result-object v7

    if-nez v7, :cond_43

    .line 155
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1a

    if-ne v0, v3, :cond_1a

    .line 156
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, p2, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    goto :goto_1a

    .line 159
    :cond_43
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4b

    if-le v2, v3, :cond_5d

    :cond_4b
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5d

    if-ne v0, v3, :cond_5d

    .line 160
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, p2, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    goto :goto_80

    .line 161
    :cond_5d
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6d

    if-ne v2, v3, :cond_6d

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_7b

    if-gt v0, v3, :cond_7b

    .line 162
    :cond_6d
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-nez v8, :cond_80

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_80

    if-le v0, v3, :cond_80

    .line 163
    :cond_7b
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p2, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 165
    :cond_80
    :goto_80
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 170
    :cond_84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 171
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_88

    if-ne v2, v3, :cond_88

    .line 172
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    goto :goto_88

    .line 176
    :cond_a2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setActiveCalls(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public exchangeCapabilitiesForVSH(IZLjava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v2, :cond_b0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_b0

    .line 218
    :cond_10
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v5

    .line 219
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    const/4 v7, 0x0

    .line 219
    invoke-interface {v2, v3, v1, v7, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v4

    .line 221
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v8

    if-nez v8, :cond_42

    return-void

    .line 225
    :cond_42
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v2

    .line 226
    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->getExtFeatureAsJoinedString()Ljava/lang/String;

    move-result-object v5

    .line 228
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_58

    .line 229
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    .line 232
    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 236
    :cond_75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :cond_7a
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 237
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7a

    add-int/lit8 v7, v7, 0x1

    move-object v6, v8

    goto :goto_7a

    :cond_90
    if-eq v7, v4, :cond_93

    return-void

    :cond_93
    if-eqz p2, :cond_a0

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_af

    .line 250
    :cond_a0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v4, v4

    int-to-long v7, v4

    and-long/2addr v2, v7

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    :goto_af
    return-void

    :cond_b0
    :goto_b0
    const-string v0, "CapabilityForIncall"

    const-string v1, "exchangeCapabilitiesForVSH: mRegMan or mImsRegInfo is null "

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 182
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processCallStateChangedOnDeregi(ILjava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V
    .registers 15

    const-string v0, "SetIncallFeature"

    const-string v1, "CapabilityForIncall"

    .line 190
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p6, :cond_28

    const-string p6, "Activate content share features."

    .line 192
    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p6, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-object v2, p2

    move-wide v3, p3

    move v5, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    goto :goto_58

    :cond_28
    const-string p6, "Deactivate content share features."

    .line 198
    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    invoke-virtual {p6, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget p6, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int p6, p6

    int-to-long v3, p6

    and-long/2addr p3, v3

    sget p6, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int p6, p6

    int-to-long v3, p6

    and-long/2addr p3, v3

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v3, v3

    and-long/2addr p3, v3

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v3, v3

    and-long v4, p3, v3

    move-object v3, p2

    move v6, p1

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    :goto_58
    return-void
.end method

.method public triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V
    .registers 12

    const-string v0, "options"

    .line 255
    invoke-virtual {p2, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_64

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_64

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_64

    .line 257
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 260
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3e
    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 261
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 262
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 263
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z

    goto :goto_3e

    :cond_64
    return-void
.end method
