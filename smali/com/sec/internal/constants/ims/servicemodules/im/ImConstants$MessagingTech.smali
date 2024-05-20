.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
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
    name = "MessagingTech"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field public static final enum NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field public static final enum SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field public static final enum SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 162
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 163
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    const-string v3, "SLM_PAGER_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 164
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    const-string v5, "SLM_LARGE_MODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 161
    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 166
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 2

    .line 174
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 176
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 1

    .line 161
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 1

    .line 161
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->id:I

    return p0
.end method
