.class public Lcom/sec/internal/ims/aec/receiver/SmsNotification;
.super Landroid/content/BroadcastReceiver;
.source "SmsNotification.java"


# static fields
.field private static final DATA_AUTHORITY:Ljava/lang/String; = "localhost"

.field private static final DATA_SCHEME:Ljava/lang/String; = "sms"

.field private static final DEST_PORT:Ljava/lang/String; = "8095"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TS43_SMS_PUSH_MESSAGE:Ljava/lang/String; = "aescfg"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModuleHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendSmsNotification(Landroid/content/Intent;)V
    .registers 10

    const-string/jumbo v0, "sendSmsNotification: "

    .line 52
    :try_start_3
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x0

    .line 53
    aget-object v1, v1, v2

    if-eqz v1, :cond_9a

    .line 55
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "subscription"

    const/4 v5, -0x1

    .line 56
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result p1

    .line 57
    sget-object v4, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_36} :catch_81

    const-string v6, "aescfg"

    const/4 v7, 0x1

    if-eqz v5, :cond_53

    .line 61
    :try_start_3b
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_59

    .line 65
    :cond_53
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    :goto_59
    move v2, v7

    goto :goto_61

    :cond_5b
    const-string/jumbo v1, "sendSmsNotification: discard invalid notification"

    .line 68
    invoke-static {v4, v1, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_61
    :goto_61
    if-eqz v2, :cond_9a

    .line 72
    iget-object v1, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    .line 73
    iput v2, v1, Landroid/os/Message;->what:I

    .line 74
    iput p1, v1, Landroid/os/Message;->arg1:I

    const-string p1, ","

    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_80
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_80} :catch_81

    goto :goto_9a

    :catch_81
    move-exception p0

    .line 80
    sget-object p1, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    :goto_9a
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 38
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "sms"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "localhost"

    const-string v1, "8095"

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 47
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->sendSmsNotification(Landroid/content/Intent;)V

    return-void
.end method
