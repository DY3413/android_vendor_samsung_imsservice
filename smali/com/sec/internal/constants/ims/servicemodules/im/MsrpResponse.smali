.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
.super Ljava/lang/Enum;
.source "MsrpResponse.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_200_SUCCESSFUL_TRANSACTION"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 5
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v3, "MSRP_400_REQUEST_UNINTELLIGIBLE"

    const/4 v4, 0x1

    const/16 v5, 0x190

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 6
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v5, "MSRP_403_ACTION_NOT_ALLOWED"

    const/4 v6, 0x2

    const/16 v7, 0x193

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 7
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v7, "MSRP_408_TRANSACTION_TIMED_OUT"

    const/4 v8, 0x3

    const/16 v9, 0x198

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 8
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v9, "MSRP_413_DO_NOT_SEND_THIS_MESSAGE"

    const/4 v10, 0x4

    const/16 v11, 0x19d

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 9
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v11, "MSRP_415_UNKNOWN_CONTENT_TYPE"

    const/4 v12, 0x5

    const/16 v13, 0x19f

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 10
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v13, "MSRP_423_PARAMETERS_OUT_OF_BOUND"

    const/4 v14, 0x6

    const/16 v15, 0x1a7

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 11
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v15, "MSRP_481_SESSION_DOES_NOT_EXIST"

    const/4 v14, 0x7

    const/16 v12, 0x1e1

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 12
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v15, "MSRP_501_UNKNOWN_METHOD"

    const/16 v14, 0x8

    const/16 v10, 0x1f5

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 13
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v15, "MSRP_503_OUT_OF_SERVICE"

    const/16 v14, 0x9

    const/16 v8, 0x1f7

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 14
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v15, "MSRP_506_SESSION_ON_OTHER_CONNECTION"

    const/16 v14, 0xa

    const/16 v6, 0x1fa

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 16
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v15, "MSRP_UNKNOWN_RESPONSE"

    const/16 v14, 0xb

    const/16 v4, 0x3e7

    invoke-direct {v6, v15, v14, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 3
    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 2

    .line 37
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 39
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->id:I

    return p0
.end method
