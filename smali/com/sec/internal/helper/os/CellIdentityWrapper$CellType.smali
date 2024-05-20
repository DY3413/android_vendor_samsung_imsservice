.class abstract enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.super Ljava/lang/Enum;
.source "CellIdentityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/os/CellIdentityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "CellType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 36
    new-instance v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2;

    const-string v4, "GSM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2-IA;)V

    sput-object v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 57
    new-instance v4, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$3;

    const-string v6, "CDMA"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$3;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$3-IA;)V

    sput-object v4, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 74
    new-instance v6, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4;

    const-string v8, "TDSCDMA"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4-IA;)V

    sput-object v6, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 93
    new-instance v8, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$5;

    const-string v10, "WCDMA"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$5;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$5-IA;)V

    sput-object v8, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 117
    new-instance v10, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$6;

    const-string v12, "LTE"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$6;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$6-IA;)V

    sput-object v10, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 136
    new-instance v12, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;

    const-string v14, "NR"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7-IA;)V

    sput-object v12, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    const/4 v3, 0x7

    new-array v3, v3, [Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v13

    aput-object v12, v3, v15

    .line 18
    sput-object v3, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->$VALUES:[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
    .locals 1

    .line 18
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->$VALUES:[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    return-object v0
.end method


# virtual methods
.method abstract isMatchedWith(I)Z
.end method

.method abstract retrieveAreaCode(Landroid/telephony/CellIdentity;)I
.end method

.method abstract retrieveCellId(Landroid/telephony/CellIdentity;)J
.end method
