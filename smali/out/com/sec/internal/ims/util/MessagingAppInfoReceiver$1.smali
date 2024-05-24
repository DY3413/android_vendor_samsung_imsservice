.class synthetic Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$1;
.super Ljava/lang/Object;
.source "MessagingAppInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    invoke-static {}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->values()[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$1;->$SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp:[I

    :try_start_9
    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->SAMSUNG_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$1;->$SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp:[I

    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ANDROID_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
