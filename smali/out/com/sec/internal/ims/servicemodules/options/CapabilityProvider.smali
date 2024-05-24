.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.super Landroid/content/ContentProvider;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;,
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

.field private mLastInCallUri:Lcom/sec/ims/util/ImsUri;

.field mLock:Ljava/lang/Object;

.field private mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

.field mService:Lcom/sec/ims/options/ICapabilityService;

.field protected mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;


# direct methods
.method public static synthetic $r8$lambda$YWqrriJspVD8IslF3qlR0HbF9_w(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastInCallUri(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataNetworkType(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCapabilityChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyInCallServicesChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOwnServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyOwnServicesChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwakeup(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->wakeup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputready_ish(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputready_vsh(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smcreateIntentFilter()Landroid/content/IntentFilter;
    .registers 1

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const-string v0, "\\?"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 105
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    .line 106
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 112
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v2, "lookup/*/#"

    const/4 v3, 0x2

    const-string v4, "com.samsung.rcs.serviceprovider"

    .line 114
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v2, "lookup/*"

    invoke-virtual {v1, v4, v2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "sip/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "incall/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "own"

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcs_enabled_static"

    const/4 v2, 0x6

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "operator_rcs_version"

    const/4 v2, 0x7

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcs_big_data/*"

    const/16 v2, 0x8

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    return-void
.end method

.method private createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 8

    .line 901
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

    const/4 v0, 0x0

    .line 903
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

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

.method private createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 937
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 951
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 795
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

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

.method private createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

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

.method private createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 813
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

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

.method private createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 837
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 830
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

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

.method private createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 777
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 5

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 893
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 5

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 885
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

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

.method private static createIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 1054
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 1056
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 1058
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    .line 1059
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private createPlugInRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 958
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 8

    .line 928
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

    const/4 v0, 0x0

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 868
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 5

    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 877
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 8

    .line 910
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

    const/4 v0, 0x0

    .line 912
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 8

    .line 919
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

    const/4 v0, 0x0

    .line 921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 822
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 8

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    aput-object v0, p0, p1

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
    .registers 1

    .line 141
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->initCapabilityService()V

    return-void
.end method

.method private notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V
    .registers 5

    const-string v0, "notifyCapabilityChange"

    const-string v1, "CapabilityProvider"

    .line 996
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilityChange: uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1000
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

    .line 1001
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyInCallServicesChange()V
    .registers 3

    const-string v0, "CapabilityProvider"

    const-string v1, "notifyInCallServicesChange"

    .line 1012
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.rcs.serviceprovider/incall"

    .line 1015
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyOwnServicesChange()V
    .registers 3

    const-string v0, "CapabilityProvider"

    const-string v1, "notifyOwnServicesChange"

    .line 1005
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    .line 1008
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private wakeup()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 250
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1030
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    if-eqz v0, :cond_f

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v0
.end method

.method getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
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

    if-nez p1, :cond_b

    const-string p0, "CapabilityProvider"

    const-string p1, "getImsUriListFromQuery: null uris"

    .line 711
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 714
    :cond_b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\\s*,\\s*"

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 717
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_35

    aget-object v2, p1, v1

    .line 718
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 719
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_32

    .line 722
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_35
    return-object p0
.end method

.method getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .registers 2

    const-string p0, "disable_requery"

    .line 740
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 745
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_b
    const-string p0, "force_requery"

    .line 746
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 751
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_16
    const-string p0, "force_requery_uce"

    .line 752
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 756
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_21
    const-string p0, "force_requery_sync"

    .line 757
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 761
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    :cond_2c
    const-string p0, "msg_conditional_requery"

    .line 762
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 768
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 771
    :cond_37
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 1020
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method initCapabilityService()V
    .registers 5

    const-string v0, "CapabilityProvider"

    const-string v1, "Connecting to CapabilityDiscoveryService."

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1025
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .registers 4

    const-string v0, "CapabilityProvider"

    const-string v1, "onCreate"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 130
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 133
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    .line 135
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    .line 137
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 139
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 141
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
    .registers 8

    .line 263
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "query(Uri, String[], String, String[], String) - uri: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", selection: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", args: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "CapabilityProvider"

    .line 263
    invoke-static {p4, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez p3, :cond_3d

    const-string/jumbo p0, "query before provider was started! Returning empty response"

    .line 267
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0

    .line 271
    :cond_3d
    sget-object p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 273
    aget-object p3, p1, p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 274
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p5

    .line 276
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    const/4 v0, 0x1

    aget-object p1, p1, v0

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    .line 277
    :goto_5b
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object p1

    .line 279
    invoke-static {p3}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 281
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_f8

    const-string p0, "UNDEFINED CATEGORY! | Operation for uri: "

    .line 311
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation not supported for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_89
    const-string p1, "N_RCS_BIG_DATA | Operation for uri: "

    .line 307
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    invoke-virtual {p0, p5, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_9b
    const-string p1, "N_OPERATOR_RCS_VERSION"

    .line 303
    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOperatorRcsVersion(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_a5
    const-string p1, "N_RCS_ENABLED_STATIC"

    .line 299
    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsEnabledStatic(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_af
    const-string p1, "N_OWN_CAPS | Operation for uri: "

    .line 295
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOwnCaps(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_c1
    const-string p2, "N_INCALL_SERVICE | Operation for uri: "

    .line 291
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    invoke-virtual {p0, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_d3
    const-string v1, "N_SIP_URI | Operation for uri: "

    .line 287
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v0, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    invoke-virtual {p0, p2, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_e5
    const-string p2, "N_LOOKUP_URI_ID | Operation for uri: "

    .line 283
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    invoke-virtual {p0, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_f8
    .packed-switch 0x2
        :pswitch_e5
        :pswitch_d3
        :pswitch_c1
        :pswitch_af
        :pswitch_a5
        :pswitch_9b
        :pswitch_89
    .end packed-switch
.end method

.method queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .registers 11
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

    const-string/jumbo v0, "queryIncallService"

    const-string v1, "CapabilityProvider"

    .line 475
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->INCALL_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 482
    :try_start_1f
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    .line 483
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 485
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual {p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    invoke-interface {v4, v3, v5, p3}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 486
    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {p2, v5}, Lcom/sec/ims/options/CapabilityRefreshType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 487
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->waitForUpdate(Lcom/sec/ims/util/ImsUri;)V

    .line 488
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    :cond_46
    if-nez v4, :cond_60

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryIncallService: Capabilities not found for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 492
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object v0

    .line 496
    :cond_60
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 497
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_8c

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_8c

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryIncallService: No hasFeature for ish, vsh "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 502
    :cond_8c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {p1, p3}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-nez p1, :cond_9b

    const-string/jumbo p0, "queryIncallService: own capex is null"

    .line 504
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 506
    :cond_9b
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_a8

    const-string/jumbo p0, "queryIncallService: own capex is not available"

    .line 507
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 509
    :cond_a8
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_bf

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 510
    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_bf

    const-string/jumbo p0, "queryIncallService: No hasFeature for ish, vsh in own capex"

    .line 511
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 515
    :cond_bf
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryIncallService: ready_ish = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ready_vsh = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    const/4 v3, 0x3

    const/4 v5, 0x0

    if-ne p2, v3, :cond_f0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_f0

    .line 518
    sput-boolean v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 521
    :cond_f0
    sget-boolean p2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    if-eqz p2, :cond_106

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_106

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 522
    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_106

    move p2, v2

    goto :goto_107

    :cond_106
    move p2, v5

    .line 524
    :goto_107
    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    if-eqz v3, :cond_11d

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v4, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_11d

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 525
    invoke-virtual {p1, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_11d

    move p1, v2

    goto :goto_11e

    :cond_11d
    move p1, v5

    .line 527
    :goto_11e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryIncallService: hasfeature_ish = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryIncallService: hasfeature_vsh = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 532
    invoke-direct {p0, v5, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 533
    invoke-direct {p0, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 534
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_166
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_166} :catch_167

    goto :goto_16b

    :catch_167
    move-exception p0

    .line 536
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_16b
    return-object v0
.end method

.method queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .registers 24
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

    const-string/jumbo v1, "queryLookupUriId"

    const-string v9, "CapabilityProvider"

    .line 317
    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
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

    .line 322
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v12, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 326
    :try_start_41
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2, v8}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    if-nez v13, :cond_63

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryLookupUriId: Capabilities not found for contactId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v12

    :cond_63
    const-string/jumbo v0, "remote_offline;"

    .line 334
    array-length v14, v13

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_69
    if-ge v6, v14, :cond_1f4

    aget-object v5, v13, v6

    .line 335
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v2

    .line 336
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_7e

    if-eqz v2, :cond_7c

    const-string v0, ""

    goto :goto_7e

    :cond_7c
    const-string v0, "fresh;"

    :cond_7e
    :goto_7e
    move-object/from16 v16, v0

    add-int/lit8 v17, v1, 0x1

    .line 346
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v5, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_95

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 347
    invoke-virtual {v5, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_93

    goto :goto_95

    :cond_93
    const/4 v2, 0x0

    goto :goto_96

    :cond_95
    :goto_95
    move v2, v10

    .line 348
    :goto_96
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

    .line 346
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v18, v17, 0x1

    .line 349
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_cb

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 350
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v2, 0x0

    goto :goto_cc

    :cond_cb
    :goto_cb
    const/4 v2, 0x1

    .line 351
    :goto_cc
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

    .line 349
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v17, v18, 0x1

    .line 352
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 353
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

    .line 352
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v6, v17, 0x1

    .line 354
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 355
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

    .line 354
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v6, v15, 0x1

    .line 356
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 357
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-direct {v7, v15, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v6, 0x1

    .line 358
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 359
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-direct {v7, v6, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v15, v1, 0x1

    .line 360
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 361
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

    .line 360
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v15, 0x1

    .line 362
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 363
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-direct {v7, v15, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v15, v1, 0x1

    .line 364
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v10, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    .line 365
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

    .line 364
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v15, 0x1

    .line 366
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v10, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    .line 367
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-direct {v7, v15, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_1d8} :catch_1df

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v0, v16

    const/4 v10, 0x1

    goto/16 :goto_69

    .line 370
    :catch_1df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryLookupUriId: no uris exist for lookup, returning empty response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1f4
    return-object v12
.end method

.method queryOperatorRcsVersion(I)Landroid/database/Cursor;
    .registers 4

    const-string p0, "CapabilityProvider"

    const-string/jumbo v0, "queryOperatorRcsVersion"

    .line 655
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 657
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "OperatorRcsVersion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string/jumbo v0, "rcs_phase_version"

    const-string v1, ""

    .line 659
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 660
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method queryOwnCaps(I)Landroid/database/Cursor;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "queryOwnCaps"

    const-string v3, "CapabilityProvider"

    .line 542
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    new-instance v8, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 547
    :try_start_17
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {v2, v1}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v11
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_239
    .catchall {:try_start_17 .. :try_end_1d} :catchall_237

    if-nez v11, :cond_23

    .line 599
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    .line 553
    :cond_23
    :try_start_23
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_239
    .catchall {:try_start_23 .. :try_end_27} :catchall_237

    const-string v4, ""

    if-eqz v2, :cond_35

    .line 554
    :try_start_2b
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_36

    :cond_35
    move-object v12, v4

    .line 557
    :goto_36
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object v13, v4

    goto :goto_41

    :cond_3e
    const-string v2, "local_offline;"

    move-object v13, v2

    .line 558
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryOwnCaps: RCS additionalInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v14, 0x1

    .line 561
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-nez v1, :cond_6d

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 562
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_6d

    :cond_6b
    move v3, v15

    goto :goto_6f

    :cond_6d
    :goto_6d
    move/from16 v3, v16

    .line 563
    :goto_6f
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 561
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v17, 0x2

    .line 564
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_98

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 565
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_98

    :cond_96
    move v3, v15

    goto :goto_9a

    :cond_98
    :goto_98
    move/from16 v3, v16

    .line 566
    :goto_9a
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 564
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v14, 0x3

    .line 567
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 568
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v4, v12

    move-object v6, v13

    .line 567
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v15, 0x4

    .line 569
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 570
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 569
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 571
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 572
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object v4, v12

    move-object v6, v13

    .line 571
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 573
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 574
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 575
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 576
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 577
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v3, 0x9

    invoke-direct {v0, v3, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 578
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 579
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 578
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 580
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0xd

    .line 581
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 582
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 581
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0xe

    .line 583
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 584
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 583
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0xf

    .line 585
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 586
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object v4, v12

    move-object v6, v13

    .line 585
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0x10

    .line 587
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 588
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 587
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v14, 0x11

    .line 589
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 590
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v15

    move-object v4, v12

    move-object v6, v13

    .line 589
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 591
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 592
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v13

    .line 591
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 593
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 595
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPlugInRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_236
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_236} :catch_239
    .catchall {:try_start_2b .. :try_end_236} :catchall_237

    goto :goto_23d

    :catchall_237
    move-exception v0

    goto :goto_241

    :catch_239
    move-exception v0

    .line 597
    :try_start_23a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_23d
    .catchall {:try_start_23a .. :try_end_23d} :catchall_237

    .line 599
    :goto_23d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :goto_241
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    throw v0
.end method

.method queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const-string/jumbo v0, "queryRcsBigData"

    const-string v1, "CapabilityProvider"

    .line 665
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "RemoteLegacyLatching"

    const-string v3, "PhoneNumber"

    const-string v4, "RemoteRcsStatus"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 670
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 673
    :try_start_27
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 674
    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 676
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 677
    invoke-virtual {v4}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v4

    .line 676
    invoke-interface {p0, v2, v4, p2}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-nez p0, :cond_59

    .line 679
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryRcsBigData: Capabilities not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 683
    :cond_59
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_62

    const/4 v2, 0x0

    goto :goto_86

    .line 686
    :cond_62
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v5

    .line 687
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-eqz v2, :cond_7d

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-eqz v2, :cond_7d

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-eqz v2, :cond_7d

    move v2, v3

    goto :goto_7e

    :cond_7d
    move v2, v4

    :goto_7e
    if-eqz v2, :cond_83

    const-string v2, "fresh;"

    goto :goto_86

    :cond_83
    const-string/jumbo v2, "remote_offline;"

    .line 697
    :goto_86
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result p0

    .line 699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryRcsBigData: remoteRcsStatus = "

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

    invoke-static {v1, p2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    aput-object v2, p2, v4

    if-eqz p0, :cond_ba

    const-string/jumbo p0, "true"

    goto :goto_bc

    :cond_ba
    const-string p0, "false"

    :goto_bc
    aput-object p0, p2, v3

    const/4 p0, 0x2

    aput-object p1, p2, p0

    .line 702
    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_c4} :catch_c5

    goto :goto_c9

    :catch_c5
    move-exception p0

    .line 704
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c9
    return-object v0
.end method

.method queryRcsEnabledStatic(I)Landroid/database/Cursor;
    .registers 13

    const-string/jumbo v0, "queryRcsEnabledStatic"

    const-string v1, "CapabilityProvider"

    .line 605
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "EnableRCS"

    const-string v3, "EnableRCSchat"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, ", isEnableRcsChat = "

    const/4 v7, 0x1

    const-string/jumbo v8, "true"

    const-string v9, "false"

    const/4 v10, 0x0

    if-eqz v4, :cond_94

    .line 612
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    move p0, v7

    goto :goto_65

    .line 614
    :cond_2f
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 616
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_64

    .line 617
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v2, :cond_47

    .line 618
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 619
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result p0

    .line 620
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v2

    goto :goto_66

    :cond_64
    move p0, v10

    :goto_65
    move v2, p0

    .line 627
    :goto_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryRcsEnabledStatic: SimMobility, isEnableRcs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    new-array p1, v5, [Ljava/lang/String;

    if-eqz v2, :cond_87

    move-object v1, v8

    goto :goto_88

    :cond_87
    move-object v1, v9

    :goto_88
    aput-object v1, p1, v10

    if-eqz p0, :cond_8d

    goto :goto_8e

    :cond_8d
    move-object v8, v9

    :goto_8e
    aput-object v8, p1, v7

    .line 628
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    .line 635
    :cond_94
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_9f

    .line 636
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    goto :goto_a0

    :cond_9f
    const/4 p0, 0x0

    :goto_a0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_d0

    .line 637
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_d0

    .line 641
    invoke-static {p0, v2, v10}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    .line 642
    invoke-static {p0, v3, v10}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryRcsEnabledStatic: Customer, isEnableRcs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d8

    :cond_d0
    const-string/jumbo p0, "queryRcsEnabledStatic: cscSettings is null, isEnableRcs = false, isEnableRcsChat = false"

    .line 645
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move p0, v10

    move v2, p0

    :goto_d8
    new-array p1, v5, [Ljava/lang/String;

    if-eqz v2, :cond_de

    move-object v1, v8

    goto :goto_df

    :cond_de
    move-object v1, v9

    :goto_df
    aput-object v1, p1, v10

    if-eqz p0, :cond_e4

    goto :goto_e5

    :cond_e4
    move-object v8, v9

    :goto_e5
    aput-object v8, p1, v7

    .line 648
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .registers 25
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

    const-string/jumbo v1, "querySipUri"

    const-string v9, "CapabilityProvider"

    .line 376
    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v10, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 380
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

    if-eqz v1, :cond_2b0

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto/16 :goto_2b0

    :cond_2f
    const/4 v12, 0x0

    .line 387
    :try_start_30
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    invoke-interface {v2, v1, v3, v4, v8}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    if-nez v13, :cond_54

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySipUri: Capabilities not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v10

    .line 393
    :cond_54
    array-length v14, v13

    const/4 v15, 0x0

    move v7, v15

    :goto_57
    if-ge v7, v14, :cond_2a7

    aget-object v6, v13, v7

    if-nez v6, :cond_61

    move/from16 v17, v7

    goto/16 :goto_2a2

    :cond_61
    const-string/jumbo v1, "querySipUri: return service info."

    .line 408
    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v1

    if-eqz v1, :cond_6f

    move-object v5, v12

    goto :goto_85

    .line 417
    :cond_6f
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v1

    .line 418
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_81

    if-eqz v1, :cond_7e

    const-string v1, ""

    goto :goto_84

    :cond_7e
    const-string v1, "fresh;"

    goto :goto_84

    :cond_81
    const-string/jumbo v1, "remote_offline;"

    :goto_84
    move-object v5, v1

    .line 430
    :goto_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySipUri: RCS additionalInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x1

    .line 432
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_af

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 433
    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_ad

    goto :goto_af

    :cond_ad
    move v3, v15

    goto :goto_b0

    :cond_af
    :goto_af
    move v3, v11

    .line 434
    :goto_b0
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

    .line 432
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v18, 0x2

    .line 435
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_ea

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 436
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_e8

    goto :goto_ea

    :cond_e8
    move v3, v15

    goto :goto_eb

    :cond_ea
    :goto_ea
    const/4 v3, 0x1

    .line 437
    :goto_eb
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

    .line 435
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0x3

    .line 438
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 439
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

    .line 438
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 440
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 441
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

    .line 440
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 442
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 443
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 442
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v2, 0x6

    .line 444
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 445
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 444
    invoke-direct {v0, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 446
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 447
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

    .line 446
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 448
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 449
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    .line 448
    invoke-direct {v0, v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0x9

    .line 450
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 451
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

    .line 450
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v18, 0xa

    .line 452
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 453
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

    .line 452
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0xb

    .line 454
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 455
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v6, v19

    .line 454
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v18, 0xc

    .line 456
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 457
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

    .line 456
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v16, 0xd

    .line 458
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 459
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v6, v19

    .line 458
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 460
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

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

    move/from16 v2, v16

    .line 460
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 462
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    .line 463
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    .line 462
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2a2
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_2a2} :catch_2a8

    :goto_2a2
    add-int/lit8 v7, v17, 0x1

    const/4 v11, 0x1

    goto/16 :goto_57

    :cond_2a7
    return-object v10

    :catch_2a8
    move-exception v0

    .line 467
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 468
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->close()V

    return-object v12

    :cond_2b0
    :goto_2b0
    const-string/jumbo v0, "querySipUri: no valid uri to request"

    .line 382
    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v10
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1035
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method waitForUpdate(Lcom/sec/ims/util/ImsUri;)V
    .registers 6

    const-string v0, "CapabilityProvider"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForUpdate: remote uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_17
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_20} :catch_2c

    .line 238
    :try_start_20
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 239
    monitor-exit v0

    goto :goto_35

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_35
    return-void
.end method
