.class Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/CertificateManager;->certificates:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/CertificateManager;->crls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addCRL(Ljava/security/cert/X509CRL;)V
    .registers 3

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/CertificateManager;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 28
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addCert(Ljava/security/cert/X509Certificate;)V
    .registers 3

    monitor-enter p0

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/CertificateManager;->certificates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 20
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/CertificateManager;->certificates:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
