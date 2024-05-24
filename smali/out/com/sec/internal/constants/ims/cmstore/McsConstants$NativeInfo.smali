.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$NativeInfo;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeInfo"
.end annotation


# static fields
.field public static final DEFAULT_SMS_APP:Ljava/lang/String; = "default_sms_app"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final SMS_PORT:Ljava/lang/String; = "sms_port"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
