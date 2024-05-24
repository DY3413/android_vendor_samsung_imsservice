.class public Lcom/sec/internal/constants/ims/ImsConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;,
        Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;,
        Lcom/sec/internal/constants/ims/ImsConstants$NrInterworking;,
        Lcom/sec/internal/constants/ims/ImsConstants$OmaVersion;,
        Lcom/sec/internal/constants/ims/ImsConstants$RCS_AS;,
        Lcom/sec/internal/constants/ims/ImsConstants$VoiceDomainPrefEutran;,
        Lcom/sec/internal/constants/ims/ImsConstants$EmergencyRat;,
        Lcom/sec/internal/constants/ims/ImsConstants$EmergencyPdnPolicy;,
        Lcom/sec/internal/constants/ims/ImsConstants$FtDlParams;,
        Lcom/sec/internal/constants/ims/ImsConstants$CmcInfo;,
        Lcom/sec/internal/constants/ims/ImsConstants$UpdateChatServiceReason;,
        Lcom/sec/internal/constants/ims/ImsConstants$DeRegistrationCause;,
        Lcom/sec/internal/constants/ims/ImsConstants$Packages;,
        Lcom/sec/internal/constants/ims/ImsConstants$Intents;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemPath;,
        Lcom/sec/internal/constants/ims/ImsConstants$ServiceType;,
        Lcom/sec/internal/constants/ims/ImsConstants$Phone;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemProperties;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;,
        Lcom/sec/internal/constants/ims/ImsConstants$SimMobilityKitTimer;,
        Lcom/sec/internal/constants/ims/ImsConstants$Uris;,
        Lcom/sec/internal/constants/ims/ImsConstants$CscParserConstants;
    }
.end annotation


# static fields
.field public static DOWNLOAD_CONFIG:Ljava/lang/String; = "downloadconfig"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConstants"


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
