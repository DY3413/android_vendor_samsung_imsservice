.class public Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;
.super Ljava/lang/Object;
.source "VcidHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VcidHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/volte2/vcid/exception/NoFileUrlOnAlertInfoException;
        }
    .end annotation

    const-string v0, "[<](.*?)[>]"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_16
    new-instance p0, Lcom/sec/internal/ims/servicemodules/volte2/vcid/exception/NoFileUrlOnAlertInfoException;

    const-string v0, "No proper file url on alert info"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/vcid/exception/NoFileUrlOnAlertInfoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isVcidCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 26
    :try_start_1
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->getFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 27
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "File Url is empty"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/sec/internal/ims/servicemodules/volte2/vcid/exception/NoFileUrlOnAlertInfoException; {:try_start_1 .. :try_end_12} :catch_15

    goto :goto_19

    :cond_13
    const/4 p1, 0x1

    goto :goto_1a

    :catch_15
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    move p1, v0

    .line 34
    :goto_1a
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isWifiOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 35
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wifi & mobile is off"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 38
    :cond_2e
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isRoaming(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 39
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Not support on Roaming network"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    move v0, p1

    .line 42
    :goto_3d
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVcidCapable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isVcidUrlExist(Ljava/lang/String;)Z
    .registers 2

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "video_vcid"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "video_myview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public static isVideoVcid(Ljava/lang/String;)Z
    .registers 2

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "video_vcid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method
