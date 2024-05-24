.class public Lcom/sec/internal/ims/core/cmc/CmcConstants;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;,
        Lcom/sec/internal/ims/core/cmc/CmcConstants$SystemProperties;,
        Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;,
        Lcom/sec/internal/ims/core/cmc/CmcConstants$Profile;
    }
.end annotation


# static fields
.field public static final E_NUM_SLOT_SPLIT:Ljava/lang/String; = "-"

.field public static final E_NUM_STR_QUOTE:Ljava/lang/String; = "\""

.field public static final IS_TEST_MODE:Z

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice"

.field public static final SHIP_BUILD:Z

.field public static final START_REGISTRATION_TIME_DELAY:I = 0x5

.field public static final URN_PREFIX:Ljava/lang/String; = "urn:duid:"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 8
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants;->SHIP_BUILD:Z

    if-nez v0, :cond_32

    .line 48
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_MODE:Z

    if-eqz v0, :cond_32

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_LINEID:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_PD_DEVICEID:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_SD_DEVICEID:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    sput-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants;->IS_TEST_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
