.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/DefaultNsdsOperation;
.super Ljava/lang/Object;
.source "DefaultNsdsOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultNsdsOperation"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperation(II)I
    .registers 5

    .line 14
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/DefaultNsdsOperation;->LOG_TAG:Ljava/lang/String;

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

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    const/16 p1, 0xe

    if-eq p0, p1, :cond_2d

    const/16 p1, 0xf

    if-eq p0, p1, :cond_2a

    goto :goto_2f

    :cond_2a
    const/16 v0, 0xb

    goto :goto_2f

    :cond_2d
    const/16 v0, 0xa

    :cond_2f
    :goto_2f
    return v0
.end method