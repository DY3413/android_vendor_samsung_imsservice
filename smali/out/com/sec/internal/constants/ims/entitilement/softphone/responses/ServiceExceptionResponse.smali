.class public Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse;
.super Ljava/lang/Object;
.source "ServiceExceptionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;
    }
.end annotation


# instance fields
.field public mRequestError:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequestError"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceExceptionResponse [mRequestError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse;->mRequestError:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
