.class public final Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$ContactCapability;
.super Ljava/lang/Object;
.source "CapabilityConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactCapability"
.end annotation


# static fields
.field public static final CAPABLE_NONE:I = 0x0

.field public static final CAPABLE_NULL:I = -0x1

.field public static final RCS_CAPABLE_ONLY:I = 0x1

.field public static final VIDEO_CAPA_ON_AVA_OFF:I = 0x7

.field public static final VIDEO_CAPA_ON_AVA_ON:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
