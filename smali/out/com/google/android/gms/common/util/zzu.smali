.class public final Lcom/google/android/gms/common/util/zzu;
.super Ljava/lang/Object;


# static fields
.field private static zzglf:Ljava/lang/String;

.field private static final zzglg:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/zzu;->zzglg:I

    return-void
.end method

.method public static zzany()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/common/util/zzu;->zzglf:Ljava/lang/String;

    if-nez v0, :cond_c

    sget v0, Lcom/google/android/gms/common/util/zzu;->zzglg:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzu;->zzci(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzu;->zzglf:Ljava/lang/String;

    :cond_c
    sget-object v0, Lcom/google/android/gms/common/util/zzu;->zzglf:Ljava/lang/String;

    return-object v0
.end method

.method private static zzci(I)Ljava/lang/String;
    .registers 7

    .line 0
    const/4 v0, 0x0

    if-gtz p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_43
    .catchall {:try_start_4 .. :try_end_8} :catchall_3e

    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_39

    :try_start_2a
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_44
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_44

    :catchall_36
    move-exception p0

    move-object v0, v2

    goto :goto_3f

    :catchall_39
    move-exception p0

    :try_start_3a
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_43
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    :goto_3f
    invoke-static {v0}, Lcom/google/android/gms/common/util/zzp;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_43
    move-object v2, v0

    :catch_44
    :goto_44
    invoke-static {v2}, Lcom/google/android/gms/common/util/zzp;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method
