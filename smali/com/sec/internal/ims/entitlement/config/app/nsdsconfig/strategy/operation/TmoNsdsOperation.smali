.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;
.super Ljava/lang/Object;
.source "TmoNsdsOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TmoNsdsOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperation(II)I
    .locals 3

    .line 14
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/16 p1, 0xf

    if-eq p0, p1, :cond_0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method
