.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/sec/internal/google/SipDelegateConfig$Builder;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$E5y9kEEEl5ids87Gta_n5E_KuwU(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig$Builder;)Lcom/sec/internal/google/SipDelegateConfig;

    move-result-object p0

    return-object p0
.end method
