.class Lcom/sec/internal/helper/HttpRequest$UploadProgress$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest$UploadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onUpload(JJ)V
    .registers 5

    .line 0
    return-void
.end method
