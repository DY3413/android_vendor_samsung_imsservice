.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipTransportImpl;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iput-boolean p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iget-boolean p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;->f$1:Z

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$oIy4lVx1B5YMFh-kmsZfZKPmqng(Lcom/sec/internal/imsphone/SipTransportImpl;ZLcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method
