.class public Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecFloatingFeatures"
.end annotation


# static fields
.field public static CDMALESS:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_CDMALESS"

.field public static CONFIG_BRAND_NAME:Ljava/lang/String; = "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

.field public static CONFIG_OMC_VERSION:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

.field public static CONFIG_PACKAGE_NAME:Ljava/lang/String; = "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

.field public static SUPPORT_PTT:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_PTT"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
