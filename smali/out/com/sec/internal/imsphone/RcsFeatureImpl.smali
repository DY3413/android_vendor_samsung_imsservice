.class public Lcom/sec/internal/imsphone/RcsFeatureImpl;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "RcsFeatureImpl.java"


# static fields
.field private static final CAP_TO_SERVICE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "RcsFeatureImpl"

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mIsReady:Z

.field mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v1, 0x3

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->CAP_TO_SERVICE:Ljava/util/Map;

    const-string v2, "options"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "presence"

    .line 72
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .registers 3

    .line 46
    invoke-direct {p0, p2}, Landroid/telephony/ims/feature/RcsFeature;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mIsReady:Z

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 47
    iput p1, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 9

    .line 96
    iget p2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v0, "changeEnabledCapabilities"

    const-string v1, "RcsFeatureImpl"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_c

    return-void

    .line 101
    :cond_c
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object p2

    .line 104
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 105
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->removeCapabilities(I)V

    .line 106
    iget v3, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEnabledCapabilities: disabled capa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_18

    .line 109
    :cond_46
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 110
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 111
    iget v2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEnabledCapabilities: enabled capa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4e

    .line 114
    :cond_7c
    invoke-virtual {p0, p2}, Landroid/telephony/ims/feature/RcsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    return-void
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .registers 5

    .line 119
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "createCapabilityExchangeImpl"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 121
    new-instance p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    invoke-direct {p1, p0}, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;-><init>(I)V

    return-object p1
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .registers 3

    .line 126
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "destroyCapabilityExchangeImpl"

    const-string v0, "RcsFeatureImpl"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public isReady()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mIsReady:Z

    return p0
.end method

.method public onFeatureReady()V
    .registers 2

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mIsReady:Z

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Landroid/telephony/ims/feature/RcsFeature;->setFeatureState(I)V

    return-void
.end method

.method public onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 156
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "onPublishUpdated"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    :try_start_9
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_2f

    .line 159
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V
    :try_end_13
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_13} :catch_37

    const-string v1, ""

    if-eqz p2, :cond_18

    goto :goto_19

    :cond_18
    move-object p2, v1

    .line 160
    :goto_19
    :try_start_19
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    if-eqz p4, :cond_20

    goto :goto_21

    :cond_20
    move-object p4, v1

    .line 161
    :goto_21
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V

    goto :goto_3b

    .line 165
    :cond_2f
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "onPublishUpdated : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/telephony/ims/ImsException; {:try_start_19 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    .line 168
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_3b
    return-void
.end method

.method public onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "onRemoteCapabilityRequest"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    :try_start_9
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_11

    .line 176
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    goto :goto_1d

    .line 178
    :cond_11
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "onRemoteCapabilityRequest : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_18
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 181
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .registers 5

    .line 130
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPublishCapabilities: publishTriggerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    :try_start_18
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_20

    .line 133
    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V

    goto :goto_2c

    .line 135
    :cond_20
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "onRequestPublishCapabilities : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_27
    .catch Landroid/telephony/ims/ImsException; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 138
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method public onUnPublish()V
    .registers 4

    .line 143
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "onUnpublish"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    :try_start_9
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_11

    .line 146
    invoke-interface {v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V

    goto :goto_1d

    .line 148
    :cond_11
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v0, "onUnpublish : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_18
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 151
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .registers 8

    const-string/jumbo v0, "unknown"

    .line 77
    iget v1, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo v2, "queryCapabilityConfiguration"

    const-string v3, "RcsFeatureImpl"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 80
    :try_start_e
    sget-object v2, Lcom/sec/internal/imsphone/RcsFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 81
    sget-object v2, Lcom/sec/internal/imsphone/RcsFeatureImpl;->CAP_TO_SERVICE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    return v1

    .line 86
    :cond_36
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_3c} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_3c} :catch_3d

    return p0

    :catch_3d
    move-exception p1

    .line 88
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "queryCapabilityConfiguration: failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method
