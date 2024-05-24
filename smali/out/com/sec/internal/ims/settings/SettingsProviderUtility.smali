.class public Lcom/sec/internal/ims/settings/SettingsProviderUtility;
.super Ljava/lang/Object;
.source "SettingsProviderUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;
    }
.end annotation


# static fields
.field private static mOldBackupFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    const-string v1, "/efs/ims_setting/ims_setting_bak.dat"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    const-string v1, "/efs/ims_setting/ims_setting.dat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbCreatState(Landroid/content/Context;)Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;
    .registers 4

    const/4 v0, -0x1

    const-string v1, "imsconfig"

    const/4 v2, 0x0

    .line 23
    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_21

    const-string/jumbo v0, "setting_db_created"

    .line 25
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_21

    .line 28
    :cond_14
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1e

    .line 29
    sget-object p0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    goto :goto_20

    :cond_1e
    sget-object p0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    :goto_20
    return-object p0

    .line 26
    :cond_21
    :goto_21
    sget-object p0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_NEVER_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    return-object p0
.end method

.method public static setDbCreated(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "imsconfig"

    const-string/jumbo v1, "setting_db_created"

    const/4 v2, -0x1

    .line 33
    invoke-static {v2, p0, v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
