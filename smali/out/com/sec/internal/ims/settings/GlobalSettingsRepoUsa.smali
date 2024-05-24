.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.source "GlobalSettingsRepoUsa.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected needResetVolteAsDefault(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 0
    if-eq p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method
