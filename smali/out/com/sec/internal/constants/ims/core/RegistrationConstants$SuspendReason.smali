.class public final Lcom/sec/internal/constants/ims/core/RegistrationConstants$SuspendReason;
.super Ljava/lang/Object;
.source "RegistrationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/core/RegistrationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuspendReason"
.end annotation


# static fields
.field public static final IRAT:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final SNAPSHOT:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
