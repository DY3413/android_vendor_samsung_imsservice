.class public Lcom/sec/internal/ims/settings/GlobalSettingsManager;
.super Ljava/lang/Object;
.source "GlobalSettingsManager.java"


# static fields
.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/GlobalSettingsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;
    .registers 5

    .line 29
    sget-object v0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 30
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    monitor-exit v0

    return-object p0

    .line 33
    :cond_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_31

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    return-object p0

    :catchall_31
    move-exception p0

    .line 35
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 46
    :try_start_d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    .line 47
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo p2, "true"

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2f

    const-string p2, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_34

    if-eqz p2, :cond_30

    :cond_2f
    const/4 p1, 0x1

    .line 53
    :cond_30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_34
    move-exception p1

    .line 44
    :try_start_35
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw p1

    :cond_3e
    if-eqz p0, :cond_43

    .line 53
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_43
    return p2
.end method

.method public declared-synchronized getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    .registers 2

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 90
    :try_start_d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    .line 91
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_2f

    if-nez v0, :cond_39

    .line 93
    :try_start_1e
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_26} :catch_27
    .catchall {:try_start_1e .. :try_end_26} :catchall_2f

    goto :goto_39

    :catch_27
    move-exception p1

    .line 95
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 101
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p2

    :catchall_2f
    move-exception p1

    .line 88
    :try_start_30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw p1

    :cond_39
    :goto_39
    if-eqz p0, :cond_3e

    .line 101
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3e
    return p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 62
    :try_start_d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x0

    .line 63
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_20

    move-object p2, p1

    goto :goto_2a

    :catchall_20
    move-exception p1

    .line 60
    :try_start_21
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p1

    :cond_2a
    :goto_2a
    if-eqz p0, :cond_2f

    .line 66
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-object p2
.end method

.method public getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 74
    :try_start_d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    .line 75
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string p2, "\\[|\\]|\""

    const-string v0, ""

    .line 77
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_34

    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_34
    move-exception p1

    .line 72
    :try_start_35
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw p1

    :cond_3e
    if-eqz p0, :cond_43

    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_43
    return-object p2
.end method
