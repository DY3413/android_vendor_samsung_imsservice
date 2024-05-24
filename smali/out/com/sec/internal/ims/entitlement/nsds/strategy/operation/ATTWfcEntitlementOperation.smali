.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;
.super Ljava/lang/Object;
.source "ATTWfcEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ATTWfcEntitlementOperation"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInitialOperation(II)I
    .registers 6

    .line 0
    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2d

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x7

    const/4 v1, 0x2

    if-eq p0, v0, :cond_27

    const/16 v0, 0x13

    const/16 v2, 0xf

    if-eq p0, v0, :cond_25

    const/16 v0, 0xb

    if-eq p0, v0, :cond_23

    const/16 v3, 0xc

    if-eq p0, v3, :cond_27

    const/16 p1, 0xe

    if-eq p0, p1, :cond_20

    if-eq p0, v2, :cond_2d

    :cond_1e
    :goto_1e
    move v0, v1

    goto :goto_2d

    :cond_20
    const/16 v0, 0xa

    goto :goto_2d

    :cond_23
    const/4 v0, 0x1

    goto :goto_2d

    :cond_25
    move v0, v2

    goto :goto_2d

    :cond_27
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_2c

    goto :goto_1e

    :cond_2c
    const/4 v0, -0x1

    :cond_2d
    :goto_2d
    return v0
.end method

.method protected static getNextOperation(IIIZZLjava/lang/String;)I
    .registers 7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 p5, 0x3

    if-eq p0, p5, :cond_19

    const/4 p5, 0x4

    if-eq p0, p5, :cond_14

    const/16 p5, 0x10

    if-eq p0, p5, :cond_f

    const/4 p0, -0x1

    goto :goto_22

    .line 82
    :cond_f
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterLocAndTcCheckforAutoOn(IIZZ)I

    move-result p0

    goto :goto_22

    .line 86
    :cond_14
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterPushTokenRegistration(II)I

    move-result p0

    goto :goto_22

    .line 78
    :cond_19
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterLocAndTcCheck(IIZZ)I

    move-result p0

    goto :goto_22

    .line 89
    :cond_1e
    invoke-static {p1, p2, p5, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterEntitlementCheck(IILjava/lang/String;Z)I

    move-result p0

    :goto_22
    return p0
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .registers 11

    .line 17
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

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

    if-eqz p3, :cond_37

    const-string v0, "loc_and_tc_status"

    .line 24
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "svc_prov_status"

    .line 25
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "e911_aid_exp"

    .line 26
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    move v4, v0

    move v5, v1

    goto :goto_3c

    :cond_37
    const/4 v0, 0x0

    const/4 p3, 0x0

    move-object v6, p3

    move v4, v0

    move v5, v4

    :goto_3c
    const/4 p3, -0x1

    if-ne p1, p3, :cond_44

    .line 31
    invoke-static {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getInitialOperation(II)I

    move-result p0

    goto :goto_4b

    :cond_44
    move v1, p1

    move v2, p0

    move v3, p2

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getNextOperation(IIIZZLjava/lang/String;)I

    move-result p0

    :goto_4b
    return p0
.end method

.method protected static getOperationAfterEntitlementCheck(IILjava/lang/String;Z)I
    .registers 9

    const/4 v0, 0x3

    const/16 v1, 0x418

    const/4 v2, 0x4

    const/16 v3, 0x3e8

    packed-switch p0, :pswitch_data_54

    :pswitch_9
    goto :goto_52

    :pswitch_a
    if-ne p1, v3, :cond_52

    goto :goto_53

    :pswitch_d
    if-ne p1, v3, :cond_10

    goto :goto_16

    :cond_10
    const/4 v0, 0x5

    goto :goto_53

    :pswitch_12
    if-eq p1, v3, :cond_16

    if-ne p1, v1, :cond_52

    :cond_16
    :goto_16
    move v0, v2

    goto :goto_53

    .line 102
    :pswitch_18
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATT_AutoOn] getOperationAfterEntitlementCheck responseCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",onSvcProv:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_3f

    .line 104
    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/util/E911AidValidator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_53

    :cond_3f
    const/4 p0, 0x0

    .line 106
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_52

    const/16 v0, 0x13

    if-ne p1, v1, :cond_4d

    if-nez p3, :cond_52

    goto :goto_53

    :cond_4d
    const/16 p0, 0x427

    if-ne p1, p0, :cond_52

    goto :goto_53

    :cond_52
    :goto_52
    const/4 v0, -0x1

    :goto_53
    return v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_18
        :pswitch_12
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZZ)I
    .registers 6

    .line 0
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    if-eq p0, v0, :cond_e

    const/4 p2, 0x5

    if-eq p0, p2, :cond_9

    goto :goto_17

    :cond_9
    if-ne p1, v1, :cond_17

    const/16 p0, 0xd

    goto :goto_18

    :cond_e
    if-ne p1, v1, :cond_17

    if-eqz p2, :cond_14

    if-eqz p3, :cond_17

    :cond_14
    const/16 p0, 0x8

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, -0x1

    :goto_18
    return p0
.end method

.method private static getOperationAfterLocAndTcCheckforAutoOn(IIZZ)I
    .registers 7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    goto :goto_52

    .line 182
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATT_AutoOn] getOperationAfterLocAndTcCheckforAutoOn responseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",onSvcProv:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_36

    const/16 p0, 0x418

    if-ne p1, p0, :cond_2c

    if-eqz p3, :cond_30

    :cond_2c
    const/16 p0, 0x427

    if-ne p1, p0, :cond_33

    :cond_30
    const/16 p0, 0x12

    goto :goto_53

    :cond_33
    const/16 p0, 0x11

    goto :goto_53

    :cond_36
    if-nez p2, :cond_52

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",locAndTcStatus:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    const/4 p0, -0x1

    :goto_53
    return p0
.end method

.method protected static getOperationAfterPushTokenRegistration(II)I
    .registers 3

    .line 0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    const/4 p1, 0x2

    if-ne p0, p1, :cond_9

    const/4 p0, 0x3

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method
