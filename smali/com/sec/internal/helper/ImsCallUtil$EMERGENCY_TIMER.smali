.class public final enum Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;
.super Ljava/lang/Enum;
.source "ImsCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/ImsCallUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMERGENCY_TIMER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

.field public static final enum E1:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

.field public static final enum E2:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

.field public static final enum E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 71
    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    const-string v1, "E1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E1:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    new-instance v1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    const-string v3, "E2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E2:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    new-instance v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    const-string v5, "E3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 70
    sput-object v5, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->$VALUES:[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;
    .locals 1

    .line 70
    const-class v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;
    .locals 1

    .line 70
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->$VALUES:[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    return-object v0
.end method
