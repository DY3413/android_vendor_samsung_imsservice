.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant_/CopyControl;
.super Ljava/lang/Object;
.source "CopyControl.java"


# static fields
.field public static final BCC:I = 0x2

.field public static final CC:I = 0x1

.field public static final TO:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "TO"

    const-string v1, "CC"

    const-string v2, "BCC"

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant_/CopyControl;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant_/CopyControl;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
