.class public Lcom/sec/internal/ims/cmstore/CmsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "CmsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mCloudMessageServiceWrappers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 30
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public static getCMSServiceByPhoneID(I)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 133
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p0, :cond_0

    .line 135
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    return-object p0
.end method


# virtual methods
.method public getServicesRequiring()[Ljava/lang/String;
    .locals 4

    const-string p0, "cms"

    const-string v0, "im"

    const-string/jumbo v1, "slm"

    const-string v2, "ft"

    const-string v3, "ft_http"

    .line 36
    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 47
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleIntent"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method public init()V
    .locals 7

    .line 68
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 69
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 70
    sget-object v1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(), maxSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    sget-object v2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mLooper:Landroid/os/Looper;

    invoke-direct {v4, v1, v5, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 115
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onConfigured"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 109
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onDeregistered"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object p0

    .line 92
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered, msisdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    if-ltz p1, :cond_1

    .line 94
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 95
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onImsRegistered(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    sget-object p1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRCSDbReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onRegistered, null regiInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 62
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start CmsModule"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 79
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
