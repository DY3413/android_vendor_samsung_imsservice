.class final enum Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
.super Ljava/lang/Enum;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OBSERVER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

.field public static final enum watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 192
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v1, "mainCctivation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v3, "messageActivation"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v3, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v5, "callActivation"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v5, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string/jumbo v7, "watchActivation"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    .line 193
    new-instance v7, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v9, "networkMode"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v9, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v11, "lineInfo"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v11, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v13, "deviceInfo"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v13, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v15, "saInfo"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v15, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v14, "sameWifiNetworkStatus"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    new-instance v14, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const-string v12, "all"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 191
    sput-object v12, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
    .locals 1

    .line 191
    const-class v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
    .locals 1

    .line 191
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    return-object v0
.end method
