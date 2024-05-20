.class public Lcom/sec/internal/ims/imsservice/VolteService2;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "VolteService2.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VolteService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    const-string p1, "mmtel"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    const-string p0, "VolteService"

    const-string v0, "onCreate"

    .line 17
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
