.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$1:Lcom/sec/ims/ImsRegistration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$1:Lcom/sec/ims/ImsRegistration;

    invoke-static {v0, p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$WraQsLivGM5OdI8mw3CAiUWDX50(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method
