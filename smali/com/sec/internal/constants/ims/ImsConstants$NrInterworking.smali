.class public Lcom/sec/internal/constants/ims/ImsConstants$NrInterworking;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NrInterworking"
.end annotation


# static fields
.field public static DISABLE_SA_DURING_WFC:I = 0x1

.field public static FULL_SUPPORT:I = 0x2

.field public static NOT_SUPPORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
