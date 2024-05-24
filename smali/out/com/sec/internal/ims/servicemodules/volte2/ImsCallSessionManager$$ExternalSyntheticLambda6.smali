.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->$r8$lambda$0fdqJl2eZPlWhvv3gQ69kxV5FV8(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method
