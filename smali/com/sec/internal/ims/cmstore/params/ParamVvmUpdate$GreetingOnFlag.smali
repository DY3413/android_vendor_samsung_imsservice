.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GreetingOnFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

.field public static final enum GreetingOff:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

.field public static final enum GreetingOn:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    const-string v1, "GreetingOff"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->GreetingOff:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    .line 36
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    const-string v3, "GreetingOn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->GreetingOn:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 34
    sput-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->mId:I

    return p0
.end method
