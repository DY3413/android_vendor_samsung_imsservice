.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipDelegateConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipDelegateConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda29;->f$0:Lcom/sec/internal/google/SipDelegateConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda29;->f$0:Lcom/sec/internal/google/SipDelegateConfig;

    check-cast p1, Lcom/sec/internal/google/ImsSipDelegate;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$pIdqYsAEpmv9gRE0uN8zcUQYaUc(Lcom/sec/internal/google/SipDelegateConfig;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method
