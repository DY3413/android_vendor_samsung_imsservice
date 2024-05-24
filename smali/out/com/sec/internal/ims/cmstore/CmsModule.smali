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
    .registers 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public static getCMSServiceByPhoneID(I)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 157
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    if-ne v1, p0, :cond_2f

    .line 159
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    return-object p0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_32
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
    .registers 5

    const-string p0, "ft"

    const-string v0, "ft_http"

    const-string v1, "cms"

    const-string v2, "im"

    const-string/jumbo v3, "slm"

    .line 40
    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleEventDefaultAppChanged()V
    .registers 4

    .line 168
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onDefaultSmsPackageChanged"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 171
    :goto_8
    :try_start_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_4a

    .line 172
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 173
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onDefaultSmsPackageChanged()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_29} :catch_2c

    :cond_29
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :catch_2c
    move-exception p0

    .line 177
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRCSDbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4a
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 51
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleIntent"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method public init()V
    .registers 9

    .line 72
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 73
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_27

    .line 76
    sget-object v3, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mLooper:Landroid/os/Looper;

    invoke-direct {v5, v1, v6, v7}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isMcsSupported(I)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v2, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    if-eqz v2, :cond_3b

    .line 80
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "init: registerFcmEventListener"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->getInstance()Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V

    :cond_3b
    return-void
.end method

.method public onConfigured(I)V
    .registers 2

    .line 138
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 139
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onConfigured"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 4

    if-nez p1, :cond_a

    .line 117
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onDeregistered, null regiInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 122
    :try_start_d
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onDeregistered"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    if-ltz p0, :cond_52

    .line 124
    sget-object p2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result p2

    if-ge p0, p2, :cond_52

    .line 125
    sget-object p2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-eqz p0, :cond_52

    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_33} :catch_34

    goto :goto_52

    :catch_34
    move-exception p0

    .line 131
    sget-object p1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeregistered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_52
    :goto_52
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    if-eqz p1, :cond_5c

    .line 93
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 94
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_5c

    .line 98
    :cond_13
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 100
    :try_start_16
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onRegistered"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    if-ltz p0, :cond_5b

    .line 102
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-ge p0, v0, :cond_5b

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-eqz p0, :cond_5b

    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onImsRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_3c} :catch_3d

    goto :goto_5b

    :catch_3d
    move-exception p0

    .line 109
    sget-object p1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-void

    .line 95
    :cond_5c
    :goto_5c
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onRegistered, null regiInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 66
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start CmsModule"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .registers 2

    .line 87
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 88
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
