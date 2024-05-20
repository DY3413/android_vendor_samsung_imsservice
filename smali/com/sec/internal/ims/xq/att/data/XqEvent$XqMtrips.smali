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
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v3, "M01"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M01:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v3, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v5, "M02"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M02:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v5, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v7, "M03"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M03:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v7, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v9, "M04"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M04:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v9, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v11, "M05"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M05:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v11, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v13, "M06"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->M06:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v13, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v15, "SPTX"

    const/4 v14, 0x7

    const/16 v12, 0x64

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->SPTX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    new-instance v12, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const-string v15, "SPRX"

    const/16 v14, 0x8

    const/16 v10, 0x65

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->SPRX:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 7
    sput-object v10, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
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
    .locals 5

    .line 17
    invoke-static {}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 18
    invoke-virtual {v3}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->value:I

    return p0
.end method
