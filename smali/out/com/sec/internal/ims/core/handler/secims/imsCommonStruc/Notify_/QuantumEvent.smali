.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumEvent;
.super Ljava/lang/Object;
.source "QuantumEvent.java"


# static fields
.field public static final FALLBACK_TO_NORMAL_CALL:I = 0x1

.field public static final NOTIFY_SESSION_ID:I = 0x3

.field public static final SUCCESS:I = 0x2

.field public static final UN:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "SUCCESS"

    const-string v1, "NOTIFY_SESSION_ID"

    const-string v2, "UN"

    const-string v3, "FALLBACK_TO_NORMAL_CALL"

    .line 12
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumEvent;->names:[Ljava/lang/String;

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

    .line 14
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumEvent;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
