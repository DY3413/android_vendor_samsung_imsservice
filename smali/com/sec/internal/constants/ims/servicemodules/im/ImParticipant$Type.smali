.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
.super Ljava/lang/Enum;
.source "ImParticipant.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

.field public static final enum CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

.field public static final enum INITIATOR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

.field public static final enum REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 109
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 114
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    const-string v3, "INITIATOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->INITIATOR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 120
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    const-string v5, "CHAIRMAN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 105
    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 123
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .locals 1

    .line 140
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .locals 1

    .line 105
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .locals 1

    .line 105
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .locals 0

    .line 136
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->id:I

    return p0
.end method
