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
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .registers 6

    .line 429
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->DE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 430
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 431
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "INITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 432
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "REFRESH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 433
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "HAND_OVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 434
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "RE_REGI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 435
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const/4 v1, 0x5

    const/16 v2, 0x9

    const-string v3, "DE_REGI"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->DE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 429
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 440
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .registers 2

    .line 429
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .registers 1

    .line 429
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 444
    iget p0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->mCode:I

    return p0
.end method
