.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmTypeChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "ACTIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 14
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v3, "DEACTIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 15
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v5, "VOICEMAILTOTEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 16
    new-instance v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v7, "GREETING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 17
    new-instance v7, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v9, "PIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 18
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v11, "FULLPROFILE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 19
    new-instance v11, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v13, "NUTOFF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 20
    new-instance v13, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v15, "NUTON"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 21
    new-instance v15, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v14, "V2TLANGUAGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 12
    sput-object v14, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

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
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 1

    .line 12
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->mId:I

    return p0
.end method
