.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
.super Ljava/lang/Enum;
.source "ChatData.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field public static final enum ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field public static final enum ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field public static final enum PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field public static final enum REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 111
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v1, "ONE_TO_ONE_CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 116
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v3, "REGULAR_GROUP_CHAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 127
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v5, "PARTICIPANT_BASED_GROUP_CHAT"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 132
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v8, "ONE_TO_MANY_CHAT"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v7, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    new-array v8, v9, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    aput-object v5, v8, v7

    .line 107
    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 2

    .line 152
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 154
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static isClosedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 1

    .line 170
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 1

    .line 162
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 1

    .line 166
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 1

    .line 107
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 1

    .line 107
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 0

    .line 148
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->id:I

    return p0
.end method
