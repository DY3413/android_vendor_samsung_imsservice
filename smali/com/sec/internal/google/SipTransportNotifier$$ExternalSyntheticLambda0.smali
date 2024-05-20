.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/RegistrationTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/RegistrationTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/google/RegistrationTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/google/RegistrationTracker;

    check-cast p1, Lcom/sec/internal/google/ImsSipDelegate;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$6Ygv_lMEGlZf-pG-ADA6qyCgDmM(Lcom/sec/internal/google/RegistrationTracker;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method
