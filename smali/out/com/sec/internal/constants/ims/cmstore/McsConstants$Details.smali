.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$Details;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Details"
.end annotation


# static fields
.field public static final BOOT_UP:I = 0x3

.field public static final BOOT_UP_TOKEN_UPDATE:I = 0x4

.field public static final INITIAL_REGISTRATION:I = 0x2

.field public static final TOKEN_UPDATE_WHILE_IN_USE:I = 0x5

.field public static final UNKNOWN:I = 0x1

.field public static final UNKNOWN_QR_CODE:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
