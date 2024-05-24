.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;
.super Ljava/lang/Object;
.source "XAAEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XAAEntitlementOperation"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInitialOperation(II)I
    .registers 4

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_20

    const/4 v0, 0x7

    const/4 v1, 0x2

    if-eq p0, v0, :cond_19

    const/16 v0, 0x13

    if-eq p0, v0, :cond_16

    const/16 v0, 0xb

    if-eq p0, v0, :cond_14

    const/16 v0, 0xc

    if-eq p0, v0, :cond_19

    goto :goto_21

    :cond_14
    const/4 v1, 0x1

    goto :goto_21

    :cond_16
    const/16 v1, 0xf

    goto :goto_21

    :cond_19
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_1e

    goto :goto_21

    :cond_1e
    const/4 v1, -0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x3

    :goto_21
    return v1
.end method

.method protected static getNextOperation(IIIZ)I
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_7

    goto :goto_11

    .line 62
    :cond_7
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getOperationAfterLocAndTcCheck(IIZ)I

    move-result v1

    goto :goto_12

    :cond_c
    const/16 p0, 0x3e8

    if-ne p2, p0, :cond_11

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .registers 7

    .line 16
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_27

    const-string v0, "loc_and_tc_status"

    .line 20
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_28

    :cond_27
    const/4 p3, 0x0

    :goto_28
    const/4 v0, -0x1

    if-ne p1, v0, :cond_30

    .line 25
    invoke-static {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getInitialOperation(II)I

    move-result p0

    goto :goto_34

    .line 27
    :cond_30
    invoke-static {p1, p0, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getNextOperation(IIIZ)I

    move-result p0

    :goto_34
    return p0
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZ)I
    .registers 5

    .line 0
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    if-eq p0, v0, :cond_e

    const/4 p2, 0x5

    if-eq p0, p2, :cond_9

    goto :goto_15

    :cond_9
    if-ne p1, v1, :cond_15

    const/16 p0, 0xd

    goto :goto_16

    :cond_e
    if-ne p1, v1, :cond_15

    if-nez p2, :cond_15

    const/16 p0, 0x8

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, -0x1

    :goto_16
    return p0
.end method
