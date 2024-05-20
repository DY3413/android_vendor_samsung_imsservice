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
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendSmsNotification(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "sendSmsNotification: "

    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 52
    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    const-string/jumbo v2, "subscription"

    const/4 v3, -0x1

    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 56
    iget-object v2, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 57
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    .line 60
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "sendSmsNotification: discard empty notification"

    .line 63
    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v3, "aescfg"

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v2, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x8

    .line 66
    iput v3, v2, Landroid/os/Message;->what:I

    .line 67
    iput p1, v2, Landroid/os/Message;->arg1:I

    const-string p1, ","

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string p0, "sendSmsNotification: discard invalid notification"

    .line 71
    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
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

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 37
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "sms"

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "localhost"

    const-string v1, "8095"

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 46
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->sendSmsNotification(Landroid/content/Intent;)V

    return-void
.end method
