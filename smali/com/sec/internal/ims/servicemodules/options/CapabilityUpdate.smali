.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;
.super Ljava/lang/Object;
.source "CapabilityUpdate.java"


# static fields
.field private static final LAST_SEEN_UNKNOWN:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityUpdate"

.field private static final MAX_LAST_SEEN:J = 0xa8c0L

.field private static final MAX_RETRY_SYNC_CONTACT_COUNT:I = 0xa

.field private static final MINUTE_DENOMINATION:I = 0xea60

.field private static final RETRY_SYNC_CONTACT_DELAY:I = 0x7530


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method public static synthetic $r8$lambda$8-Fr0srPg-yzLEdsSPjpwz0EJVk(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;Ljava/util/List;IJLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->lambda$processUpdateCapabilities$1(Ljava/util/List;IJLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aojPwk5dMQyottDp-WY4_hdKKc0(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;ZIZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->lambda$processContactChanged$0(ZIZJ)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 60
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 61
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 64
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CapabilityUpdate"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$processContactChanged$0(ZIZJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v9, p2

    .line 113
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContacts()Ljava/util/Map;

    move-result-object v1

    .line 116
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processContactChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x12010000

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 119
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 120
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v1, p1

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/sec/internal/ims/servicemodules/options/Contact;

    .line 122
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getContactNumberList()Ljava/util/ArrayList;

    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v1

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 125
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 127
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_2

    .line 130
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    :goto_2
    move-object v8, v1

    .line 133
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_0

    .line 139
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    if-nez v1, :cond_4

    .line 142
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-static {v8}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v16

    move/from16 v2, p2

    move-object v3, v8

    move-object v12, v8

    move-object/from16 v8, v16

    .line 142
    invoke-interface/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getCapabilitiesInitialInfo(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    .line 144
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    invoke-virtual {v2, v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistCachedUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_3

    :cond_4
    move-object v12, v8

    .line 146
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 147
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    .line 148
    invoke-static {v12}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v12

    move-object v8, v1

    .line 147
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->updateContactInfo(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/ims/options/Capabilities;)V

    .line 159
    :goto_3
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v8, 0x1

    invoke-virtual {v1, v12, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v1

    if-eqz v1, :cond_6

    move v12, v8

    move v15, v12

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x1

    .line 149
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 150
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    .line 151
    invoke-static {v12}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v12

    move v12, v8

    move-object v8, v1

    .line 150
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->updateContactInfo(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/ims/options/Capabilities;)V

    goto/16 :goto_1

    :cond_6
    move v12, v8

    goto/16 :goto_1

    :cond_7
    move v1, v15

    goto/16 :goto_0

    .line 166
    :cond_8
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processContactChanged: updatePollList done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 167
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contacts added"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v2, v9, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 169
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->handleRemovedNumbers(I)V

    .line 171
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v6, "CapabilityUpdate"

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-eqz p3, :cond_9

    const-string v1, "processContactChanged: added an contact when RCS offline. need to poll"

    .line 173
    invoke-static {v6, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsOfflineAddedContact(ZI)V

    move v1, v12

    :cond_9
    move-object/from16 v0, p0

    move-object v2, v10

    move/from16 v3, p2

    move-wide/from16 v4, p4

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->needPollOnContactChanged(ZLjava/util/Date;IJ)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "processContactChanged: no need to poll now"

    .line 179
    invoke-static {v6, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$processUpdateCapabilities$1(Ljava/util/List;IJLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v11, p5

    .line 337
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 340
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processUpdateCapabilities,run, normalizedUris "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "CapabilityUpdate"

    invoke-static {v14, v1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v9, 0x0

    move/from16 v16, v9

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/sec/ims/util/ImsUri;

    .line 345
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 347
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-interface {v4, v6, v2, v3, v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateAvailableFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J

    move-result-wide v7

    .line 349
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-interface {v4, v6, v7, v8, v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J

    move-result-wide v29

    .line 350
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 351
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v17

    move-object/from16 v5, p5

    move-wide/from16 v31, v7

    move-wide/from16 v7, v29

    move-object v11, v10

    move-object/from16 v33, v15

    move v15, v9

    move-wide/from16 v9, v17

    .line 350
    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 352
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p5

    :goto_2
    move v9, v15

    move-object/from16 v15, v33

    goto :goto_1

    .line 360
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v17

    move/from16 v4, p7

    int-to-long v5, v4

    new-instance v26, Ljava/util/Date;

    invoke-direct/range {v26 .. v26}, Ljava/util/Date;-><init>()V

    move-object/from16 v18, v11

    move-wide/from16 v19, v29

    move-wide/from16 v21, v31

    move-object/from16 v23, p6

    move-wide/from16 v24, v5

    move-object/from16 v27, p8

    move-object/from16 v28, p9

    invoke-virtual/range {v17 .. v28}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->update(Lcom/sec/ims/util/ImsUri;JJLjava/lang/String;JLjava/util/Date;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    or-int v5, v16, v5

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processUpdateCapabilities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is updated, features: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", hasCapChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-static {v14, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v6, 0x12010005

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_3
    const-string/jumbo v9, "xx"

    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 367
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-wide/from16 v7, v31

    invoke-virtual {v6, v11, v7, v8, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->sendGateMessage(Lcom/sec/ims/util/ImsUri;JI)V

    move-object/from16 v11, p5

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_4
    move v15, v9

    .line 370
    invoke-interface {v13, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 371
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 372
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 374
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->translate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual {v2, v3}, Lcom/sec/ims/options/Capabilities;->setBotServiceId(Ljava/lang/String;)V

    .line 378
    :cond_5
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v13, v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;I)V

    :cond_6
    return-void
.end method

.method private processUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    .line 335
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v12, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object v2, p1

    move/from16 v3, p8

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;Ljava/util/List;IJLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method _syncContact(Lcom/sec/internal/constants/Mno;)V
    .locals 4

    .line 385
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    if-nez v0, :cond_0

    const-string v0, "_syncContact: MnoStrategy is null"

    .line 386
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    :cond_1
    const-string v0, "_syncContact: initial startContactSync"

    .line 396
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setMno(Lcom/sec/internal/constants/Mno;)V

    .line 399
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result p1

    if-ltz p1, :cond_2

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_0

    :cond_2
    const-string p0, "_syncContact: contactProvider is not yet ready"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x12010008

    const-string p1, "N,CP:NOTREADY"

    .line 403
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method getLastSeen(I)I
    .locals 5

    .line 494
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUserLastActive(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-string v1, "CapabilityUpdate"

    if-gtz v0, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last active timestamp "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Current Time Stamp "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 500
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v2, p0

    const-wide/32 p0, 0xea60

    .line 501
    div-long/2addr v2, p0

    long-to-int p0, v2

    int-to-long p0, p0

    const-wide/32 v2, 0xa8c0

    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p0, v2

    .line 504
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " last seen value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p0, p0

    return p0
.end method

.method isPollingInProgress(Ljava/util/Date;ILjava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)Z"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CapabilityUpdate"

    if-nez v0, :cond_0

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isPollingInProgress: mConfig for phoneId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isPollingPeriodUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->resetPollingPeriodUpdated()V

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isPollingPeriodUpdated: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isPollingPeriodUpdated()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string p0, "isPollingInProgress: subscribe throttle in progress"

    .line 292
    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 296
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 297
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    return v3

    :cond_4
    return v1
.end method

.method isServiceRegistered(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getActiveDataPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getActiveDataPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ImsRegistration;

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isServiceRegistered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CapabilityUpdate"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method needPollOnContactChanged(ZLjava/util/Date;IJ)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CapabilityUpdate"

    if-nez p1, :cond_0

    const-string p1, "needPollOnContactChanged: isPollRequired is false."

    .line 237
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(ZI)V

    return v0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "needPollOnContactChanged: No URI to request."

    .line 242
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(ZI)V

    return v0

    .line 247
    :cond_1
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 248
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_2

    .line 249
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_3

    :cond_2
    const-string p0, "needPollOnContactChanged: Address book scan disabled."

    .line 250
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 254
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isPollingInProgress(Ljava/util/Date;I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "needPollOnContactChanged: posting delayed poll event"

    .line 256
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 258
    invoke-virtual {p0, p4, p5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getDelayTimeToPoll(JI)J

    move-result-wide p3

    .line 257
    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p2

    :cond_4
    const-string p0, "needPollOnContactChanged: polling already in progress"

    .line 261
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 265
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 266
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "needPollOnContactChanged: posting poll event"

    .line 267
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 269
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 270
    invoke-virtual {p0, p4, p5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getDelayTimeToPoll(JI)J

    move-result-wide p3

    .line 269
    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p2

    :cond_6
    const-string p1, "needPollOnContactChanged: new contact was added but RCS not work"

    .line 273
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsOfflineAddedContact(ZI)V

    return v0
.end method

.method onContactChanged(ZIZJ)V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    if-nez v0, :cond_0

    const-string p0, "onContactChanged: mUriGenerator is null"

    .line 531
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactChanged: initial = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->processContactChanged(ZIZJ)V

    return-void
.end method

.method onOwnCapabilitiesChanged(I)V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOwnCapabilitiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 412
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityUpdate"

    .line 411
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method onRetrySyncContact(I)V
    .locals 4

    const-string v0, "CapabilityUpdate"

    const-string v1, "onRetrySyncContact"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x12010009

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    const-string p0, "onRetrySyncContact: max retry count exceed"

    .line 514
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result v1

    if-ltz v1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setRetrySyncContactCount(I)V

    .line 520
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->syncContact()V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setRetrySyncContactCount(I)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRetrySyncContact: contactProvider is not yet ready, retrycount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move/from16 v8, p8

    const-string v2, "CapabilityUpdate"

    if-nez v1, :cond_0

    const-string v0, "onUpdateCapabilities: uris null, return"

    .line 308
    invoke-static {v2, v8, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 312
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    if-eqz v6, :cond_1

    .line 315
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_2
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    move-wide v9, p2

    move-object/from16 v7, p11

    invoke-virtual {v5, p2, p3, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v5

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onUpdateCapabilities: uriList "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v8, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onUpdateCapabilities: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " result "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " features "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v5, v6}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v2, v8, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p4, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setLastCapExResult(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;I)V

    .line 325
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v5

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 329
    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->processUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V

    return-void
.end method

.method prepareResponse(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v10, p6

    move-object/from16 v11, p8

    const-string v12, "CapabilityUpdate"

    const-string v4, "prepareResponse"

    .line 417
    invoke-static {v12, v10, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v4, :cond_9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 422
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    const/4 v13, 0x0

    move/from16 v8, p9

    invoke-interface {v4, v5, v8, v13, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v7

    .line 423
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    .line 426
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v6

    .line 427
    invoke-static/range {p7 .. p7}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    const-string v14, ""

    if-nez v9, :cond_1

    invoke-static {v6}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 428
    new-instance v9, Ljava/util/ArrayList;

    const-string v15, ","

    move-object/from16 v13, p7

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    invoke-interface {v9, v6}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 430
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 431
    invoke-static {v15, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto :goto_0

    :cond_1
    move-object v13, v14

    .line 434
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Common extfeature: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    .line 437
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 438
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v14

    :cond_2
    const/4 v6, 0x0

    .line 440
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, p1

    invoke-static {v9, v6}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 441
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v5

    move/from16 v8, p9

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v4

    .line 448
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    invoke-static {v14}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    and-long/2addr v4, v2

    :cond_3
    if-eqz v16, :cond_4

    .line 451
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isLastSeenActive()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "lastseen"

    .line 452
    invoke-virtual {v0, v6, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->isServiceRegistered(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v2, v3, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "setting last seen active"

    .line 454
    invoke-static {v12, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->getLastSeen(I)I

    move-result v15

    .line 457
    :cond_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    move-object/from16 v3, p10

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_1

    .line 459
    :cond_5
    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    const-string v9, "block_msg"

    invoke-interface {v6, v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 460
    new-instance v4, Ljava/util/HashSet;

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 461
    invoke-interface {v7, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 462
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v5

    move/from16 v8, p9

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v4

    .line 469
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_6

    invoke-static {v14}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    and-long/2addr v4, v2

    .line 472
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number is blocked respond with Chat tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 474
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number is blocked respond with empty tags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 479
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    move-wide v2, v4

    move-object/from16 v4, p5

    move v5, v15

    move/from16 v6, p6

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z

    :cond_8
    return-void

    :cond_9
    :goto_3
    const-string v0, "prepareResponse: mRegMan or mImsRegInfo is null"

    .line 419
    invoke-static {v12, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method processContactChanged(ZIZJ)V
    .locals 9

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;ZIZJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setLegacyLatching(Landroid/content/Context;Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 4

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLegacyLatching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isLatching = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v2

    if-eq v2, p3, :cond_1

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLegacyLatching: Latching is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    invoke-virtual {v0, p3}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 550
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistCachedUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2, v1, v0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;I)V

    .line 555
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->sendRCSLInfoToHQM(Landroid/content/Context;ZI)V

    const p0, 0x12010002

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method setOwnCapabilities(Landroid/content/Context;IZLjava/util/Map;IZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move v8, p2

    const-string v0, "CapabilityUpdate"

    const-string/jumbo v2, "setOwnCapabilities:"

    .line 186
    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/sec/ims/options/Capabilities;

    .line 189
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-object v4, p4

    move v6, p5

    invoke-virtual {v2, p4, v3, p5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 191
    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    .line 192
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move v6, p5

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v2

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-eq v8, v4, :cond_0

    .line 194
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterEnrichedCallFeatures(J)J

    move-result-wide v2

    goto :goto_0

    .line 196
    :cond_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithCallState(JZLjava/lang/String;)J

    move-result-wide v2

    .line 199
    :goto_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setHasVideoOwnCapability(ZI)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOwnCapabilities: mHasVideoOwn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->hasVideoOwnCapability(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v4, 0x12010004

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",SETOWN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 203
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->setOwnCapabilities(JI)V

    .line 204
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setOwnCapabilities(JI)V

    .line 209
    :cond_1
    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 210
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "setOwnCapabilities: Add ownCap to CapabilitiesCache"

    .line 211
    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "setOwnCapabilities: updateOwnCapabilities"

    .line 218
    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 225
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p2, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V

    .line 228
    :cond_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyOwnCapabilitiesChanged(I)V

    return-void
.end method

.method updateOwnCapabilities(Landroid/content/Context;Ljava/util/Map;IZI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;IZI)V"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 73
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getSupportFeature(I)J

    move-result-wide v3

    or-long/2addr v1, v3

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isLastSeenActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "lastseen"

    .line 80
    invoke-static {p1, v0, p3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 81
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    or-long/2addr v1, v4

    :cond_2
    move-wide v5, v1

    .line 84
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOwnCapabilities: isConfiguredOnCapability is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", features from all module is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    .line 85
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 88
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p5

    .line 90
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(II)V

    :cond_3
    move v8, p5

    .line 92
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    const/4 p4, 0x0

    invoke-interface {p1, p2, v8, p4, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v7

    .line 95
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v5

    .line 96
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    if-eq p3, p1, :cond_4

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterEnrichedCallFeatures(J)J

    move-result-wide v5

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateOwnCapabilities: filtered features is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/options/Capabilities;

    .line 102
    invoke-virtual {p1, v5, v6}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 103
    invoke-virtual {p1, v5, v6}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 104
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putOwnList(ILcom/sec/ims/options/Capabilities;)V

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, v3, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsConfigured(ZI)V

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, v3, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsConfiguredOnCapability(ZI)V

    return-void
.end method
