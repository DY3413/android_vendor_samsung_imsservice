.class public final enum Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
.super Ljava/lang/Enum;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 360
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 361
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v4, "DISABLE_TEMPORARY"

    invoke-direct {v1, v4, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 362
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v5, "DISABLE_PERMANENTLY"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 363
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v7, "DISABLE"

    const/4 v8, 0x3

    const/4 v9, -0x2

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 364
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v9, "DORMANT"

    const/4 v10, 0x4

    const/4 v11, -0x3

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 365
    new-instance v9, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v11, "DISABLE_RCS_BY_USER"

    const/4 v12, 0x5

    const/4 v13, -0x4

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 366
    new-instance v11, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v13, "ENABLE_RCS_BY_USER"

    const/4 v14, 0x6

    const/4 v15, -0x5

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 367
    new-instance v13, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE"

    const/4 v14, 0x7

    const/4 v12, -0x6

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 368
    new-instance v12, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE"

    const/16 v14, 0x8

    const/4 v10, -0x7

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 369
    new-instance v10, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "DISABLE_BY_RCS_DISABLED_STATE"

    const/16 v14, 0x9

    const/4 v8, -0x8

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 370
    new-instance v8, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "DORMANT_BY_RCS_DISABLED_STATE"

    const/16 v14, 0xa

    const/16 v6, -0x9

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 371
    new-instance v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "TURNEDOFF_BY_RCS_DISABLED_STATE"

    const/16 v14, 0xb

    const/16 v3, -0xa

    invoke-direct {v6, v15, v14, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 372
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "DISABLED_TERMS_AND_CONDIDIONTS_REJECTED"

    const/16 v14, 0xc

    const/16 v2, -0xb

    invoke-direct {v3, v15, v14, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 373
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v15, "NONE"

    const/16 v14, 0xd

    move-object/from16 v16, v3

    const/16 v3, -0xc

    invoke-direct {v2, v15, v14, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v12, v3, v0

    const/16 v0, 0x9

    aput-object v10, v3, v0

    const/16 v0, 0xa

    aput-object v8, v3, v0

    const/16 v0, 0xb

    aput-object v6, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v2, v3, v14

    .line 359
    sput-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 359
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 359
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 0

    .line 382
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->mValue:I

    return p0
.end method
