.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;->f$1:Lcom/sec/ims/ImsRegistration;

    iput-boolean p3, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;->f$1:Lcom/sec/ims/ImsRegistration;

    iget-boolean p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$EdXT_ZXO2z8O3_ncHSnVMhYY5aY(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;Z)V

    return-void
.end method
