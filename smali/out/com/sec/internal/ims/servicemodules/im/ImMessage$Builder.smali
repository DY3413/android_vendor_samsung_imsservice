.class public abstract Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
.source "ImMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)V

    return-object v0
.end method

.method public listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;",
            ")TT;"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    .line 107
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    return-object p0
.end method
