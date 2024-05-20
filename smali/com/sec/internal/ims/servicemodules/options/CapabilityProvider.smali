.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.super Landroid/content/ContentProvider;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;
    }
.end annotation


# static fields
.field static final ADDITIONAL_INFO_LOCAL_OFFLINE:Ljava/lang/String; = "local_offline;"

.field static final ADDITIONAL_INFO_NONE:Ljava/lang/String; = ""

.field static final ADDITIONAL_INFO_REMOTE_OFFLINE:Ljava/lang/String; = "remote_offline;"

.field static final ADDITIONAL_INFO_REMOTE_ONLINE:Ljava/lang/String; = "fresh;"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.serviceprovider"

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityProvider"

.field static final N_INCALL_SERVICE:I = 0x4

.field static final N_LOOKUP_URI:I = 0x1

.field static final N_LOOKUP_URI_ID:I = 0x2

.field static final N_OPERATOR_RCS_VERSION:I = 0x7

.field static final N_OWN_CAPS:I = 0x5

.field static final N_RCS_BIG_DATA:I = 0x8

.field static final N_RCS_ENABLED_STATIC:I = 0x6

.field static final N_SIP_URI:I = 0x3

.field private static final OPTIONS_PATTERN:Ljava/util/regex/Pattern;

.field private static ready_ish:Z

.field private static ready_vsh:Z

.field static sMatcher:Landroid/content/UriMatcher;


# instance fields
.field mAsyncResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDataNetworkType:I

.field private mIsWifiConnected:Z

.field private mLastInCallUri:Lcom/sec/ims/util/ImsUri;

.field mLock:Ljava/lang/Object;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

.field mService:Lcom/sec/ims/options/ICapabilityService;

.field private final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static synthetic $r8$lambda$CdFM4Y1WfFDLmX-CZmCelKtuSUA(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInCallUri(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataNetworkType(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCapabilityChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyInCallServicesChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOwnServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyOwnServicesChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwakeup(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->wakeup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputready_ish(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputready_vsh(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smcreateIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\\?"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    .line 111
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 117
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.samsung.rcs.serviceprovider"

    const-string v3, "lookup/*/#"

    const/4 v4, 0x2

    .line 119
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v3, "lookup/*"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "sip/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "incall/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "own"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "rcs_enabled_static"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "operator_rcs_version"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "rcs_big_data/*"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    .line 85
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    .line 993
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$2;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1003
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 911
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has call composer feature: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 913
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 947
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 954
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 961
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 805
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 814
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "ft-in-group-chat"

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 796
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 823
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 847
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 840
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 787
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    .line 903
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.contentsharing.action.IMAGE_SHARE_CAMERA"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    const-string p2, "Take a picture"

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    .line 895
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.contentsharing.action.IMAGE_SHARE_FILE"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    const-string p2, "Picture"

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 1078
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 1080
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    .line 1081
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 1082
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    .line 1083
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private createPlugInRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p2, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 938
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has post call feature: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 940
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 878
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    .line 887
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    const-string p2, "Live video"

    aput-object p2, p0, p1

    return-object p0
.end method

.method private createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 920
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has shared map feature: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 922
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 929
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has shared sketch feature: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 931
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    aput-object v0, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x4

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    sget-object p1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const/4 p1, 0x3

    const-string p2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "android.intent.category.DEFAULT"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    aput-object p3, p0, p1

    const/4 p1, 0x6

    aput-object p4, p0, p1

    const/4 p1, 0x7

    aput-object p5, p0, p1

    const/16 p1, 0x8

    aput-object p6, p0, p1

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->initCapabilityService()V

    return-void
.end method

.method private notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V
    .locals 3

    const-string v0, "CapabilityProvider"

    const-string v1, "notifyCapabilityChange"

    .line 1020
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilityChange: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.serviceprovider/sip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 1025
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyInCallServicesChange()V
    .locals 2

    const-string v0, "CapabilityProvider"

    const-string v1, "notifyInCallServicesChange"

    .line 1036
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.rcs.serviceprovider/incall"

    .line 1039
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyOwnServicesChange()V
    .locals 2

    const-string v0, "CapabilityProvider"

    const-string v1, "notifyOwnServicesChange"

    .line 1029
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    .line 1032
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private wakeup()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1054
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "CapabilityProvider"

    const-string p1, "getImsUriListFromQuery: null uris"

    .line 721
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 724
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\\s*,\\s*"

    .line 725
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 727
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 728
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 729
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 732
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 0

    const-string p0, "disable_requery"

    .line 750
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 755
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_0
    const-string p0, "force_requery"

    .line 756
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 761
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_1
    const-string p0, "force_requery_uce"

    .line 762
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 766
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_2
    const-string p0, "force_requery_sync"

    .line 767
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 771
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_3
    const-string p0, "msg_conditional_requery"

    .line 772
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 778
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 781
    :cond_4
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1044
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Operation not supported for uri:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method initCapabilityService()V
    .locals 4

    const-string v0, "CapabilityProvider"

    const-string v1, "Connecting to CapabilityDiscoveryService."

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    sget-object p0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3, p0}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1049
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 3

    const-string v0, "CapabilityProvider"

    const-string v1, "onCreate"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 138
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    .line 140
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    .line 142
    new-instance v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    .line 143
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;)V

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 147
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 148
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ImsFrameworkState;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/os/ImsFrameworkState;->registerForFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 273
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query(Uri, String[], String, String[], String) - uri: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", selection: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", args: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "CapabilityProvider"

    .line 273
    invoke-static {p4, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez p3, :cond_0

    const-string p0, "query before provider was started! Returning empty response"

    .line 277
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0

    .line 281
    :cond_0
    sget-object p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 283
    aget-object p3, p1, p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 284
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p5

    .line 286
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 287
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object p1

    .line 289
    invoke-static {p3}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 291
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 321
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UNDEFINED CATEGORY! | Operation for uri: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Operation not supported for uri: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :pswitch_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "N_RCS_BIG_DATA | Operation for uri: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    invoke-virtual {p0, p5, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p1, "N_OPERATOR_RCS_VERSION"

    .line 313
    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOperatorRcsVersion(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p1, "N_RCS_ENABLED_STATIC"

    .line 309
    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsEnabledStatic(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 305
    :pswitch_3
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "N_OWN_CAPS | Operation for uri: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOwnCaps(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 301
    :pswitch_4
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "N_INCALL_SERVICE | Operation for uri: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    invoke-virtual {p0, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 297
    :pswitch_5
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "N_SIP_URI | Operation for uri: "

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v0, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    invoke-virtual {p0, p2, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 293
    :pswitch_6
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "N_LOOKUP_URI_ID | Operation for uri: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    invoke-virtual {p0, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const-string v0, "CapabilityProvider"

    const-string v1, "queryIncallService"

    .line 485
    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 487
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 489
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->INCALL_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 492
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    .line 493
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 495
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual {p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    invoke-interface {v4, v3, v5, p3}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 496
    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {p2, v5}, Lcom/sec/ims/options/CapabilityRefreshType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 497
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->waitForUpdate(Lcom/sec/ims/util/ImsUri;)V

    .line 498
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryIncallService: Capabilities not found for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object v1

    .line 506
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 507
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_2

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryIncallService: No hasFeature for ish, vsh "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 512
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {p1, p3}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "queryIncallService: own capex is null"

    .line 514
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 516
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "queryIncallService: own capex is not available"

    .line 517
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 519
    :cond_4
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_5

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 520
    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p0, "queryIncallService: No hasFeature for ish, vsh in own capex"

    .line 521
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 525
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryIncallService: ready_ish = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ready_vsh = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    const/4 v3, 0x3

    const/4 v5, 0x0

    if-ne p2, v3, :cond_6

    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    if-nez p2, :cond_6

    .line 528
    sput-boolean v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 531
    :cond_6
    sget-boolean p2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    if-eqz p2, :cond_7

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 532
    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v2

    goto :goto_0

    :cond_7
    move p2, v5

    .line 534
    :goto_0
    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    if-eqz v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v4, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 535
    invoke-virtual {p1, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_1

    :cond_8
    move p1, v5

    .line 537
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryIncallService: hasfeature_ish = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryIncallService: hasfeature_vsh = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 540
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 542
    invoke-direct {p0, v5, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 543
    invoke-direct {p0, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 544
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 546
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    const-string v9, "CapabilityProvider"

    const-string v1, "queryLookupUriId"

    .line 327
    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 332
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v12, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 336
    :try_start_0
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2, v8}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    if-nez v13, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryLookupUriId: Capabilities not found for contactId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v12

    :cond_0
    const-string v0, "remote_offline;"

    .line 344
    array-length v14, v13

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v14, :cond_7

    aget-object v5, v13, v6

    .line 345
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v2

    .line 346
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v0, "fresh;"

    :cond_2
    :goto_1
    move-object/from16 v16, v0

    add-int/lit8 v17, v1, 0x1

    .line 356
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v5, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 357
    invoke-virtual {v5, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v10

    .line 358
    :goto_3
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object v10, v5

    move-object/from16 v5, v16

    move/from16 v19, v6

    move-object/from16 v6, v18

    .line 356
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v18, v17, 0x1

    .line 359
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 360
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, 0x1

    .line 361
    :goto_5
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v5, v16

    .line 359
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v17, v18, 0x1

    .line 362
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 363
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v5, v16

    .line 362
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v6, v17, 0x1

    .line 364
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 365
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v5, v16

    move v15, v6

    move-object/from16 v6, v18

    .line 364
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v6, v15, 0x1

    .line 366
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 367
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-direct {v7, v15, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v6, 0x1

    .line 368
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 369
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-direct {v7, v6, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v15, v1, 0x1

    .line 370
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 371
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    .line 370
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v15, 0x1

    .line 372
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 373
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-direct {v7, v15, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v15, v1, 0x1

    .line 374
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v10, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    .line 375
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    .line 374
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v15, 0x1

    .line 376
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v10, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    .line 377
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-direct {v7, v15, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v0, v16

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 380
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryLookupUriId: no uris exist for lookup, returning empty response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-object v12
.end method

.method queryOperatorRcsVersion(I)Landroid/database/Cursor;
    .locals 2

    const-string p0, "CapabilityProvider"

    const-string v0, "queryOperatorRcsVersion"

    .line 665
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "OperatorRcsVersion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v0, "rcs_phase_version"

    const-string v1, ""

    .line 669
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 670
    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method queryOwnCaps(I)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "CapabilityProvider"

    const-string v3, "queryOwnCaps"

    .line 552
    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    new-instance v8, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 557
    :try_start_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {v3, v1}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_0

    .line 609
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    .line 563
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 564
    :try_start_2
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    :cond_1
    move-object v12, v4

    .line 567
    :goto_0
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v13, v4

    goto :goto_1

    :cond_2
    const-string v3, "local_offline;"

    move-object v13, v3

    .line 568
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryOwnCaps: RCS additionalInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v14, 0x1

    .line 571
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-nez v1, :cond_4

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 572
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v15

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v3, v16

    .line 573
    :goto_3
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 571
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v17, 0x2

    .line 574
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 575
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v15

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v3, v16

    .line 576
    :goto_5
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 574
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v14, 0x3

    .line 577
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 578
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v4, v12

    move-object v6, v13

    .line 577
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v15, 0x4

    .line 579
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 580
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 579
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v14, 0x5

    .line 581
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 582
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object v4, v12

    move-object v6, v13

    .line 581
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 583
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    invoke-direct {v0, v14, v2, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 584
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    invoke-direct {v0, v1, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 585
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-direct {v0, v2, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 586
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-direct {v0, v1, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v3, 0xa

    .line 587
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-virtual {v11, v4, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0xb

    .line 588
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v4

    .line 589
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v12

    move-object v6, v13

    .line 588
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 590
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    invoke-direct {v0, v14, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0xd

    .line 591
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 592
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 591
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0xe

    .line 593
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 594
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 593
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0xf

    .line 595
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 596
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object v4, v12

    move-object v6, v13

    .line 595
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0x10

    .line 597
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 598
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 597
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0x11

    .line 599
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 600
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object v4, v12

    move-object v6, v13

    .line 599
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0x12

    .line 601
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 602
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 601
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v1, 0x13

    .line 603
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v11, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    invoke-direct {v0, v15, v2, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 605
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-virtual {v11, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    invoke-direct {v0, v1, v2, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPlugInRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 607
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 609
    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :goto_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    throw v0
.end method

.method queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const-string v0, "CapabilityProvider"

    const-string v1, "queryRcsBigData"

    .line 675
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 677
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "RemoteRcsStatus"

    const-string v3, "RemoteLegacyLatching"

    const-string v4, "PhoneNumber"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 680
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 683
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 684
    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 687
    invoke-virtual {v4}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v4

    .line 686
    invoke-interface {p0, v2, v4, p2}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-nez p0, :cond_0

    .line 689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryRcsBigData: Capabilities not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v5

    .line 697
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    const-string v2, "fresh;"

    goto :goto_1

    :cond_3
    const-string v2, "remote_offline;"

    .line 707
    :goto_1
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result p0

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryRcsBigData: remoteRcsStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", remoteLegacyLatching = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", phoneNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    aput-object v2, p2, v4

    if-eqz p0, :cond_4

    const-string/jumbo p0, "true"

    goto :goto_2

    :cond_4
    const-string p0, "false"

    :goto_2
    aput-object p0, p2, v3

    const/4 p0, 0x2

    aput-object p1, p2, p0

    .line 712
    invoke-virtual {v1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 714
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method queryRcsEnabledStatic(I)Landroid/database/Cursor;
    .locals 11

    const-string v0, "CapabilityProvider"

    const-string v1, "queryRcsEnabledStatic"

    .line 615
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 617
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "EnableRCS"

    const-string v3, "EnableRCSchat"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, ", isEnableRcsChat = "

    const/4 v7, 0x1

    const-string/jumbo v8, "true"

    const-string v9, "false"

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    .line 622
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move p0, v7

    goto :goto_0

    .line 624
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 626
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 627
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v2, :cond_1

    .line 628
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result p0

    .line 630
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v2

    goto :goto_1

    :cond_2
    move p0, v10

    :goto_0
    move v2, p0

    .line 637
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryRcsEnabledStatic: SimMobility, isEnableRcs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    new-array p1, v5, [Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, v8

    goto :goto_2

    :cond_3
    move-object v0, v9

    :goto_2
    aput-object v0, p1, v10

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v9

    :goto_3
    aput-object v8, p1, v7

    .line 638
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .line 645
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 646
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 647
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 651
    invoke-static {p0, v2, v10}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    .line 652
    invoke-static {p0, v3, v10}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryRcsEnabledStatic: Customer, isEnableRcs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string p0, "queryRcsEnabledStatic: cscSettings is null, isEnableRcs = false, isEnableRcsChat = false"

    .line 655
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move p0, v10

    move v2, p0

    :goto_5
    new-array p1, v5, [Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object v0, v8

    goto :goto_6

    :cond_8
    move-object v0, v9

    :goto_6
    aput-object v0, p1, v10

    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    move-object v8, v9

    :goto_7
    aput-object v8, p1, v7

    .line 658
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p4

    const-string v9, "CapabilityProvider"

    const-string v1, "querySipUri"

    .line 386
    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v10, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 390
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 391
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v12, 0x0

    .line 397
    :try_start_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    invoke-interface {v2, v1, v3, v4, v8}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    if-nez v13, :cond_1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySipUri: Capabilities not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v10

    .line 403
    :cond_1
    array-length v14, v13

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v14, :cond_a

    aget-object v6, v13, v7

    if-nez v6, :cond_2

    move/from16 v17, v7

    goto/16 :goto_7

    :cond_2
    const-string v1, "querySipUri: return service info."

    .line 418
    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 424
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v5, v12

    goto :goto_2

    .line 427
    :cond_3
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v1

    .line 428
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    const-string v1, ""

    goto :goto_1

    :cond_4
    const-string v1, "fresh;"

    goto :goto_1

    :cond_5
    const-string v1, "remote_offline;"

    :goto_1
    move-object v5, v1

    .line 440
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySipUri: RCS additionalInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x1

    .line 442
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 443
    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move v3, v11

    .line 444
    :goto_4
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    move-object v11, v6

    move-object/from16 v6, v19

    move/from16 v17, v7

    move-object/from16 v7, v18

    .line 442
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v18, 0x2

    .line 445
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_9

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 446
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v3, 0x1

    .line 447
    :goto_6
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v16

    .line 445
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0x3

    .line 448
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 449
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v18

    .line 448
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v7, 0x4

    .line 450
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 451
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v6, v19

    move v15, v7

    move-object/from16 v7, v18

    .line 450
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 452
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 453
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-direct {v0, v15, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v2, 0x6

    .line 454
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 455
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v15, 0x7

    .line 456
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 457
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    .line 456
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 458
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 459
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-direct {v0, v15, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0x9

    .line 460
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 461
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    .line 460
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0xa

    .line 462
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 463
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object/from16 v6, v19

    .line 462
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0xb

    .line 464
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 465
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v6, v19

    .line 464
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0xc

    .line 466
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 467
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object/from16 v6, v19

    .line 466
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0xd

    .line 468
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 469
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v6, v19

    .line 468
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v7, 0xe

    .line 470
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 471
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move v2, v15

    move v15, v7

    move-object/from16 v7, v16

    .line 470
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 472
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    .line 473
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-direct {v0, v15, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v7, v17, 0x1

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v10

    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 478
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->close()V

    return-object v12

    :cond_b
    :goto_8
    const-string v0, "querySipUri: no valid uri to request"

    .line 392
    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v10
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1059
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method waitForUpdate(Lcom/sec/ims/util/ImsUri;)V
    .locals 4

    const-string v0, "CapabilityProvider"

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForUpdate: remote uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 249
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
