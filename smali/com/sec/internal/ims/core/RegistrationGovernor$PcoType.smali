.class public final enum Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
.super Ljava/lang/Enum;
.source "RegistrationGovernor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PcoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 111
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_DEFAULT"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 112
    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v3, "PCO_AWAITING"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 115
    new-instance v3, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v5, "PCO_POSTPAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 116
    new-instance v5, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v7, "PCO_RESTRICTED_ACCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 117
    new-instance v7, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v9, "PCO_ZERO_BALANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 118
    new-instance v9, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v11, "PCO_RATE_THROTTLING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 119
    new-instance v11, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v13, "PCO_SELF_ACTIVATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 109
    sput-object v13, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    return-void
.end method

.method public static fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 5

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 129
    iget v4, v3, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1

    .line 109
    const-class v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1

    .line 109
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object v0
.end method
