.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ResponseEucType;
.super Ljava/lang/Object;
.source "ResponseEucType.java"


# static fields
.field public static final PERSISTENT:I = 0x0

.field public static final VOLATILE:I = 0x1

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "PERSISTENT"

    const-string v1, "VOLATILE"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ResponseEucType;->names:[Ljava/lang/String;

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

    .line 12
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ResponseEucType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
