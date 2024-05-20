.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/ims/settings/ImsProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda19;->f$0:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda19;->f$0:Lcom/sec/ims/settings/ImsProfile;

    check-cast p1, Lcom/sec/internal/google/ImsSipDelegate;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$Kx6NcAHaWxvPJw7M7tv5myEXOkU(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z

    move-result p0

    return p0
.end method
