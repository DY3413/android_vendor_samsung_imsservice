.class public final enum Lcom/sec/internal/ims/core/ImsIconManager$Icon;
.super Ljava/lang/Enum;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/ImsIconManager$Icon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$Icon;

.field public static final enum VO5G:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

.field public static final enum VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

.field public static final enum VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 93
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    const-string v1, "VOLTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    const-string v3, "VOWIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/core/ImsIconManager$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    new-instance v3, Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    const-string v5, "VO5G"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VO5G:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 92
    sput-object v5, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->$VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/ImsIconManager$Icon;
    .locals 1

    .line 92
    const-class v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/ImsIconManager$Icon;
    .locals 1

    .line 92
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->$VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/ImsIconManager$Icon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    return-object v0
.end method
