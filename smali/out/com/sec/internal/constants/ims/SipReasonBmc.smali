.class public Lcom/sec/internal/constants/ims/SipReasonBmc;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonBmc.java"


# static fields
.field public static final NWAY_CONFERENCE:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "User Triggered"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "SIP"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonBmc;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Conference Fail"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonBmc;->NWAY_CONFERENCE:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .registers 3

    const/4 v0, 0x5

    if-gez p1, :cond_4

    move p1, v0

    :cond_4
    if-eq p1, v0, :cond_11

    const/4 v0, 0x7

    if-eq p1, v0, :cond_e

    .line 34
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object p0

    return-object p0

    .line 32
    :cond_e
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonBmc;->NWAY_CONFERENCE:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 30
    :cond_11
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonBmc;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0
.end method
