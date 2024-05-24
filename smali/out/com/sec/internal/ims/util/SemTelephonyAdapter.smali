.class public Lcom/sec/internal/ims/util/SemTelephonyAdapter;
.super Ljava/lang/Object;
.source "SemTelephonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 4

    .line 39
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 42
    :try_start_4
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISemTelephony;->getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private static getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "isemtelephony"

    .line 12
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unable to find ISemTelephony interface."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSupportUacType(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    .registers 3

    .line 85
    sget-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    .line 87
    :try_start_2
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISemTelephony;->getSupportUacType(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->fromValue(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_e} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-object v0
.end method

.method public static isSupportLteCapaOptionC(I)Z
    .registers 2

    .line 21
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISemTelephony;->isSupportLteCapaOptionC(I)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_e

    :catch_9
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static isSupportedNrca(I)Z
    .registers 2

    .line 31
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISemTelephony;->getSupportedNrca(I)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_e

    :catch_9
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static sendVolteState(IZ)V
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 52
    :try_start_4
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISemTelephony;->sendVolteState(IZ)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
