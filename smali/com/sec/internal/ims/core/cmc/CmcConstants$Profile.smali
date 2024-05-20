.class public Lcom/sec/internal/ims/core/cmc/CmcConstants$Profile;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "SamsungCMC"

.field public static final DEFAULT_PORT:I = 0x1f40

.field public static final PD_NAME:Ljava/lang/String; = "SamsungCMC_PD"

.field public static final SD_NAME:Ljava/lang/String; = "SamsungCMC_SD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
