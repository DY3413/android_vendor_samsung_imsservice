.class public Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants$Entitlement;
.super Ljava/lang/Object;
.source "GlobalSettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entitlement"
.end annotation


# static fields
.field public static final ALLOWED_GID:Ljava/lang/String; = "allowed_gid_for_devoceconfig"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field public static final DEVICE_GROUP:Ljava/lang/String; = "device_group"

.field public static final SUPPORT_CONFIGSERVER:Ljava/lang/String; = "support_configserver"

.field public static final WFC_AUTO_ON:Ljava/lang/String; = "wfc_auto_on"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method