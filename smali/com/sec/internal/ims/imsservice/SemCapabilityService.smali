.class public Lcom/sec/internal/ims/imsservice/SemCapabilityService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "SemCapabilityService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SemCapabilityService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string p1, "SemCapabilityService"

    const-string v0, "onBind:"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Do not allow bind on non-system user"

    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;

    if-nez p0, :cond_1

    return-object v1

    .line 43
    :cond_1
    check-cast p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    const-string p0, "SemCapabilityService"

    const-string v0, "onCreate"

    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
