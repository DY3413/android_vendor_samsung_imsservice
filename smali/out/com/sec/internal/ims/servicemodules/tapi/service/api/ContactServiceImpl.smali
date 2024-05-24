.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;
.super Lcom/gsma/services/rcs/contact/IContactService$Stub;
.source "ContactServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

.field private mContext:Landroid/content/Context;

.field private presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    const-string v1, "options"

    .line 76
    invoke-static {v1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCursor(Lcom/gsma/services/rcs/contact/ContactId;)Landroid/database/Cursor;
    .registers 8

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.gsma.services.rcs.provider.blockedcontact/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getRcsContacts(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getContactIds()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 168
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getContactInfo(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 170
    invoke-interface {p1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;->inScope(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 171
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_37
    return-object v0
.end method


# virtual methods
.method public blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2d

    .line 314
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_1c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setBlockingState(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object p1

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->changeContactInfo(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 319
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2c
    return-void

    .line 312
    :cond_2d
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "contact is null!"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBlockTime(Lcom/gsma/services/rcs/contact/ContactId;)J
    .registers 5

    .line 450
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getCursor(Lcom/gsma/services/rcs/contact/ContactId;)Landroid/database/Cursor;

    move-result-object v0

    .line 451
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result p0

    const-wide/16 v1, -0x1

    const/4 p1, 0x1

    if-ne p1, p0, :cond_1f

    if-eqz v0, :cond_1f

    .line 453
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "key_blocking_timestamp"

    .line 455
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 454
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_25

    :cond_1f
    if-eqz v0, :cond_24

    .line 461
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_24
    return-wide v1

    :catchall_25
    move-exception p0

    if-eqz v0, :cond_30

    .line 450
    :try_start_28
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p0
.end method

.method public getContactIds()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    :try_start_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    if-nez v1, :cond_17

    .line 187
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "capabilitiesArray = null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_17
    array-length v3, v1

    :goto_18
    if-ge v2, v3, :cond_3f

    aget-object v4, v1, v2

    .line 194
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2b

    goto :goto_38

    .line 198
    :cond_2b
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v4

    .line 199
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_38} :catch_3b

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_3b
    move-exception p0

    .line 202
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3f
    return-object v0
.end method

.method public getContactInfo(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;-><init>()V

    .line 359
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 361
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 363
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return-object v0
.end method

.method public getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_81

    .line 116
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_81

    .line 120
    :cond_b
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getContactInfo(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    move v6, v3

    .line 125
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v11

    if-eqz v6, :cond_27

    .line 127
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    :cond_27
    move-object v7, v0

    .line 129
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsContact ContactId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", contactInfo = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", registered = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", capApi = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", DisplayName"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p1, Lcom/gsma/services/rcs/contact/RcsContact;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v5

    .line 134
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getBlockTime(Lcom/gsma/services/rcs/contact/ContactId;)J

    move-result-wide v9

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/gsma/services/rcs/contact/RcsContact;-><init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;JZ)V

    return-object p1

    :cond_81
    :goto_81
    return-object v0
.end method

.method public getRcsContacts()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 215
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getRcsContacts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;-><init>()V

    .line 219
    :try_start_13
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    const/4 v4, 0x0

    .line 220
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_1e
    array-length v5, v3

    move v6, v4

    :goto_20
    if-ge v6, v5, :cond_a8

    aget-object v7, v3, v6

    .line 227
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a0

    .line 229
    new-instance v9, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v9, v8}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 231
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsDisplayName(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_53

    move v8, v10

    goto :goto_54

    :cond_53
    move v8, v11

    :goto_54
    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatus(I)V

    .line 235
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_5e

    move v10, v11

    :cond_5e
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRegistrationState(I)V

    .line 239
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 242
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v7

    .line 241
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setCapabilities(Lcom/gsma/services/rcs/capability/Capabilities;)V

    .line 244
    new-instance v7, Lcom/gsma/services/rcs/contact/RcsContact;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v13

    .line 245
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result v8

    if-ne v8, v11, :cond_79

    move v14, v11

    goto :goto_7a

    :cond_79
    move v14, v4

    .line 247
    :goto_7a
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v15

    .line 248
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    .line 249
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getBlockTime(Lcom/gsma/services/rcs/contact/ContactId;)J

    move-result-wide v17

    .line 250
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v8

    if-eqz v8, :cond_97

    move/from16 v19, v11

    goto :goto_99

    :cond_97
    move/from16 v19, v4

    :goto_99
    move-object v12, v7

    invoke-direct/range {v12 .. v19}, Lcom/gsma/services/rcs/contact/RcsContact;-><init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;JZ)V

    .line 244
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_a0} :catch_a4

    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_20

    :catch_a4
    move-exception v0

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a8
    return-object v1
.end method

.method public getRcsContactsOnline()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContactsOnline"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContacts(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContactsSupporting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContacts(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 6

    .line 431
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getCursor(Lcom/gsma/services/rcs/contact/ContactId;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 433
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "key_blocked"

    .line 434
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_49

    goto :goto_19

    :cond_17
    const-string p1, ""

    :goto_19
    :try_start_19
    const-string v0, "BLOCKED"

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 442
    :goto_24
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string blocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "count ==1 mIsBlocked: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_49

    if-eqz p0, :cond_48

    .line 443
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_48
    return v0

    :catchall_49
    move-exception p1

    if-eqz p0, :cond_54

    .line 431
    :try_start_4c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw p1
.end method

.method public setBlockingState(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;-><init>()V

    .line 344
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setBlockingState(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setBlockingTimestamp(J)V

    .line 346
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V

    return-object v0
.end method

.method public setContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 373
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatus(I)V

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRegistrationState(I)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    .line 383
    :try_start_32
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 384
    invoke-virtual {v4}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v4

    .line 383
    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_d1

    if-eqz v2, :cond_d0

    .line 390
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 391
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsDisplayName(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_60

    move v3, v4

    goto :goto_61

    :cond_60
    move v3, v5

    .line 392
    :goto_61
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatus(I)V

    .line 395
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_6b

    move v4, v5

    .line 394
    :cond_6b
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRegistrationState(I)V

    .line 397
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RcsStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRcsStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 405
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setCapabilities(Lcom/gsma/services/rcs/capability/Capabilities;)V

    .line 408
    :cond_9d
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v2, :cond_b2

    .line 409
    invoke-interface {v2, v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    if-nez v2, :cond_b3

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    goto :goto_b3

    :cond_b2
    const/4 v2, 0x0

    :cond_b3
    :goto_b3
    if-eqz v2, :cond_d0

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "presenceInfo.getContactId() = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setPresenceInfo(Lcom/sec/ims/presence/PresenceInfo;)V

    :cond_d0
    return-void

    :catch_d1
    move-exception p0

    .line 386
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2e

    .line 330
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unblockContact contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_1d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setBlockingState(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object p1

    .line 333
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->changeContactInfo(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p0

    .line 335
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2d
    return-void

    .line 328
    :cond_2e
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "contact is null!"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
