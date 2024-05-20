.class final enum Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
.super Ljava/lang/Enum;
.source "WorkflowParamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UserAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

.field public static final enum ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

.field public static final enum NON_DEFAULT_MSG_APP:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

.field public static final enum REJECT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1154
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const-string v1, "ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    .line 1159
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const-string v3, "REJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->REJECT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    .line 1164
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const-string v5, "NON_DEFAULT_MSG_APP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->NON_DEFAULT_MSG_APP:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1150
    sput-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    .locals 1

    .line 1150
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    .locals 1

    .line 1150
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-object v0
.end method
