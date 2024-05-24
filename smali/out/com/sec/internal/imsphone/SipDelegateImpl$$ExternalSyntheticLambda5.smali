.class public final synthetic Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->$r8$lambda$BZ8RuUgTcIvPrrVdeKn5bPPVNls(Lcom/sec/internal/imsphone/SipDelegateImpl;Ljava/util/Set;)V

    return-void
.end method
