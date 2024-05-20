.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;
.source "MultimediaSessionServiceConfigurationImpl.java"


# static fields
.field private static multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;


# instance fields
.field private mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    return-void
.end method

.method public static getInstance(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    .line 47
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    return-object p0
.end method


# virtual methods
.method public getInactivityTimeout()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getInactivityTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageMaxLength()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getMaxMsrpLengthForExtensions()I

    move-result p0

    return p0
.end method

.method public getMessagingSessionInactivityTimeout(Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getInactivityTimeout()J

    move-result-wide p0

    return-wide p0
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->isServiceActivated(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
