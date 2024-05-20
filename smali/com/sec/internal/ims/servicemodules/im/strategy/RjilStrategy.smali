.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/RjilStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaStrategy;
.source "RjilStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaStrategy;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 2

    const/16 p0, 0x9

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x7

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v1, 0x8

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p0

    return p0
.end method
