.class public final enum Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
.super Ljava/lang/Enum;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/loginclient/TokenLoginClient$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 800
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 801
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v3, "failure"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 802
    new-instance v3, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v5, "waitingOnObserver"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 803
    new-instance v5, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v7, "timeout"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 804
    new-instance v7, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v9, "deviceNotCapable"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 805
    new-instance v9, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v11, "engineNotInstalled"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 806
    new-instance v11, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v13, "rogueEngineInstalled"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 807
    new-instance v13, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v15, "securityException"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 799
    sput-object v15, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 799
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1

    .line 799
    const-class v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1

    .line 799
    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-virtual {v0}, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object v0
.end method
