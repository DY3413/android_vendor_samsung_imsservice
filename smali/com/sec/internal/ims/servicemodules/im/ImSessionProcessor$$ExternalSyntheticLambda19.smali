.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda19;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda19;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->$r8$lambda$j8huKxK8a3NT1ASJfxz4q8rS7ns(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
