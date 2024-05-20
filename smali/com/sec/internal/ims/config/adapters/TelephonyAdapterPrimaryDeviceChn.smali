.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.source "TelephonyAdapterPrimaryDeviceChn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$ReadyState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 31
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->registerSmsReceiver()V

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->initState()V

    return-void
.end method


# virtual methods
.method protected createSmsReceiver()V
    .locals 2

    .line 37
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$SmsReceiver-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    return-void
.end method

.method protected getState(Ljava/lang/String;)V
    .locals 4

    .line 59
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 65
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 42
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleOtpTimeout(Z)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1, v2, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleReceivedDataSms(Landroid/os/Message;ZZ)V

    :goto_0
    return-void
.end method
