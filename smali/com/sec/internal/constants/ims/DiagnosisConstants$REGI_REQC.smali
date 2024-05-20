.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REGI_REQC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum DE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 431
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 432
    new-instance v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v3, "INITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 433
    new-instance v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v5, "REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 434
    new-instance v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v7, "HAND_OVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 435
    new-instance v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v9, "RE_REGI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 436
    new-instance v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v11, "DE_REGI"

    const/4 v12, 0x5

    const/16 v13, 0x9

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->DE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 430
    sput-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 441
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .locals 1

    .line 430
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .locals 1

    .line 430
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 445
    iget p0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->mCode:I

    return p0
.end method
