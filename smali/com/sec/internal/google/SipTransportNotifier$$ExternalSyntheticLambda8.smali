.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/google/SipTransportNotifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/ims/DelegateRequest;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Ljava/util/Set;

.field public final synthetic f$5:Lcom/sec/internal/google/ImsSipDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iput p2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$2:Landroid/telephony/ims/DelegateRequest;

    iput-object p4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$3:Ljava/util/Set;

    iput-object p5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$5:Lcom/sec/internal/google/ImsSipDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$0:Lcom/sec/internal/google/SipTransportNotifier;

    iget v1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$2:Landroid/telephony/ims/DelegateRequest;

    iget-object v3, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$3:Ljava/util/Set;

    iget-object v4, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$4:Ljava/util/Set;

    iget-object v5, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;->f$5:Lcom/sec/internal/google/ImsSipDelegate;

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$lQ-gqyfW8ZRNJ8d-9J326tSy8nc(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method
