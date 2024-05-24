.class public Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;
.super Ljava/lang/Object;
.source "QuantumEncryptionNotifier.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "QuantumEncryptionNotifier"


# instance fields
.field private mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onGetVoLTEStatus()V
    .registers 4

    .line 70
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGetVoLTEStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 73
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_16

    .line 74
    invoke-interface {p0}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onGetVoLTEStatus()I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move v0, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    :cond_16
    :goto_16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onGetVoLTEStatusComment()V
    .registers 4

    .line 83
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGetVoLTEStatusComment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 86
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_16

    .line 87
    invoke-interface {p0}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onGetVoLTEStatusComment()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move-object v0, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    :cond_16
    :goto_16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)V
    .registers 4

    .line 96
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onHangUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 99
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_16

    .line 100
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move v0, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 103
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    :cond_16
    :goto_16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
    .registers 4

    .line 31
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRequestAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 34
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_16

    .line 35
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move v0, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 38
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    :cond_16
    :goto_16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V
    .registers 4

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRequestPeerProfileStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 47
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_16

    .line 48
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move v0, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 53
    :cond_16
    :goto_16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .registers 4

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRequestQMKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 60
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_16

    .line 61
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move v0, p0

    goto :goto_16

    :catch_12
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    :cond_16
    :goto_16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)V
    .registers 4

    .line 21
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerVoLTECallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    return-void
.end method

.method public resetVoLTECallback()V
    .registers 3

    .line 26
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetVoLTECallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    return-void
.end method
