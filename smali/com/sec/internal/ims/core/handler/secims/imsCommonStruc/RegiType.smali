.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiType;
.super Ljava/lang/Object;
.source "RegiType.java"


# static fields
.field public static final DE_REGI:I = 0x1

.field public static final PCSCF_GONE_DE_REGI:I = 0x2

.field public static final REGI:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "REGI"

    const-string v1, "DE_REGI"

    const-string v2, "PCSCF_GONE_DE_REGI"

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiType;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
