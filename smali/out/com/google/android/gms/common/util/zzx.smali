.class public final Lcom/google/android/gms/common/util/zzx;
.super Ljava/lang/Object;


# direct methods
.method public static getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 0
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzanx()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "no_backup"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzx;->zzd(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized zzd(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 0
    const-class v0, Lcom/google/android/gms/common/util/zzx;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_3b

    if-eqz v1, :cond_17

    monitor-exit v0

    return-object p0

    :cond_17
    :try_start_17
    const-string v1, "SupportV4Utils"

    const-string v2, "Unable to create no-backup dir "

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_33
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_3b

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_39
    monitor-exit v0

    return-object p0

    :catchall_3b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
