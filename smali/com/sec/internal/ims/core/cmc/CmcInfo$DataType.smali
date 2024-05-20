.class public final enum Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
.super Ljava/lang/Enum;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum NOT_DEFINED:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 56
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v5, "STRING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v5, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v7, "LIST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v7, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v9, "NOT_DEFINED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->NOT_DEFINED:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    .locals 1

    .line 56
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-object v0
.end method
