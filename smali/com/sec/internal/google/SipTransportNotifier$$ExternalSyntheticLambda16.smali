.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipTransportNotifier;

.field public final synthetic f$1:Landroid/telephony/ims/aidl/ISipDelegate;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/concurrent/Executor;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/aidl/ISipDelegate;ILjava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/ims/aidl/ISipDelegate;

    iput p3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$2:I

    iput-object p4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$3:Ljava/util/concurrent/Executor;

    iput p5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/ims/aidl/ISipDelegate;

    iget v2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$2:I

    iget-object v3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$3:Ljava/util/concurrent/Executor;

    iget v4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;->f$4:I

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$OcNcZ6GRbHE3FH6jNNacgErXmxg(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/aidl/ISipDelegate;ILjava/util/concurrent/Executor;ILjava/util/List;)V

    return-void
.end method
