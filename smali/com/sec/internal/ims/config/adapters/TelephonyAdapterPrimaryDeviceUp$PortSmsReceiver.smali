.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;
.source "TelephonyAdapterPrimaryDeviceUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortSmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;)V

    return-void
.end method


# virtual methods
.method protected readMessageFromSMSIntent(Landroid/content/Intent;)V
    .locals 4

    .line 495
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 496
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v3, "readMessageFromSMSIntent: enter"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 497
    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const-string/jumbo v2, "subscription"

    .line 500
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 501
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result p1

    .line 503
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x4

    .line 509
    iput v2, v0, Landroid/os/Message;->what:I

    .line 510
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 511
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    if-ne v1, p1, :cond_1

    .line 513
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
