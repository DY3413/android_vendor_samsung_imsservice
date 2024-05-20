.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/ImsSipDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda22;->f$0:Lcom/sec/internal/google/ImsSipDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda22;->f$0:Lcom/sec/internal/google/ImsSipDelegate;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$XTWi311WbXjIUPsfQxIr2XpBaAI(Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/Set;)V

    return-void
.end method
