.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;->f$0:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;->f$0:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->$r8$lambda$1cUZP2GYdsYmKb5BQENgWKxPl0w(ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/google/ISipTransportNotifier;)V

    return-void
.end method
