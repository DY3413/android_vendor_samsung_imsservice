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
.method private static synthetic $values()[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    .registers 3

    .line 1151
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->REJECT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->NON_DEFAULT_MSG_APP:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1155
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const-string v1, "ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    .line 1160
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const-string v1, "REJECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->REJECT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    .line 1165
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    const-string v1, "NON_DEFAULT_MSG_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->NON_DEFAULT_MSG_APP:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    .line 1151
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->$values()[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    .registers 2

    .line 1151
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    .registers 1

    .line 1151
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-object v0
.end method
