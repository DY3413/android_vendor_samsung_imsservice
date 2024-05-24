.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$CommonHttpHeaders;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonHttpHeaders"
.end annotation


# static fields
.field public static final CLIENT_VERSION:Ljava/lang/String; = "x-mcs-clientVersion"

.field public static final DEVICE_ID:Ljava/lang/String; = "x-mcs-deviceId"

.field public static final DEVICE_NAME:Ljava/lang/String; = "x-mcs-deviceName"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "x-mcs-deviceType"

.field public static final FIRMWARE_VERSION:Ljava/lang/String; = "x-mcs-firmwareVersion"

.field public static final OS_VERSION:Ljava/lang/String; = "x-mcs-osVersion"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
