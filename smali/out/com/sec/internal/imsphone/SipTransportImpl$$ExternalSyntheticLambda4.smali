.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;->f$2:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$olnb-IwGA4S_5ro44q6eVDltOt4(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
