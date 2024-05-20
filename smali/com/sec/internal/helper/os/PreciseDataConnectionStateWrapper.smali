.class public Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;
.super Ljava/lang/Object;
.source "PreciseDataConnectionStateWrapper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mState:Landroid/telephony/PreciseDataConnectionState;


# direct methods
.method public constructor <init>(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p0, p1}, Landroid/telephony/PreciseDataConnectionState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDataConnectionApnTypeBitMask()I
    .locals 4

    const/4 v0, 0x0

    .line 53
    :try_start_0
    const-class v1, Landroid/telephony/PreciseDataConnectionState;

    const-string v2, "getDataConnectionApnTypeBitMask"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public getDataConnectionFailCause()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState;->getLastCauseCode()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
