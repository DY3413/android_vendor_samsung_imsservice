.class public final enum Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
.super Ljava/lang/Enum;
.source "SimConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/core/SimConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIM_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 18
    new-instance v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v3, "ABSENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 19
    new-instance v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v5, "LOCKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    new-instance v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v7, "INVALID_ISIM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 20
    new-instance v7, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v9, "LOADED"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 16
    sput-object v9, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->mState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 4

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
