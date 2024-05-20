.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
.super Ljava/lang/Enum;
.source "ImConstants.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RevocationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 125
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 126
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v3, "AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 127
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v5, "PENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 128
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v7, "SENDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 129
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v9, "SENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 130
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v11, "SUCCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 131
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const-string v13, "FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 124
    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 133
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 2

    .line 141
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 143
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 1

    .line 124
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 1

    .line 124
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 0

    .line 157
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->id:I

    return p0
.end method
