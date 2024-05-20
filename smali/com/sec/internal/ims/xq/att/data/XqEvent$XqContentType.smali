.class public final enum Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
.super Ljava/lang/Enum;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/xq/att/data/XqEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XqContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v3, "UCHAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v3, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v5, "USHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v5, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v7, "UINT32"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v7, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v9, "STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 30
    sput-object v9, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 1

    .line 30
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object v0
.end method
