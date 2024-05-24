.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfoValue"
.end annotation


# static fields
.field public static final CLIENT_VENDOR:Ljava/lang/String; = "Samsung"

.field public static final DEVICE_KIND:Ljava/lang/String;

.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final FIRMWARE_VERSION:Ljava/lang/String;

.field public static final MNO:Ljava/lang/String; = "mno"

.field public static final NATIVE_INFO:Ljava/lang/String; = "native_info"

.field public static final OS_TYPE:Ljava/lang/String; = "aos"

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final SERVICE_VERSION:Ljava/lang/String; = "1.0"

.field public static final SMS_PORT:I = 0x4199


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->OS_VERSION:Ljava/lang/String;

    .line 56
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->DEVICE_NAME:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "tablet"

    goto :goto_18

    :cond_16
    const-string v0, "phone"

    :goto_18
    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->DEVICE_KIND:Ljava/lang/String;

    .line 60
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->FIRMWARE_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
