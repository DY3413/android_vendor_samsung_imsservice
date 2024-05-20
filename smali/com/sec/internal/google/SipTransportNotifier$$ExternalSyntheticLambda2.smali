.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$fzIig451UL-gRn8KK0mWk4jUs_k(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
