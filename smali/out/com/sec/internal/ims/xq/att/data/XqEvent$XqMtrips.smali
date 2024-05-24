.class public final enum Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
.super Ljava/lang/Enum;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/xq/att/data/XqEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XqMtrips"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum M01:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum M02:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum M03:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum M04:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum M05:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum M06:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum SPRX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum SPTX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

.field public static final enum UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .registers 9

    .line 7
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M01:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v2, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M02:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v3, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M03:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v4, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M04:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v5, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M05:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v6, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M06:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v7, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->SPTX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    sget-object v8, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->SPRX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    filled-new-array/range {v0 .. v8}, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "M01"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M01:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "M02"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M02:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "M03"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M03:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "M04"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M04:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "M05"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M05:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "M06"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M06:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const/4 v1, 0x7

    const/16 v2, 0x64

    const-string v3, "SPTX"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->SPTX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const/16 v1, 0x8

    const/16 v2, 0x65

    const-string v3, "SPRX"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->SPRX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    .line 7
    invoke-static {}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->$values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->value:I

    return-void
.end method

.method public static castToType(I)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .registers 6

    .line 17
    invoke-static {}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 18
    invoke-virtual {v3}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 22
    :cond_14
    sget-object p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .registers 2

    .line 7
    const-class v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .registers 1

    .line 7
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->value:I

    return p0
.end method
