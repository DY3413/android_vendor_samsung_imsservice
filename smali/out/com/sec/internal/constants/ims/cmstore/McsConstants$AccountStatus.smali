.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$AccountStatus;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountStatus"
.end annotation


# static fields
.field public static final ACTIVE_ALL:I = 0x3e8

.field public static final AUTH:I = 0x3

.field public static final DEACTIVE:I = 0xa

.field public static final DELETE:I = 0x270f

.field public static final DORMANT:I = 0xb

.field public static final MAX:I = 0x2710

.field public static final NONE:I = 0x0

.field public static final OTP:I = 0x1

.field public static final REGI:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
