.class public Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants$CMS;
.super Ljava/lang/Object;
.source "GlobalSettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMS"
.end annotation


# static fields
.field public static final CMS_CHANNEL_EXPIRATION:Ljava/lang/String; = "cms_channel_expiration"

.field public static final CMS_CHANNEL_LIFETIME:Ljava/lang/String; = "cms_channel_lifetime"

.field public static final CMS_CHANNEL_SUB_TYPE:Ljava/lang/String; = "cms_channel_sub_type"

.field public static final CMS_CHANNEL_SUB_TYPE_VERSION:Ljava/lang/String; = "cms_channel_sub_type_version"

.field public static final CMS_CHANNEL_TYPE:Ljava/lang/String; = "cms_channel_type"

.field public static final CMS_MAX_NOTIFICATIONS:Ljava/lang/String; = "cms_max_notifications"

.field public static final CMS_MAX_POLLING_NOTIFICATIONS:Ljava/lang/String; = "cms_max_polling_notifications"

.field public static final CMS_MCS_ENABLED:Ljava/lang/String; = "cms_mcs_enabled"

.field public static final CMS_POLLING_ENABLED:Ljava/lang/String; = "cms_polling_enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
