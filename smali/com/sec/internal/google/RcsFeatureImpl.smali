.class public Lcom/sec/internal/google/RcsFeatureImpl;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "RcsFeatureImpl.java"


# static fields
.field public static final FEATURE_TYPE_RCS_OPTIONS:I = 0x0

.field public static final FEATURE_TYPE_RCS_PRESENCE:I = 0x1

.field public static final FEATURE_TYPE_RCS_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

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

.field private final mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const-class v0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v2, 0x3

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/internal/google/GoogleImsService;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature;->initialize(Landroid/content/Context;I)V

    .line 47
    iput p2, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    .line 48
    iput-object p3, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    .line 49
    sget-object p1, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    const-string p3, "creator set state STATE_READY"

    invoke-static {p1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 50
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->setFeatureState(I)V

    return-void
.end method

.method private convertCapabilities(II)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    if-eq p2, p0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    if-eq p1, p0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    :cond_1
    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 8

    .line 108
    sget-object p2, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "changeEnabledCapabilities"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 114
    fill-array-data v0, :array_0

    new-array p2, p2, [Z

    const/4 v1, 0x0

    .line 118
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 121
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 122
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/google/RcsFeatureImpl;->convertCapabilities(II)I

    move-result v3

    .line 123
    sget-object v4, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeEnabledCapabilities: disabled capa = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    aput-boolean v1, p2, v3

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 128
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/sec/internal/google/RcsFeatureImpl;->convertCapabilities(II)I

    move-result v1

    .line 129
    sget-object v2, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEnabledCapabilities: enabled capa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 130
    aput-boolean v2, p2, v1

    goto :goto_1

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    invoke-virtual {p1, p0, v0, p2}, Lcom/sec/internal/google/GoogleImsService;->updateRcsCapabilities(I[I[Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method protected convertCapabilities([I)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .locals 5

    .line 157
    array-length v0, p1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 159
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 160
    aget v4, p1, v2

    if-ne v4, v2, :cond_0

    .line 161
    aput-boolean v3, v0, v2

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1

    .line 164
    aput-boolean v1, v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_2
    new-instance p1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {p1, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 168
    aget-boolean v1, v0, v1

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {p1, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 171
    :cond_3
    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 172
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 174
    :cond_4
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapabilities - capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 3

    .line 71
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v2, "createCapabilityExchangeImpl"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 73
    new-instance p1, Lcom/sec/internal/google/RcsCapabilityExchangeImpl;

    iget-object v0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/google/RcsCapabilityExchangeImpl;-><init>(Lcom/sec/internal/google/GoogleImsService;I)V

    return-object p1
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 1

    .line 78
    sget-object p1, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v0, "destroyCapabilityExchangeImpl"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getFeatureState()I
    .locals 2

    .line 55
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "getFeatureState"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x2

    return p0
.end method

.method notifyRcsFeatureCapableChanged()V
    .locals 4

    .line 179
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v2, "notifyRcsFeatureCapableChanged"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v1, v0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iget v2, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToRcsFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/sec/internal/google/RcsFeatureImpl;->convertCapabilities([I)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/feature/RcsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    sget-object v1, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCapabilitiesStatusChanged: failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 2

    .line 66
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "onFeatureReady"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onFeatureRemoved()V
    .locals 2

    .line 61
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "onFeatureRemoved"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 216
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v2, "onPublishUpdated"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "onPublishUpdated : mCapabilityExchangeEventListener is Null"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .locals 3
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

    .line 229
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v2, "onRemoteCapabilityRequest"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    goto :goto_0

    .line 234
    :cond_0
    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "onRemoteCapabilityRequest : mCapabilityExchangeEventListener is Null"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method onRequestPublishCapabilities(I)V
    .locals 4

    .line 190
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPublishCapabilities: publishTriggerType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v1, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "onRequestPublishCapabilities : mCapabilityExchangeEventListener is Null"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method onUnPublish()V
    .locals 3

    .line 203
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v2, "onUnpublish"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V

    goto :goto_0

    .line 208
    :cond_0
    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "onUnpublish : mCapabilityExchangeEventListener is Null"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 3

    .line 83
    sget-object v0, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    const-string v2, "queryCapabilityConfiguration"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    :try_start_0
    sget-object v1, Lcom/sec/internal/google/RcsFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const-string p1, "presence"

    goto :goto_0

    :cond_1
    const-string p1, "options"

    .line 99
    :goto_0
    iget v1, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    invoke-static {p1, p2, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 101
    sget-object p2, Lcom/sec/internal/google/RcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/google/RcsFeatureImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCapabilityConfiguration: failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method
