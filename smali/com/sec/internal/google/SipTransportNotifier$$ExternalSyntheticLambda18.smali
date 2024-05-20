.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipTransportNotifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/ims/DelegateRequest;

.field public final synthetic f$3:Lcom/sec/internal/google/ImsSipDelegate;

.field public final synthetic f$4:Ljava/util/concurrent/Executor;

.field public final synthetic f$5:Ljava/util/Set;

.field public final synthetic f$6:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iput p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$2:Landroid/telephony/ims/DelegateRequest;

    iput-object p4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$3:Lcom/sec/internal/google/ImsSipDelegate;

    iput-object p5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$4:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$5:Ljava/util/Set;

    iput-object p7, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$6:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iget v1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$2:Landroid/telephony/ims/DelegateRequest;

    iget-object v3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$3:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object v4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$4:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$5:Ljava/util/Set;

    iget-object v6, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;->f$6:Ljava/util/Set;

    move-object v7, p1

    check-cast v7, Ljava/util/List;

    invoke-static/range {v0 .. v7}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$N2DxLAjU89PYzgMCa2ckRvOnCZs(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method
