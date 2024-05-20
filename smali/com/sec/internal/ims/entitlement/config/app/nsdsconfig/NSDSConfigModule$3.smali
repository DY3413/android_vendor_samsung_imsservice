.class Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;
.super Landroid/content/BroadcastReceiver;
.source "NSDSConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 100
    :try_start_0
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 101
    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    const-string/jumbo v1, "subscription"

    const/4 v2, -0x1

    .line 103
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, p2, :cond_1

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "carrierconfigupdate"

    if-eqz v2, :cond_0

    .line 109
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    move v0, v3

    goto :goto_1

    .line 117
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onReceive: discard mismatch phoneId"

    invoke-static {p1, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 121
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string v0, "onReceive: start device config by push SMS"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveActionTrigger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->onDeviceReady()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
