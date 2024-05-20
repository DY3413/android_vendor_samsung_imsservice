.class public final synthetic Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iput p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iget p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->$r8$lambda$ymQb_ifWpXxvoZZmpDirYlA06jE(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
