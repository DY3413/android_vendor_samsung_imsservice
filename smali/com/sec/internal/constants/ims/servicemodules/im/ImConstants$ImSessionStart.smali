.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImSessionStart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field public static final enum WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field public static final enum WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field public static final enum WHEN_STARTS_TYPING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const-string v1, "WHEN_OPENS_CHAT_WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 52
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const-string v3, "WHEN_STARTS_TYPING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_STARTS_TYPING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 58
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const-string v5, "WHEN_PRESSES_SEND_BUTTON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 42
    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 1

    .line 42
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 1

    .line 42
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-object v0
.end method
