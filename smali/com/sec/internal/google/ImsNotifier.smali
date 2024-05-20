.class public Lcom/sec/internal/google/ImsNotifier;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/IImsNotifier;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsNotifier"


# instance fields
.field private mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

.field protected final mRegistrationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGoogleImsService(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/SipTransportNotifier;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    .line 44
    iput-object p2, p0, Lcom/sec/internal/google/ImsNotifier;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    return-void
.end method

.method private getImsRegAttribute(Lcom/sec/ims/ImsRegistration;)Landroid/telephony/ims/ImsRegistrationAttributes;
    .locals 3

    .line 133
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(IZ)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    .line 134
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->getRegisteredFeatureTags(I)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method private notifyRegistrationCallback(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;Z)V
    .locals 9

    .line 101
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 108
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsNotifier;->getImsRegAttribute(Lcom/sec/ims/ImsRegistration;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    if-eqz p4, :cond_1

    .line 114
    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, v5, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/Uri;

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_1

    .line 117
    :cond_0
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v6

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result v7

    .line 118
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 119
    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    new-array v5, v2, [Landroid/net/Uri;

    .line 120
    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 121
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v4, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Landroid/net/Uri;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_3
    return-void
.end method

.method private notifyRegistrationListener(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;Z)V
    .locals 5

    .line 139
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 140
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 141
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ServiceProfile;

    .line 142
    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v3

    .line 143
    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(IZ)I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V

    if-eqz p4, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v2, v2, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 157
    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/net/Uri;

    .line 158
    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private totalVolteRegistrationSize(I)I
    .locals 5

    .line 298
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 299
    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 300
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 301
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public addCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 6

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsNotifier;->totalVolteRegistrationSize(I)I

    move-result v0

    .line 50
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 53
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    .line 54
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_1

    .line 56
    :cond_0
    :try_start_0
    invoke-direct {p0, v4}, Lcom/sec/internal/google/ImsNotifier;->getImsRegAttribute(Lcom/sec/ims/ImsRegistration;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v5

    invoke-interface {p2, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 57
    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v5, p1, v4}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v4, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    invoke-interface {p2, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public notifyFeatureCapableChanged(I)V
    .locals 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureCapableChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNotifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 252
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ServiceProfile;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    .line 259
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v1

    iget-object v3, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v3, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v4, v4, p1

    .line 260
    invoke-virtual {v3, v4}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v3

    const/4 v4, 0x0

    .line 259
    invoke-interface {v2, v1, v3, v4}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyImsRegistration(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 1

    .line 88
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->enabledSingleRegistration(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result p1

    .line 91
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyRegistrationCallback(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;Z)V

    .line 92
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyRegistrationListener(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;Z)V

    .line 95
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/google/SipTransportNotifier;->onRegistrationChanged(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    :cond_2
    return-void
.end method

.method public onCdpnInfo(ILjava/lang/String;I)V
    .locals 2

    const-string v0, "[^+?0-9]+"

    const-string v1, " "

    .line 229
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 231
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/internal/ISecImsMmTelEventListener;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/ISecImsMmTelEventListener;->onCdpnInfo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 238
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/GoogleImsService;->getCmcTypeFromRegHandle(I)I

    move-result p0

    .line 240
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->setDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    .line 242
    :try_start_0
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->getImsExternalCallStateListener()Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object p0

    .line 243
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {p1}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->getExternalCallStateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onIncomingCall(II)V
    .locals 7

    const-string v0, "net.sip.vzthirdpartyapi"

    const/4 v1, 0x0

    .line 167
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 172
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ServiceProfile;

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 174
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:imsCallID"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android:imsServiceId"

    .line 176
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v1, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 181
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "com.samsung.telephony.extra.SEM_EXTRA_FORWARDED_CALL"

    .line 183
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_2
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    const-string v5, "android:ussd"

    const/4 v6, 0x1

    .line 187
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    :cond_3
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.samsung.ims.extra.ECHO_CALL_ID"

    .line 191
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.ims.extra.EPSFB_SUCCESS"

    .line 192
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    :cond_4
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.samsung.ims.extra.ECHO_CELL_ID"

    .line 196
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4}, Lcom/sec/internal/google/GoogleImsService;->getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v2, v1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->postProcessForCmcIncomingCall(ILandroid/content/Intent;Lcom/sec/internal/google/ServiceProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 202
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 206
    :cond_6
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v1, v1, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/ISecImsMmTelEventListener;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/android/ims/internal/ISecImsMmTelEventListener;->onIncomingCall(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 208
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 1

    .line 216
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result p1

    .line 217
    iget-object p2, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object p2, p2, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/google/ImsNotifier;->onIncomingCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 222
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 2

    const-string v0, "ImsNotifier"

    const-string v1, "onP2pPushCallEvent"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/ImsNotifier$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/google/ImsNotifier$2;-><init>(Lcom/sec/internal/google/ImsNotifier;Lcom/sec/ims/DialogEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onP2pRegCompleteEvent()V
    .locals 2

    const-string v0, "ImsNotifier"

    const-string v1, "onP2pRegCompleteEvent"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/ImsNotifier$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/ImsNotifier$1;-><init>(Lcom/sec/internal/google/ImsNotifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
