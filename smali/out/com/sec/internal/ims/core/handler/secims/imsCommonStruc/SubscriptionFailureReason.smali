.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;
.super Ljava/lang/Object;
.source "SubscriptionFailureReason.java"


# static fields
.field public static final DEACTIVATED:I = 0x1

.field public static final GIVEUP:I = 0x5

.field public static final NORESOURCE:I = 0x6

.field public static final PROBATION:I = 0x2

.field public static final REJECTED:I = 0x3

.field public static final TIMEOUT:I = 0x4

.field public static final UNKNOWN:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "UNKNOWN"

    const-string v1, "DEACTIVATED"

    const-string v2, "PROBATION"

    const-string v3, "REJECTED"

    const-string v4, "TIMEOUT"

    const-string v5, "GIVEUP"

    const-string v6, "NORESOURCE"

    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2

    .line 17
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
