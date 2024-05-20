.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
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
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 68
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 72
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v3, "READ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 76
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v5, "SENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 80
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v7, "SENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 84
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 88
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v11, "TO_SEND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 92
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v13, "BLOCKED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 96
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v15, "QUEUED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 100
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v14, "IRRELEVANT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

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

    .line 64
    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 102
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 110
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 64
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 64
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 0

    .line 120
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->id:I

    return p0
.end method
