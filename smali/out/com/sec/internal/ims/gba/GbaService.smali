.class public Lcom/sec/internal/ims/gba/GbaService;
.super Landroid/telephony/gba/IGbaService$Stub;
.source "GbaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/gba/GbaService$GbaHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/IBootstrapAuthenticationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGbaHelper:Lcom/sec/internal/ims/gba/GbaService$GbaHelper;

.field private mModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/gba/GbaService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/gba/GbaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/gba/GbaService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Landroid/telephony/gba/IGbaService$Stub;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    .line 27
    check-cast p1, Lcom/sec/internal/ims/gba/GbaServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaService;->mModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 28
    new-instance p1, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;-><init>(Lcom/sec/internal/ims/gba/GbaService;Lcom/sec/internal/ims/gba/GbaService$GbaHelper-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaService;->mGbaHelper:Lcom/sec/internal/ims/gba/GbaService$GbaHelper;

    return-void
.end method


# virtual methods
.method public authenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/sec/internal/ims/gba/GbaService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticationRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaService;->mModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    monitor-enter v1

    .line 36
    :try_start_1d
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getSubId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result v2

    .line 37
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaService;->mModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaValue(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 39
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result p1

    invoke-virtual {v2}, Lcom/sec/internal/ims/gba/GbaValue;->getValue()[B

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/internal/ims/gba/GbaValue;->getBtid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p1, v0, v2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onKeysAvailable(I[BLjava/lang/String;)V

    .line 40
    monitor-exit v1

    return-void

    .line 42
    :cond_4e
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaService;->mModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaService;->mGbaHelper:Lcom/sec/internal/ims/gba/GbaService$GbaHelper;

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Landroid/telephony/gba/GbaAuthRequest;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    move-result v2

    .line 43
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_1d .. :try_end_57} :catchall_b0

    const/4 v1, -0x1

    if-ne v2, v1, :cond_7f

    .line 45
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticationRequest Fail "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticationRequest : Id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 51
    :try_start_96
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    monitor-exit v0

    return-void

    :catchall_ad
    move-exception p0

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_ad

    throw p0

    :catchall_b0
    move-exception p0

    .line 43
    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0
.end method
