.class public final synthetic Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda3;
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

    iput-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/google/ImsSipDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/google/ImsSipDelegate;

    check-cast p1, Lcom/sec/internal/google/SipDelegateConfig;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->notifySipDelegateConfig(Lcom/sec/internal/google/SipDelegateConfig;)V

    return-void
.end method
