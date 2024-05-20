.class public Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcrtPost"
.end annotation


# static fields
.field public static NO_VCRT:I = 0x0

.field public static VCRT_AVAILABLE:I = 0x1

.field public static VCRT_RESTRICT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
