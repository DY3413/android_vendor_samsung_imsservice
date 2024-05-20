.class public final synthetic Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/GeolocationController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/GeolocationController;

    iput p2, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget p0, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->$r8$lambda$rtAHfGDzlueTvjKW6XlCPj5VcxA(Lcom/sec/internal/ims/core/GeolocationController;ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method
