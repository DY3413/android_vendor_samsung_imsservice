.class public final enum Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
.super Ljava/lang/Enum;
.source "NotificationFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/omanetapi/common/data/NotificationFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

.field public static final enum JSON:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

.field public static final enum XML:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->XML:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 5
    new-instance v1, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    const-string v3, "JSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->JSON:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->$VALUES:[Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->$VALUES:[Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    invoke-virtual {v0}, [Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    return-object v0
.end method
