.class public final enum Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
.super Ljava/lang/Enum;
.source "DefaultNsdsMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "NsdsStrategyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum ATT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum DEFAULT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum END_OF_NSDSSTRATEGY:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum TMOUS:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum XAA:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 587
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->DEFAULT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 590
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v3, "ATT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->ATT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 591
    new-instance v3, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v5, "TMOUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 592
    new-instance v5, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v7, "XAA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->XAA:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 593
    new-instance v7, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v9, "END_OF_NSDSSTRATEGY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->END_OF_NSDSSTRATEGY:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 585
    sput-object v9, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->$VALUES:[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 585
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
    .locals 1

    .line 585
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
    .locals 1

    .line 585
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->$VALUES:[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    return-object v0
.end method


# virtual methods
.method protected varargs isOneOf([Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;)Z
    .locals 4

    .line 597
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
