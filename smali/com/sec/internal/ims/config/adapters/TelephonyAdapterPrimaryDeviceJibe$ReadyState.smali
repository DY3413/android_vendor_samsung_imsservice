.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;
.source "TelephonyAdapterPrimaryDeviceJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)V
    .locals 1

    .line 157
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    .line 158
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v0, "ready state"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIidToken()Ljava/lang/String;
    .locals 6

    .line 228
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "getIidToken"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentIidTokenPermits:I

    const/4 v2, 0x1

    .line 231
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForIidToken:Z

    const/16 v3, 0xe

    .line 232
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x4baf0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIidTokenSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentIidTokenPermits:I

    .line 236
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "semaphore acquire with mCurrentIidTokenPermits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentIidTokenPermits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIidTokenSemaphore:Ljava/util/concurrent/Semaphore;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentIidTokenPermits:I

    invoke-virtual {v2, v0}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForIidToken:Z

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIidToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 243
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 6

    .line 196
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "getMsisdnNumber"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v3, "msisdn exists from telephony"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x13040109

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",EMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdn:Ljava/lang/String;

    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v1, "operator using jibe, but not GC, use FW\'s dialog to ask for MSISDN"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "need to get msisdn from application"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    const/4 v2, 0x1

    .line 212
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    const/4 v3, 0x6

    .line 213
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x4baf0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    .line 217
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "semaphore acquire with mCurrentMsisdnPermits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    invoke-virtual {v2, v0}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 6

    .line 163
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "getOtp"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    const/4 v2, 0x1

    .line 165
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    const/4 v3, 0x2

    .line 166
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x4baf0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mOtpSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "semaphore acquire with mCurrentOtpPermits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mOtpSemaphore:Ljava/util/concurrent/Semaphore;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    invoke-virtual {v2, v0}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    return-object p0
.end method

.method public getPortOtp()Ljava/lang/String;
    .locals 4

    .line 181
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "getPortOtp"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    const/4 v1, 0x5

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    .line 186
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPortOtp: semaphore acquire with mCurrentPortPermits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtp:Ljava/lang/String;

    return-object p0
.end method

.method public notifyAutoConfigurationListener(IZ)V
    .locals 10

    .line 290
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAutoConfigurationListener: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x34

    const/16 v1, 0x35

    const/16 v2, 0x33

    const/16 v3, 0x32

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 294
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string p2, "notifyAutoConfigurationListener: unknown notification type"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    .line 298
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    if-eqz v4, :cond_3

    :cond_1
    if-ne p1, v2, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    if-eqz v4, :cond_3

    :cond_2
    if-ne p1, v1, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForIidToken:Z

    if-nez v4, :cond_4

    .line 300
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p2, p2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAutoConfigurationListener: ignore notification type, mIsWaitingForOtp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWaitingForMsisdn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWaitingForIidToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForIidToken:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 305
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 306
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v5, v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    if-nez v5, :cond_5

    .line 307
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string p2, "notifyAutoConfigurationListener: mAutoConfigurationListener: empty"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 313
    :cond_5
    :try_start_1
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 314
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyAutoConfigurationListener: listener length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne p1, v3, :cond_6

    .line 317
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onVerificationCodeNeeded"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v6, 0x13040101

    .line 318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",VCN,LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    .line 320
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onMsisdnNumberNeeded"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v6, 0x13040102

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",MNN,LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    if-ne p1, v1, :cond_8

    .line 323
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onIidTokenNeeded"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v6, 0x1304010b

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",ITN,LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_8
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onAutoConfigurationCompleted"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v6, 0x13040103

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",ACC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :goto_0
    if-nez v5, :cond_a

    .line 331
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Listener not registered yet. Postpone notify later: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne p1, v0, :cond_9

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_e

    .line 340
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/IAutoConfigurationListener;

    if-ne p1, v3, :cond_b

    .line 342
    invoke-interface {v6}, Lcom/sec/ims/IAutoConfigurationListener;->onVerificationCodeNeeded()V

    goto :goto_3

    :cond_b
    if-ne p1, v2, :cond_c

    .line 344
    invoke-interface {v6}, Lcom/sec/ims/IAutoConfigurationListener;->onMsisdnNumberNeeded()V

    goto :goto_3

    :cond_c
    if-ne p1, v1, :cond_d

    .line 346
    invoke-interface {v6}, Lcom/sec/ims/IAutoConfigurationListener;->onIidTokenNeeded()V

    goto :goto_3

    .line 348
    :cond_d
    invoke-interface {v6, p2}, Lcom/sec/ims/IAutoConfigurationListener;->onAutoConfigurationCompleted(Z)V

    .line 349
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 355
    :try_start_2
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAutoConfigurationListener: AbstractMethodError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AbstractMethodError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 353
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAutoConfigurationListener: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :cond_e
    :goto_4
    :try_start_3
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_2
    move-exception p1

    .line 361
    :try_start_4
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAutoConfigurationListener: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    :goto_5
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 5

    if-nez p1, :cond_0

    .line 251
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v0, "listener: null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x13040100

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", listener added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 261
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 262
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->notifyAutoConfigurationListener(IZ)V

    goto :goto_0

    .line 267
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendIidToken(Ljava/lang/String;)V
    .locals 4

    .line 408
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "sendIidToken"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",IT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1304010c

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v2, "value is null or empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWaitingForIidToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForIidToken:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForIidToken:Z

    if-eqz v1, :cond_2

    .line 418
    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIidToken:Ljava/lang/String;

    .line 420
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semaphore release with mCurrentIidTokenPermits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentIidTokenPermits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIidTokenSemaphore:Ljava/util/concurrent/Semaphore;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentIidTokenPermits:I

    invoke-virtual {p1, p0}, Ljava/util/concurrent/Semaphore;->release(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 4

    .line 386
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "sendMsisdnNumber"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",MN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040105

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v2, "value is null or empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWaitingForMsisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    if-eqz v1, :cond_2

    .line 396
    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdn:Ljava/lang/String;

    .line 398
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semaphore release with mCurrentMsisdnPermits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    invoke-virtual {p1, p0}, Ljava/util/concurrent/Semaphore;->release(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 4

    .line 368
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerificationCode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040104

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWaitingForOtp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    if-eqz v1, :cond_0

    .line 374
    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    .line 376
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semaphore release with mCurrentOtpPermits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mOtpSemaphore:Ljava/util/concurrent/Semaphore;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    invoke-virtual {p1, p0}, Ljava/util/concurrent/Semaphore;->release(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 5

    if-nez p1, :cond_0

    .line 274
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v0, "listener: null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 280
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x1304010a

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",UL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 285
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
