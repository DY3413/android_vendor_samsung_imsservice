.class public final Lcom/sec/internal/constants/ims/os/SecFeature$CARRIER;
.super Ljava/lang/Object;
.source "SecFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/os/SecFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CARRIER"
.end annotation


# static fields
.field public static final CONFIGOPSTYLEFORMOBILENETSETTING:Ljava/lang/String; = "CarrierFeature_VoiceCall_ConfigOpStyleForMobileNetSetting"

.field public static final CONFIGOPSTYLEMOBILENETWORKSETTINGMENU:Ljava/lang/String; = "CarrierFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

.field public static final IMSUPDATE:Ljava/lang/String; = "CarrierFeature_IMS_ImsUpdate"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
