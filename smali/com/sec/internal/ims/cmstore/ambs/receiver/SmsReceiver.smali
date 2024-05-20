.class public Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-void
.end method

.method private checkAndHandleZCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1, p2, v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->handleSmsZCode(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 37
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string v0, ">>>>>>>onReceive start"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pdus"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 49
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 53
    :cond_0
    array-length v1, v0

    new-array v2, v1, [Landroid/telephony/SmsMessage;

    const/4 v3, 0x0

    move v4, v3

    .line 54
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 55
    aget-object v5, v0, v4

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_1
    aget-object v0, v2, v3

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_3

    .line 61
    aget-object v5, v2, v4

    .line 62
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 70
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "phone"

    .line 71
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 75
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->checkAndHandleZCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 77
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore this sms message, phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mStoreClientId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 78
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentNum:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 79
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 66
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string p1, "invalid message data"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string p1, "invalid pdus"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string p1, ">>>>>>>onReceive end"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
