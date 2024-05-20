.class public Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestConstants"
.end annotation


# static fields
.field public static final DEV_URL:Ljava/lang/String; = "pcscf2-c0.ane2.mdc-dev.net:8000"

.field public static final TEST_ACCESS_TOKEN:Ljava/lang/String; = "testAccessToken"

.field public static final TEST_LINEID:Ljava/lang/String;

.field public static final TEST_MODE:Z

.field public static final TEST_PD_DEVICEID:Ljava/lang/String;

.field public static final TEST_SD_DEVICEID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.cmc.testmode"

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_MODE:Z

    const-string v0, "persist.cmc.lineid"

    const-string v1, ""

    .line 43
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_LINEID:Ljava/lang/String;

    const-string v0, "persist.cmc.pd_deviceid"

    .line 44
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_PD_DEVICEID:Ljava/lang/String;

    const-string v0, "persist.cmc.sd_deviceid"

    .line 45
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_SD_DEVICEID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
