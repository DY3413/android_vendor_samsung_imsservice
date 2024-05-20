.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatbotMsgTechConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

.field public static final enum BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

.field public static final enum DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

.field public static final enum SESSION_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

.field public static final enum SLM_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    const-string v3, "SESSION_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SESSION_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    const-string v5, "BOTH_SESSION_AND_SLM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    const-string v7, "SLM_ONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SLM_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 38
    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    return-object v0
.end method
