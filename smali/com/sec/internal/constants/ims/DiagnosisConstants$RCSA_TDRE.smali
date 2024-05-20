.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RCSA_TDRE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum CHANGE_SWVERSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum FORBIDDEN_ERROR:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum FORCE_ACS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum GCPOLICY_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum INVALID_IIDTOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum SIM_CHANGED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum SIM_REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum SIPERROR_UNAUTHORIZED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum TOKEN_EXPIRED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum UPDATE_LOCAL_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum UPDATE_REMOTE_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

.field public static final enum UPDATE_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 695
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 696
    new-instance v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v3, "INVALID_TOKEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 697
    new-instance v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v5, "INVALID_IIDTOKEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_IIDTOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 698
    new-instance v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v7, "UPDATE_REMOTE_CONFIG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_REMOTE_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 699
    new-instance v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v9, "UPDATE_LOCAL_CONFIG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_LOCAL_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 700
    new-instance v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v11, "UPDATE_TOKEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 701
    new-instance v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v13, "DISABLE_RCS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 702
    new-instance v13, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v15, "FORCE_ACS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->FORCE_ACS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 703
    new-instance v15, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v14, "TOKEN_EXPIRED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->TOKEN_EXPIRED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 704
    new-instance v14, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v12, "CHANGE_SWVERSION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->CHANGE_SWVERSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 705
    new-instance v12, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v10, "SIPERROR_UNAUTHORIZED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIPERROR_UNAUTHORIZED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 706
    new-instance v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v8, "FORBIDDEN_ERROR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->FORBIDDEN_ERROR:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 707
    new-instance v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v6, "SIM_REFRESH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 708
    new-instance v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v4, "SIM_CHANGED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_CHANGED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    .line 709
    new-instance v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string v2, "GCPOLICY_CHANGE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->GCPOLICY_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 694
    sput-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 1

    .line 694
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 1

    .line 694
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-object v0
.end method
