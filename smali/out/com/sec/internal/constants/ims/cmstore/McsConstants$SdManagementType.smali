.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$SdManagementType;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdManagementType"
.end annotation


# static fields
.field public static final APPROVE_SD:I = 0x1

.field public static final GET_SD:I = 0x3

.field public static final GET_SD_ALL:I = 0x4

.field public static final REMOVE_SD:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
