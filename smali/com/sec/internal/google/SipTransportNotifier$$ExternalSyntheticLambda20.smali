.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipDelegateConfig;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;->f$0:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;->f$0:Lcom/sec/internal/google/SipDelegateConfig;

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/sec/internal/google/ImsSipDelegate;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$RJHjOe3zgA_nzzZbm18KLdMSUI8(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method
