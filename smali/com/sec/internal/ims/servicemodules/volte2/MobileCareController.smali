.class public Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;
.super Ljava/lang/Object;
.source "MobileCareController.java"


# static fields
.field public static final ACTIONCALLDROP:Ljava/lang/String; = "com.samsung.intent.action.IMS_CALL_DROP"

.field public static final CALLTYPE:Ljava/lang/String; = "CallType"

.field public static final ERRORREASON:Ljava/lang/String; = "ErrorReason"

.field public static final ERRORSTRING:Ljava/lang/String; = "ErrorString"

.field private static final LOG_TAG:Ljava/lang/String; = "MobileCareController"

.field public static final NETWORKTYPE:Ljava/lang/String; = "NetworkType"

.field public static final RSRP:Ljava/lang/String; = "RSRP"

.field public static final RSRQ:Ljava/lang/String; = "RSRQ"

.field public static final TIMEINFO:Ljava/lang/String; = "TimeInfo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLteBand:I

.field private mLteRsrp:[I

.field private mLteRsrq:[I

.field private mSignalLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->initErrorList()V

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 44
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    .line 45
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    .line 46
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    .line 47
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 48
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private getCurrentTimeShort()Ljava/lang/String;
    .locals 6

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initErrorList()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x45a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v0, 0x6a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getPSDataDetails(ILcom/sec/internal/constants/ims/os/NetworkEvent;Z)Landroid/content/ContentValues;
    .locals 3

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BAND"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RSRP"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "RSRQ"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    .line 125
    iget p0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 124
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "NWTP"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "RTCH"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getSignalLevel(I)I
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    aget p0, p0, p1

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLteBancChanged(Ljava/lang/String;)V
    .locals 3

    .line 146
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    .line 150
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received LTE Band is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mLteBand is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 132
    new-instance v0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-direct {v0, p2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;-><init>(Landroid/telephony/SignalStrength;)V

    .line 133
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v1

    aput v1, p2, p1

    .line 134
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v1

    aput v1, p2, p1

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLevel()I

    move-result p2

    aput p2, p0, p1

    goto :goto_0

    .line 137
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getLteSignalStrength is null"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    const/4 v0, -0x1

    aput v0, p2, p1

    .line 139
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aput v0, p2, p1

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    aput v0, p0, p1

    :goto_0
    return-void
.end method

.method public sendMobileCareEvent(IIILjava/lang/String;Z)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    .line 81
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMobileCareEvent : isVideo ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] isePDG ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] mRSRP ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mRSRQ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mErrorCode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mErrorDesc ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.IMS_CALL_DROP"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CallType"

    .line 88
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "NetworkType"

    .line 89
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getCurrentTimeShort()Ljava/lang/String;

    move-result-object p2

    const-string p5, "TimeInfo"

    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ErrorReason"

    .line 91
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p3}, Lcom/sec/ims/volte2/data/VolteConstants$ErrorCode;->toString(I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string p2, "ErrorString"

    .line 92
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget p2, p2, p1

    const-string p3, "RSRP"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget p1, p2, p1

    const-string p2, "RSRQ"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 98
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sendMobileCareEvent : Don\'t need to send event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
