.class synthetic Lcom/samsung/android/cmcsetting/CmcSettingManager$19;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2720
    invoke-static {}, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->values()[Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    :try_start_9
    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method
