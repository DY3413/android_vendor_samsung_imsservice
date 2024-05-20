.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmGreetingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 51
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v3, "Name"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 52
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v5, "Custom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 53
    new-instance v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v7, "Busy"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 54
    new-instance v7, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v9, "ExtendAbsence"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 55
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v11, "Fun"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 48
    sput-object v11, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 5

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 71
    iget v4, v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    return p0
.end method
