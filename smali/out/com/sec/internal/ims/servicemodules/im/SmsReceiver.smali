.class public Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mModule:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->mModule:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    .line 23
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_68

    const-string v0, "phone"

    .line 36
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->mPhoneId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 37
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p2

    const/4 v0, 0x0

    .line 38
    aget-object p2, p2, v0

    .line 39
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    .line 41
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origNum - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", smsTime - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->mModule:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;->mModule:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->processForResolvingLatchingStatus(Lcom/sec/ims/util/ImsUri;JI)V

    :cond_68
    return-void
.end method
