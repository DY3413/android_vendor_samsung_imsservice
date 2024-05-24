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
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private addUriToLatchingList(Lcom/sec/ims/util/ImsUri;I)V
    .registers 3

    .line 125
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
    .registers 3

    .line 89
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
    .registers 5

    .line 141
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
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_21

    .line 42
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 43
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer-IA;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method public isExistInLatchingList(Lcom/sec/ims/util/ImsUri;I)Z
    .registers 3

    .line 133
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
    .registers 3

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public processForResolvingLatchingStatus(Lcom/sec/ims/util/ImsUri;JI)V
    .registers 12

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$misEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 94
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Wrong incoming xms. Not processed."

    invoke-static {p0, p4, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 98
    :cond_1a
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 100
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->checkSenderCapability(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 102
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Registered. check sending options"

    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckTimestampInOptionsList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;J)Z

    move-result p0

    if-nez p0, :cond_4a

    return-void

    .line 111
    :cond_4a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long p2, p2

    or-long v4, p0, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    goto :goto_6a

    .line 118
    :cond_60
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Not registered. store uri in list"

    invoke-static {p2, p4, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->addUriToLatchingList(Lcom/sec/ims/util/ImsUri;I)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public registerXmsReceiver(I)V
    .registers 6

    .line 52
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register xms receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    if-nez v0, :cond_21

    .line 54
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    :cond_21
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    if-nez v0, :cond_47

    .line 60
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_36
    const-string v1, "application/vnd.wap.mms-message"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v1

    .line 66
    invoke-virtual {v1}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    .line 68
    :goto_40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    :cond_47
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    const-string v0, "expire_time_for_resending_options"

    const/4 v1, 0x0

    .line 72
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 71
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$msetOptionsExpireTimer(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;J)V

    return-void
.end method

.method public removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;I)Z
    .registers 3

    .line 129
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
    .registers 2

    .line 137
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
    .registers 3

    .line 145
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
    .registers 4

    .line 76
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister xms receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 78
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 82
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    if-eqz v0, :cond_1f

    .line 83
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    :cond_1f
    return-void
.end method
