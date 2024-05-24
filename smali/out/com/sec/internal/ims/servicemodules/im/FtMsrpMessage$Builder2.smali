.class Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;
.super Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<",
        "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected self()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;
    .registers 1

    .line 0
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .registers 1

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;->self()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;

    move-result-object p0

    return-object p0
.end method
