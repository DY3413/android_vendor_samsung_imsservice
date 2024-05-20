.class public Lcom/sec/internal/constants/ims/VowifiConfig;
.super Landroid/os/Handler;
.source "VowifiConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/VowifiConfig$ROAM_PREF;,
        Lcom/sec/internal/constants/ims/VowifiConfig$HOME_PREF;,
        Lcom/sec/internal/constants/ims/VowifiConfig$STATUS;
    }
.end annotation


# static fields
.field public static final AUTO_DATA_SWITCH:Ljava/lang/String; = "data_preferred_mode_during_calling"

.field public static final UNKNOWN:I = -0x1

.field public static final WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field public static final WIFI_CALL_PREFERRED:Ljava/lang/String; = "wifi_call_preferred"

.field public static final WIFI_CALL_WHEN_ROAMING:Ljava/lang/String; = "wifi_call_when_roaming"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static getPrefMode(Landroid/content/Context;I)I
    .locals 1

    .line 47
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {p0, p1, v0}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getPrefMode(Landroid/content/Context;II)I
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallPreferred(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getRoamPrefMode(Landroid/content/Context;II)I
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallWhenRoaming(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static isCrossSimSettingEnabled(Landroid/content/Context;I)Z
    .locals 2

    .line 39
    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "data_preferred_mode_during_calling"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static isEnabled(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public static setEnabled(Landroid/content/Context;II)V
    .locals 0

    .line 55
    invoke-static {p0, p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallEnabled(Landroid/content/Context;II)V

    return-void
.end method

.method public static setPrefMode(Landroid/content/Context;II)V
    .locals 0

    .line 59
    invoke-static {p0, p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallPreferred(Landroid/content/Context;II)V

    return-void
.end method

.method public static setRoamPrefMode(Landroid/content/Context;II)V
    .locals 0

    .line 63
    invoke-static {p0, p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallWhenRoaming(Landroid/content/Context;II)V

    return-void
.end method
