.class public Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;
.super Ljava/lang/Object;
.source "OmaErrorKey.java"


# instance fields
.field mApiClass:Ljava/lang/String;

.field mErrorCode:I

.field mHandlerClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mErrorCode:I

    .line 8
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mApiClass:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mHandlerClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 26
    :cond_8
    instance-of v2, p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    if-eqz v2, :cond_29

    check-cast p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mErrorCode:I

    iget v3, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mErrorCode:I

    if-ne v2, v3, :cond_29

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mApiClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mApiClass:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mHandlerClass:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mHandlerClass:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 38
    iget v0, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mErrorCode:I

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mApiClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mHandlerClass:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OmaErrorKey = [ mErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ], [ mApiClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mApiClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ], [ mHandlerClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;->mHandlerClass:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ]."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
