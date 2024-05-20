.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipTransportNotifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/sec/internal/google/ImsSipDelegate;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipTransportNotifier;ILcom/sec/internal/google/ImsSipDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iput p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$2:Lcom/sec/internal/google/ImsSipDelegate;

    iput p4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iget v1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$2:Lcom/sec/internal/google/ImsSipDelegate;

    iget p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$TcFGTdqUmiS6VhBFXwAjWUqGNbU(Lcom/sec/internal/google/SipTransportNotifier;ILcom/sec/internal/google/ImsSipDelegate;I)V

    return-void
.end method
