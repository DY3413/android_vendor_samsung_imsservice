.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipTransportNotifier;

.field public final synthetic f$1:Landroid/telephony/ims/DelegateRequest;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Lcom/sec/internal/google/ImsSipDelegate;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/DelegateRequest;

    iput-object p3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    iput-object p5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$4:Lcom/sec/internal/google/ImsSipDelegate;

    iput p6, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/DelegateRequest;

    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    iget-object v4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$4:Lcom/sec/internal/google/ImsSipDelegate;

    iget v5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;->f$5:I

    move-object v6, p1

    check-cast v6, Ljava/util/Set;

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$zs7HahiUw6BZvQ4EPhGhOowDlyU(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;ILjava/util/Set;)V

    return-void
.end method
