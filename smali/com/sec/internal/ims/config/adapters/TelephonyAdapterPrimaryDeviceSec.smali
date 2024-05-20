.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.source "TelephonyAdapterPrimaryDeviceSec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$ReadyState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NIRSMS_KEYWORD:Ljava/lang/String; = "NIRSMS0001"


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 35
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->registerPortSmsReceiver()V

    .line 36
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->initState()V

    return-void
.end method


# virtual methods
.method public getOtp()Ljava/lang/String;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getOtp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getState(Ljava/lang/String;)V
    .locals 4

    .line 108
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 114
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 41
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->LOG_TAG:Ljava/lang/String;

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

    .line 42
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 54
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    if-eqz p1, :cond_8

    const/16 p1, 0x32

    .line 55
    invoke-virtual {p0, p1, v6}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->notifyAutoConfigurationListener(IZ)V

    goto/16 :goto_0

    .line 91
    :cond_1
    iput-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtp:Ljava/lang/String;

    .line 93
    :try_start_0
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otp timeout: semaphore release with mCurrentPortPermits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 95
    iput v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 60
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v3, "receive port sms"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 62
    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->SMS_CONFIGURATION_REQUEST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v6, :cond_5

    .line 63
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const/4 v2, -0x1

    invoke-static {p1, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    if-eq p1, v2, :cond_3

    move v5, v6

    :cond_3
    const p1, 0x13040205

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",NRCR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->SMS_CONFIGURATION_REQUEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", RcsUserSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v5, :cond_4

    .line 68
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v1, "force configuration request"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 71
    :cond_4
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string p1, "User didn\'t try RCS service yet"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtp:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpReceivedTime:J

    .line 78
    :try_start_1
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otp received: semaphore release with mCurrentPortPermits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 80
    iput v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 86
    :cond_6
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string p1, "no SMS data!"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_7
    iput-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    .line 46
    :try_start_2
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semaphore release with mCurrentPermits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPermits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPermits:I

    invoke-virtual {p1, p0}, Ljava/util/concurrent/Semaphore;->release(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method
