.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/SipMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$bzct2T9sjKvVWGaIEdpeQZcuh-s(Lcom/sec/internal/constants/ims/SipMsg;Ljava/util/List;)V

    return-void
.end method
