.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/aidl/ISipDelegate;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/aidl/ISipDelegate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/aidl/ISipDelegate;

    check-cast p1, Lcom/sec/internal/google/ImsSipDelegate;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$oH5-p1Mh-95Xz13UeERZYECoQIM(Landroid/telephony/ims/aidl/ISipDelegate;Lcom/sec/internal/google/ImsSipDelegate;)Z

    move-result p0

    return p0
.end method
