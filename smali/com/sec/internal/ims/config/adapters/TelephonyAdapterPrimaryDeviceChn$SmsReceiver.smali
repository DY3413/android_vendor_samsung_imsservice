.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;
.source "TelephonyAdapterPrimaryDeviceChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;)V

    return-void
.end method


# virtual methods
.method protected readMessageFromSMSIntent(Landroid/content/Intent;)V
    .locals 3

    .line 121
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 122
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "readMessageFromSMSIntent: enter"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 123
    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object p1

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
