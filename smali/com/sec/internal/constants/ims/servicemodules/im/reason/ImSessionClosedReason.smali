.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
.super Ljava/lang/Enum;
.source "ImSessionClosedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum ALL_PARTICIPANTS_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum CLOSED_WITH_408_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum CLOSED_WITH_480_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum LEAVE_SESSION_FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum LEAVE_SESSION_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum MAX_GROUP_NUMBER_REACHED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 5
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v3, "CLOSED_BY_REMOTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 6
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v5, "CLOSED_BY_LOCAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 7
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v7, "CLOSED_INVOLUNTARILY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 8
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v9, "KICKED_OUT_BY_LEADER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 9
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v11, "GROUP_CHAT_DISMISSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 10
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v13, "MAX_GROUP_NUMBER_REACHED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->MAX_GROUP_NUMBER_REACHED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 11
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v15, "CLOSED_WITH_480_REASON_CODE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_WITH_480_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 12
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v14, "CLOSED_WITH_408_REASON_CODE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_WITH_408_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 13
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v12, "LEFT_BY_SERVER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 14
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v10, "ALL_PARTICIPANTS_LEFT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->ALL_PARTICIPANTS_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 15
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v8, "LEAVE_SESSION_FAILED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 16
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const-string v6, "LEAVE_SESSION_PENDING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 3
    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object v0
.end method
