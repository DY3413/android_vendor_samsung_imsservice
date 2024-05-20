.class public Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;
.super Ljava/lang/Object;
.source "ImLatchingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImLatchingProcessor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mLatchingUriList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

.field private mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private addUriToLatchingList(Lcom/sec/ims/util/ImsUri;I)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$maddUriToLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method


# virtual methods
.method public checkAfterSimChanged(ILjava/lang/String;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckAfterSimChanged(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Ljava/lang/String;)V

    return-void
.end method

.method public checkTimestampInOptionsList(Lcom/sec/ims/util/ImsUri;JI)Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckTimestampInOptionsList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;J)Z

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer-IA;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isExistInLatchingList(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$misExistInLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method protected normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public processForResolvingLatchingStatus(Lcom/sec/ims/util/ImsUri;JI)V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$misEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Wrong incoming xms. Not processed."

    invoke-static {p0, p4, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 98
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->checkSenderCapability(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Registered. check sending options"

    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckTimestampInOptionsList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;J)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 109
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long p2, p2

    or-long v4, p0, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    goto :goto_0

    .line 116
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Not registered. store uri in list"

    invoke-static {p2, p4, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->addUriToLatchingList(Lcom/sec/ims/util/ImsUri;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public registerXmsReceiver(I)V
    .locals 3

    .line 50
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "register xms receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "application/vnd.wap.mms-message"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 70
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string p1, "expire_time_for_resending_options"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    .line 69
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$msetOptionsExpireTimer(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;J)V

    return-void
.end method

.method public removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mremoveUriFromLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method public resetUriList(I)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mresetUriList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)V

    return-void
.end method

.method public setXmsReceiverEnabled(IZ)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$msetEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Z)V

    return-void
.end method

.method public unregisterXmsReceiver()V
    .locals 3

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister xms receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    if-eqz v0, :cond_1

    .line 81
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    :cond_1
    return-void
.end method
