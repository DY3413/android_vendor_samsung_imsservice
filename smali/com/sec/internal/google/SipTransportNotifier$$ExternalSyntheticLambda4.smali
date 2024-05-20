.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/sec/internal/google/RegistrationTracker;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$udTUCQNUX8B66z22_6iawvyxOFY(Ljava/util/Set;Lcom/sec/internal/google/RegistrationTracker;)Z

    move-result p0

    return p0
.end method
