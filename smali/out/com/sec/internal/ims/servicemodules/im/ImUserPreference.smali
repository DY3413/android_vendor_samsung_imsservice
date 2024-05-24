.class public Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
.super Ljava/lang/Object;
.source "ImUserPreference.java"


# static fields
.field private static final FT_AUTO_ACCEPT_SIM1:Ljava/lang/String; = "FT_AUTO_ACCEPT"

.field private static final FT_AUTO_ACCEPT_SIM2:Ljava/lang/String; = "FT_AUTO_ACCEPT_SIM2"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "im_user_prefs"

.field private static final USER_ALIAS:Ljava/lang/String; = "USER_ALIAS"

.field private static final USER_ALIAS_SIM1:Ljava/lang/String; = "USER_ALIAS_SIM1"

.field private static final USER_ALIAS_SIM2:Ljava/lang/String; = "USER_ALIAS_SIM2"

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    const-string p0, "FT_AUTO_ACCEPT_SIM2"

    goto :goto_8

    :cond_6
    const-string p0, "FT_AUTO_ACCEPT"

    :goto_8
    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
    .registers 1

    .line 41
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    .line 44
    :cond_b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    return-object v0
.end method

.method private getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 104
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 110
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUserAliasPrefByPhoneId(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    const-string p0, "USER_ALIAS_SIM2"

    goto :goto_8

    :cond_6
    const-string p0, "USER_ALIAS_SIM1"

    :goto_8
    return-object p0
.end method

.method private persist(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 88
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 89
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 97
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getFtAutAccept(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFtAutAccept(Landroid/content/Context;I)I
    .registers 5

    .line 60
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    .line 61
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_10
    const/4 p2, 0x0

    .line 63
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUserAlias(Landroid/content/Context;I)Ljava/lang/String;
    .registers 11

    const-string v0, "USER_ALIAS"

    const-string v1, ""

    .line 72
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USER_ALIAS_SIM1"

    .line 73
    invoke-direct {p0, p1, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "USER_ALIAS_SIM2"

    .line 74
    invoke-direct {p0, p1, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 77
    invoke-direct {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2c
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2f
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getUserAliasPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFtAutAccept(Landroid/content/Context;II)V
    .registers 5

    .line 48
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_16

    :cond_e
    const/4 p2, 0x0

    .line 51
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_16
    return-void
.end method

.method public setUserAlias(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 68
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getUserAliasPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
