.class public Lcom/sec/internal/helper/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final ALLOW_DIAGNOSTICS:Z

.field private static final PRODUCT_SHIP_PROP:Ljava/lang/String; = "ro.product_ship"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/sec/internal/helper/os/Debug;->ALLOW_DIAGNOSTICS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProductShip()Z
    .locals 2

    const-string v0, "ro.product_ship"

    const-string/jumbo v1, "true"

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
