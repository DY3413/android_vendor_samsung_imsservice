.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$ExtendedErrorCode;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedErrorCode"
.end annotation


# static fields
.field public static final EXCEPTION_CONNECT:I = 0x322

.field public static final EXCEPTION_SOCKET:I = 0x323

.field public static final EXCEPTION_SOCKET_TIMEOUT:I = 0x324

.field public static final EXCEPTION_SSL:I = 0x321

.field public static final EXCEPTION_SSL_HANDSHAKE:I = 0x320

.field public static final EXCEPTION_UNKNOWN_HOST:I = 0x325

.field public static final NO_USER_INFO:I = 0x384


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
