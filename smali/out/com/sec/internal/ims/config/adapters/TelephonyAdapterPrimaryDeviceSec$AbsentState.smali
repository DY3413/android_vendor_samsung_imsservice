.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;
.source "TelephonyAdapterPrimaryDeviceSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AbsentState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .registers 4

    .line 326
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIdentityByPhoneId: ABSENT"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2b

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMEI_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_35

    .line 332
    :cond_2b
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "identity error"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object p0, v1

    :goto_35
    const-string p1, "[\\W]"

    .line 335
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOtp()Ljava/lang/String;
    .registers 7

    .line 305
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 306
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-wide v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtpReceivedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    .line 307
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "getOtp exist"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPortOtp()Ljava/lang/String;
    .registers 7

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 316
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtp:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-wide v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpReceivedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    .line 317
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "getPortOtp exist"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtp:Ljava/lang/String;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
