.class public final Lcom/sec/internal/imsphone/ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;,
        Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;,
        Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_PDU_IMS:Ljava/lang/String; = "com.sec.internal.google.ImsSmsImpl.PduTest"

.field private static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final EVENT_SMS_DELIVER_REPORT_RETRY:I = 0x4

.field private static final EVENT_SMS_NO_RESPONSE_TIMEOUT:I = 0x2

.field private static final EVENT_SMS_RETRY:I = 0x1

.field private static final EVENT_SMS_SEND_DELAYED_MESSAGE:I = 0x3

.field private static final GSM_NETWORK_TYPE:I = 0x2

.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final LOG_TAG_HEAD:Ljava/lang/String; = "ImsSmsImpl"

.field private static final MAP_KEY_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field private static final MAP_KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field private static final MAP_KEY_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final MAP_KEY_STATUS_REPORT:Ljava/lang/String; = "statusReport"

.field private static final MAP_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final MAX_SEND_RETRIES_1:I = 0x1

.field private static final MAX_SEND_RETRIES_2:I = 0x2

.field private static final MAX_SEND_RETRIES_4:I = 0x4

.field private static final PDU_TYPE_RECEIVED_CDMA_SMS:I = 0x1

.field private static final PDU_TYPE_RECEIVED_GSM_SMS:I = 0x0

.field private static final RIL_CODE_RP_ERROR:I = 0x8000

.field private static final RIL_CODE_RP_ERROR_END:I = 0x80ff

.field private static final RP_CAUSE_CONGESTION:I = 0x2a

.field private static final RP_CAUSE_DESTINATION_OUT_OF_ORDER:I = 0x1b

.field private static final RP_CAUSE_MEMORY_CAP_EXCEEDED:I = 0x16

.field private static final RP_CAUSE_NETWORK_OUT_OF_ORDER:I = 0x26

.field private static final RP_CAUSE_NONE_ERROR:I = 0x0

.field private static final RP_CAUSE_NOT_COMPATIBLE_PROTOCOL:I = 0x62

.field private static final RP_CAUSE_PROTOCOL_ERROR:I = 0x6f

.field private static final RP_CAUSE_REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field private static final RP_CAUSE_RESOURCES_UNAVAILABLE:I = 0x2f

.field private static final RP_CAUSE_SMS_TRANSFER_REJECTED:I = 0x15

.field private static final RP_CAUSE_TEMPORARY_FAILURE:I = 0x29

.field private static final RP_CAUSE_UNIDENTIFIED_SUBSCRIBER:I = 0x1c

.field private static final RP_CAUSE_UNKNOWN_SUBSCRIBER:I = 0x1e

.field private static final SEND_RETRY_DELAY:I = 0x7530

.field private static final TIMER_STATE:I = 0x1fbd0

.field private static final TIMER_STATE_FOR_O2C:I = 0x7530

.field private static final TP_CAUSE_INVALID_SME_ADDRESS:I = 0xc3

.field private static final TP_CAUSE_SM_REJECTED_OR_DUPLICATE:I = 0xc5


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private final mDeliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mImsSmsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRetryCount:I

.field private mPhoneId:I

.field private mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

.field private mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

.field private mSmsc:Ljava/lang/String;

.field private mStatusMsgIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTpmr:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/imsphone/ImsSmsImpl;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/imsphone/ImsSmsImpl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsLogger(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentNetworkType(Lcom/sec/internal/imsphone/ImsSmsImpl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTokenByMessageId(Lcom/sec/internal/imsphone/ImsSmsImpl;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getTokenByMessageId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendDelayedMessage(Lcom/sec/internal/imsphone/ImsSmsImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSendDelayedMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStatusReport(Lcom/sec/internal/imsphone/ImsSmsImpl;IILjava/lang/String;[B)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleStatusReport(IILjava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReceiveSMSSuccssAcknowledgment(Lcom/sec/internal/imsphone/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSmsPduTestReceived(Lcom/sec/internal/imsphone/ImsSmsImpl;ILjava/lang/String;[B)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->onSmsPduTestReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 141
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    const-string v0, ""

    .line 121
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    .line 125
    new-instance v1, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener-IA;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    .line 134
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 1292
    new-instance v1, Lcom/sec/internal/imsphone/ImsSmsImpl$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/ImsSmsImpl$2;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSmsImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_41

    goto :goto_43

    :cond_41
    const-string v0, "2"

    :goto_43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    .line 143
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz p1, :cond_66

    .line 150
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->registerSmsEventListener()V

    .line 153
    :cond_66
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_83

    .line 154
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.internal.google.ImsSmsImpl.PduTest"

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register for intent action=com.sec.internal.google.ImsSmsImpl.PduTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    :cond_83
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 161
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$1;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private canFallback(I)Z
    .registers 10

    const/4 v0, 0x0

    .line 1186
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1187
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1188
    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1189
    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1192
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_4a

    if-ne v4, v6, :cond_4a

    const-string v4, "46000"

    .line 1193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_49
    return v7

    :cond_4a
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    .line 1195
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_60

    return v7

    .line 1197
    :cond_60
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_9b

    .line 1198
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v3, "gsm.operator.isroaming"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1199
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_93

    if-eqz v2, :cond_86

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_86

    goto :goto_93

    :cond_86
    if-ne p1, v7, :cond_de

    .line 1202
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->isVolteSupported(I)Z

    move-result p1

    if-eqz p1, :cond_de

    return v0

    .line 1200
    :cond_93
    :goto_93
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fallback always over NAS (cdmaless / volte roaming)"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1205
    :cond_9b
    sget-object p1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, p1, :cond_a0

    return v0

    .line 1207
    :cond_a0
    sget-object p1, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x12

    if-ne v2, p1, :cond_cb

    .line 1208
    new-instance p1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1209
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result p1

    if-eq p1, v6, :cond_de

    .line 1210
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_de

    .line 1211
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Block fallback for Play in VoWiFi international roaming"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1214
    :cond_cb
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p1

    if-eqz p1, :cond_de

    .line 1215
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_de

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_de

    return v0

    .line 1220
    :cond_de
    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_ef

    .line 1221
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "serviceState is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1225
    :cond_ef
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p0
    :try_end_11a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_11a} :catch_11e

    if-nez p0, :cond_11d

    return v7

    :cond_11d
    return v0

    .line 1232
    :catch_11e
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No permission for telephony service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private canFallbackForTimeout()Z
    .registers 9

    const/4 v0, 0x0

    .line 1239
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1240
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1241
    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1242
    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1245
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_4a

    if-ne v4, v6, :cond_4a

    const-string v4, "46000"

    .line 1246
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_49
    return v7

    :cond_4a
    new-array v3, v6, [Lcom/sec/internal/constants/Mno;

    .line 1248
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_5b

    return v7

    .line 1250
    :cond_5b
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_77

    .line 1251
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Block timeout fallback for Orange in VoWiFi roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1253
    :cond_77
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v3

    if-nez v3, :cond_83

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1254
    :cond_83
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    if-nez v2, :cond_94

    .line 1255
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "serviceState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1259
    :cond_94
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceState.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_d0

    .line 1261
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CanFallbackForTimeout() : SmsFallbackDefaultSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c8} :catch_c9

    return v7

    .line 1266
    :catch_c9
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No permission for telephony service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_d0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CanFallbackForTimeout() : SmsFallback is not Supported"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1275
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "token"

    .line 1276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "messageId"

    .line 1277
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "destAddr"

    .line 1278
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pdu"

    .line 1279
    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentType"

    .line 1280
    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "retryCount"

    .line 1281
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "statusReport"

    .line 1282
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getSmsFallback()Z
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 690
    :cond_6
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->getSmsFallback(I)Z

    move-result p0

    return p0
.end method

.method private getTPMR([B)B
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    .line 670
    array-length v0, p1

    if-gtz v0, :cond_7

    goto :goto_1a

    .line 673
    :cond_7
    aget-byte v0, p1, p0

    if-lez v0, :cond_1a

    .line 677
    array-length v1, p1

    add-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_1a

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_18

    goto :goto_1a

    .line 681
    :cond_18
    aget-byte p0, p1, v2

    :cond_1a
    :goto_1a
    return p0
.end method

.method private getTokenByMessageId(I)I
    .registers 4

    .line 495
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 496
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 497
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 499
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getMessageId()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 500
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result p0

    return p0

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method private handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;ZI)V
    .registers 16

    .line 766
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_10

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 767
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V

    goto/16 :goto_ac

    .line 768
    :cond_10
    sget-object p7, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_19

    .line 769
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_ac

    .line 770
    :cond_19
    sget-object p7, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_22

    .line 771
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_ac

    .line 772
    :cond_22
    sget-object p7, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_2b

    .line 773
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_ac

    .line 774
    :cond_2b
    sget-object p7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_3a

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 775
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_ac

    .line 776
    :cond_3a
    sget-object p7, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_49

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 777
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_ac

    .line 778
    :cond_49
    sget-object p7, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_58

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p8

    .line 779
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    goto :goto_ac

    .line 780
    :cond_58
    sget-object p7, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne p1, p7, :cond_60

    .line 781
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_ac

    .line 782
    :cond_60
    sget-object p7, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    filled-new-array {p7, v0}, [Lcom/sec/internal/constants/Mno;

    move-result-object p7

    invoke-virtual {p1, p7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p7

    if-eqz p7, :cond_79

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p8

    .line 783
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    goto :goto_ac

    .line 784
    :cond_79
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p6

    if-eqz p6, :cond_83

    .line 785
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleOrangeAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_ac

    .line 786
    :cond_83
    sget-object p6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object p7, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    sget-object p8, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    filled-new-array {p6, p7, p8}, [Lcom/sec/internal/constants/Mno;

    move-result-object p6

    invoke-virtual {p1, p6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 787
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_ac

    :cond_97
    if-eqz p4, :cond_a3

    .line 788
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 789
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_ac

    :cond_a3
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 791
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_ac
    return-void
.end method

.method private handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 12

    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_1b

    const/16 v0, 0x1f7

    if-eq p3, v0, :cond_1b

    const/16 v0, 0x1f8

    if-eq p3, v0, :cond_1b

    const/16 v0, 0x198

    if-ne p3, v0, :cond_11

    goto :goto_1b

    :cond_11
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1031
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1e

    .line 1029
    :cond_1b
    :goto_1b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1e
    return-void
.end method

.method private handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .registers 12

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_1c

    if-eqz p5, :cond_1c

    .line 1064
    iget v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1c

    add-int/2addr v0, v1

    .line 1065
    iput v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1066
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1067
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_25

    :cond_1c
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1069
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_25
    return-void
.end method

.method private handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 14

    .line 1098
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorCause()I

    move-result v7

    .line 1099
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result v8

    .line 1100
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v4

    if-eqz v8, :cond_5a

    const/16 p4, 0x9

    if-eq v8, p4, :cond_38

    const/4 p4, 0x2

    if-eq v8, p4, :cond_2e

    const/4 p4, 0x3

    if-eq v8, p4, :cond_23

    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1129
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto/16 :goto_73

    :cond_23
    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1118
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto/16 :goto_73

    :cond_2e
    const/4 v3, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1115
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_73

    .line 1121
    :cond_38
    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry to send over 1x"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    .line 1122
    invoke-direct {p0, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallback(I)Z

    move-result p4

    if-eqz p4, :cond_50

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1123
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_73

    :cond_50
    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1125
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_73

    :cond_5a
    const/16 p4, 0x2714

    if-ne p3, p4, :cond_69

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1105
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_73

    :cond_69
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1110
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 1131
    :goto_73
    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< SEND_SMS_CDMA : token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasonCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCause = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorClass = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 12

    if-lez p3, :cond_b

    const v0, 0x8000

    if-ge p3, v0, :cond_b

    .line 1056
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_14

    :cond_b
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1058
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_14
    return-void
.end method

.method private handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .registers 14

    const/4 v2, -0x1

    const/16 v4, 0x1f8

    if-ne p3, v4, :cond_9

    if-ne p6, v2, :cond_9

    const/4 v5, 0x5

    goto :goto_16

    :cond_9
    const/16 v6, 0x3e7

    if-ne p3, v6, :cond_15

    .line 988
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting SMS resend timer. 999 error ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    move v5, p6

    :goto_16
    const/16 v6, 0x198

    if-eq p3, v6, :cond_1c

    if-ne p3, v4, :cond_47

    :cond_1c
    if-eq v5, v2, :cond_47

    if-eqz p5, :cond_47

    .line 993
    iget v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x1

    if-ge v2, v4, :cond_38

    add-int/2addr v2, v4

    .line 994
    iput v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 995
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 996
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    int-to-long v2, v5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_50

    :cond_38
    const/16 v1, 0x9

    .line 998
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 999
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_50

    :cond_47
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1002
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_50
    return-void
.end method

.method private handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 16

    const/16 v0, 0x101

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p2, v0, :cond_39

    if-eq p4, v2, :cond_13

    if-eq p4, v1, :cond_f

    .line 1149
    invoke-virtual {p0, p1, v3, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_20

    .line 1139
    :cond_f
    invoke-virtual {p0, p1, v1, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_20

    .line 1142
    :cond_13
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p2

    if-nez p2, :cond_1d

    .line 1143
    invoke-virtual {p0, p1, v2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_20

    .line 1145
    :cond_1d
    invoke-virtual {p0, p1, v3, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    .line 1152
    :goto_20
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onMemoryAvailableResult token = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1156
    :cond_39
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v8

    if-eq p4, v2, :cond_79

    if-eq p4, v1, :cond_6f

    const/4 p5, 0x4

    if-eq p4, p5, :cond_4e

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, v8

    .line 1178
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_8c

    .line 1159
    :cond_4e
    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallback(I)Z

    move-result p5

    if-eqz p5, :cond_65

    .line 1160
    iget-object p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry SMS Over SGs/CS"

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1161
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_8c

    :cond_65
    const/4 v3, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1163
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_8c

    :cond_6f
    const/4 v3, 0x3

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1167
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_8c

    .line 1170
    :cond_79
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p5

    if-nez p5, :cond_83

    .line 1171
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultSuccess(II)V

    goto :goto_8c

    :cond_83
    const/4 v7, 0x2

    const/4 v9, 0x2

    move-object v4, p0

    move v5, p1

    move v6, p2

    .line 1174
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    move p4, v3

    .line 1180
    :goto_8c
    iget-object p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< SEND_SMS : token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasonCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (1:Ok 2:Error 3:Retry 4:Fallback)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V
    .registers 15

    const/16 v0, 0x2711

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p3, v0, :cond_3a

    const/16 v0, 0x2712

    const/16 v4, 0x9

    const/16 v5, 0x13

    if-eq p3, v0, :cond_2d

    const/16 v0, 0x2714

    if-eq p3, v0, :cond_25

    if-eqz p5, :cond_1e

    .line 827
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x6b

    .line 828
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_4b

    .line 830
    :cond_1e
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 831
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_4b

    .line 820
    :cond_25
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 821
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_2b
    move v7, v2

    goto :goto_4d

    :cond_2d
    if-eqz p5, :cond_33

    .line 811
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    goto :goto_4b

    .line 813
    :cond_33
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 814
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_2b

    :cond_3a
    if-eqz p5, :cond_45

    .line 801
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x69

    .line 802
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_4b

    .line 804
    :cond_45
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 805
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_4b
    const/4 v2, 0x2

    goto :goto_2b

    :goto_4d
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 834
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .registers 15

    const/4 v4, -0x1

    const/16 v6, 0x9

    const/16 v7, 0x198

    if-ne p6, v4, :cond_36

    if-eqz p3, :cond_2c

    .line 956
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 958
    sget-object v2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1e

    if-eq p3, v7, :cond_19

    const/16 v1, 0x1e8

    if-ne p3, v1, :cond_1e

    .line 959
    :cond_19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_85

    .line 961
    :cond_1e
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 962
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_85

    :cond_2c
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 965
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_85

    :cond_36
    const/16 v4, 0x193

    if-eq p3, v4, :cond_7c

    const/16 v4, 0x194

    if-eq p3, v4, :cond_7c

    if-eq p3, v7, :cond_7c

    const/16 v4, 0x1f4

    if-eq p3, v4, :cond_7c

    const/16 v4, 0x1f7

    if-eq p3, v4, :cond_7c

    const/16 v4, 0x1f8

    if-eq p3, v4, :cond_7c

    const/16 v4, 0x64

    if-lt p3, v4, :cond_7c

    const/16 v4, 0x2bb

    if-gt p3, v4, :cond_7c

    if-eqz p5, :cond_7c

    .line 970
    iget v4, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v7, 0x4

    if-ge v4, v7, :cond_6f

    const/4 v3, 0x1

    add-int/2addr v4, v3

    .line 971
    iput v4, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 972
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 973
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    int-to-long v2, p6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_85

    .line 975
    :cond_6f
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 976
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_85

    :cond_7c
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 979
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_85
    return-void
.end method

.method private handleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .registers 13

    .line 435
    iget v7, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 436
    iget v8, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 438
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 440
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallbackForTimeout()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x2

    :goto_19
    move v3, v0

    const-string v0, "application/vnd.3gpp.sms"

    .line 443
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, " reason = timeOut"

    const-string v10, " messageId = "

    if-eqz p1, :cond_52

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, v7

    move v2, v8

    .line 444
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    .line 445
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoResponseTimeout: onSendSmsResult token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :cond_52
    const/4 v4, 0x1

    const/16 v5, 0x1f

    const/4 v6, 0x2

    move-object v0, p0

    move v1, v7

    move v2, v8

    .line 447
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 449
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoResponseTimeout: onSendSmsResponse token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_7d
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_a3

    .line 454
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNoResponseTimeout : send next delayed message."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    return-void
.end method

.method private handleOrangeAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 12

    const/16 v0, 0x191

    if-eq p4, v0, :cond_8

    const/16 v0, 0x194

    if-ne p4, v0, :cond_10

    .line 1036
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_JO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_10

    .line 1037
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_32

    :cond_10
    const/16 p1, 0x193

    if-eq p4, p1, :cond_2f

    const/16 p1, 0x198

    if-eq p4, p1, :cond_2f

    const/16 p1, 0x1f4

    if-lt p4, p1, :cond_20

    const/16 p1, 0x258

    if-lt p4, p1, :cond_2f

    :cond_20
    const/16 p1, 0x2c4

    if-ne p4, p1, :cond_25

    goto :goto_2f

    :cond_25
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 1042
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_32

    .line 1040
    :cond_2f
    :goto_2f
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_32
    return-void
.end method

.method private handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    move-object/from16 v2, p6

    .line 839
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getTpdu()[B

    move-result-object v3

    .line 841
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v4, v7, :cond_15

    .line 842
    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    goto :goto_16

    :cond_15
    move v3, v6

    :goto_16
    move/from16 v4, p4

    add-int/lit16 v8, v4, -0x8000

    .line 846
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v9

    const/4 v10, 0x4

    const/16 v11, 0x13

    const/16 v12, 0x2a

    const/16 v13, 0x29

    const/4 v14, 0x1

    if-eqz v9, :cond_a7

    if-eq v8, v13, :cond_2c

    if-ne v8, v12, :cond_a7

    :cond_2c
    if-nez v2, :cond_36

    .line 851
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "imsSmsTracker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 852
    :cond_36
    iget v1, v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    if-ge v1, v14, :cond_4b

    add-int/2addr v1, v14

    .line 853
    iput v1, v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 854
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 855
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 859
    :cond_4b
    :goto_4b
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 862
    invoke-static/range {p7 .. p7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 864
    aget v2, v2, v6

    goto :goto_5f

    :cond_5e
    const/4 v2, -0x1

    .line 866
    :goto_5f
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 867
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_8a

    .line 869
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orange, RP# "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isRoaming is true and DataNetworkType is IWLAN, so CS fallback does not done"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v14

    goto :goto_d3

    .line 873
    :cond_8a
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 874
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 875
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orange, set errorcause as fallbackIMS due to RP# "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 878
    :cond_a7
    invoke-direct {p0, v1, v3, v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z

    move-result v2

    const/4 v9, 0x2

    if-eqz v2, :cond_af

    goto :goto_ea

    .line 880
    :cond_af
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_c7

    const/16 v1, 0x15

    if-ne v8, v1, :cond_c7

    const/16 v1, 0xc5

    if-ne v3, v1, :cond_c7

    .line 884
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 885
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Forced success for NTT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v14

    goto :goto_ea

    .line 886
    :cond_c7
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 887
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 888
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_d3
    move v9, v10

    goto :goto_ea

    :cond_d5
    if-eq v8, v12, :cond_e9

    const/16 v1, 0x6f

    if-eq v8, v1, :cond_e9

    const/16 v1, 0x2f

    if-eq v8, v1, :cond_e9

    const/16 v1, 0x1b

    if-eq v8, v1, :cond_e9

    if-eq v8, v13, :cond_e9

    const/16 v1, 0x62

    if-ne v8, v1, :cond_ea

    :cond_e9
    move v9, v7

    .line 899
    :cond_ea
    :goto_ea
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRPError: rpCause= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", tpCause= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v9

    move-object/from16 v5, p5

    .line 900
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 8

    .line 1090
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1091
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_e

    .line 1093
    :cond_b
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_e
    return-void
.end method

.method private handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 11

    if-eqz p3, :cond_19

    const/16 v0, 0x19f

    if-ne p3, v0, :cond_a

    .line 1009
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_22

    :cond_a
    const/16 v0, 0x9

    .line 1011
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1012
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_22

    :cond_19
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1015
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_22
    return-void
.end method

.method private handleSendDelayedMessage()V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 390
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 394
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    if-eqz v1, :cond_47

    .line 396
    iget-boolean v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    if-nez v2, :cond_47

    .line 397
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V

    :cond_47
    return-void
.end method

.method private handleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .registers 11

    .line 405
    iget v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    const/4 v1, 0x0

    .line 406
    iput-boolean v1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0x1fbd0

    const/4 v6, 0x2

    .line 408
    :try_start_b
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 409
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_20
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    const-string v7, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 413
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTPRDintoTPDU([B)V

    .line 415
    :cond_2f
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_54

    .line 419
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6a

    .line 420
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4a

    .line 422
    :goto_40
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 422
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6a

    .line 426
    :cond_4a
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 427
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6a

    .line 417
    :catchall_54
    :try_start_54
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception during sms retry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_6b

    .line 419
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6a

    .line 420
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4a

    goto :goto_40

    :cond_6a
    :goto_6a
    return-void

    :catchall_6b
    move-exception v0

    .line 419
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8d

    .line 420
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 421
    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_84

    .line 422
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 422
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8d

    .line 426
    :cond_84
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 427
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    :cond_8d
    :goto_8d
    throw v0
.end method

.method private handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 12

    const/16 v0, 0x190

    if-lt p3, v0, :cond_c

    const/16 v0, 0x2bb

    if-gt p3, v0, :cond_c

    .line 1021
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_15

    :cond_c
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1023
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_15
    return-void
.end method

.method private handleStatusReport(IILjava/lang/String;[B)V
    .registers 11

    .line 472
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDeliveryPendingList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    if-ge v2, v0, :cond_56

    .line 476
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 477
    iget v4, v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    if-ne v4, p1, :cond_53

    .line 479
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget v0, v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {p0, v0, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 481
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_57

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_56
    move v0, v1

    :goto_57
    if-nez v0, :cond_71

    .line 488
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "statusReport is not matched. But, the messageId is forcibly saved."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0, v1, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    :cond_71
    return-void
.end method

.method private handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .registers 12

    const/16 v0, 0x190

    if-eq p3, v0, :cond_18

    const/16 v0, 0x193

    if-eq p3, v0, :cond_18

    const/16 v0, 0x194

    if-eq p3, v0, :cond_18

    const/16 v0, 0x1e8

    if-eq p3, v0, :cond_18

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_35

    const/16 v0, 0x258

    if-ge p3, v0, :cond_35

    :cond_18
    if-eqz p5, :cond_35

    .line 1077
    iget v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_31

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 1078
    iput v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1079
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1080
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3e

    .line 1082
    :cond_31
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_3e

    :cond_35
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1085
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_3e
    return-void
.end method

.method private handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 12

    const/16 v0, 0x198

    if-eq p3, v0, :cond_17

    const/16 v0, 0x1e0

    if-eq p3, v0, :cond_17

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_d

    goto :goto_17

    :cond_d
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1050
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1a

    .line 1048
    :cond_17
    :goto_17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1a
    return-void
.end method

.method private handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    .registers 15

    const/16 v0, 0x190

    const/16 v1, 0x9

    if-lt p3, v0, :cond_4d

    const/16 v0, 0x257

    if-gt p3, v0, :cond_4d

    if-eqz p5, :cond_4d

    .line 927
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsSmsTracker.mRetryCount =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3a

    add-int/2addr v0, v2

    .line 929
    iput v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 930
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 931
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_72

    :cond_3a
    if-eqz p6, :cond_49

    .line 934
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 935
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_72

    .line 937
    :cond_49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_72

    :cond_4d
    const/16 p5, 0x309

    if-eq p3, p5, :cond_60

    const/16 p5, 0x320

    if-ne p3, p5, :cond_56

    goto :goto_60

    :cond_56
    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    .line 948
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_72

    :cond_60
    :goto_60
    if-eqz p6, :cond_6f

    .line 942
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 943
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_72

    .line 945
    :cond_6f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_72
    return-void
.end method

.method private isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z
    .registers 7

    .line 904
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v0, 0x6f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_19

    const/16 p0, 0xc3

    if-eq p2, p0, :cond_18

    if-eq p3, v0, :cond_18

    const/16 p0, 0x1e

    if-eq p3, p0, :cond_18

    const/16 p0, 0x1c

    if-ne p3, p0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :cond_18
    :goto_18
    return v1

    .line 909
    :cond_19
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_32

    const/16 p0, 0x29

    if-eq p3, p0, :cond_31

    const/16 p0, 0x2a

    if-eq p3, p0, :cond_31

    const/16 p0, 0x2f

    if-eq p3, p0, :cond_31

    const/16 p0, 0x62

    if-eq p3, p0, :cond_31

    if-ne p3, v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :cond_31
    :goto_31
    return v1

    .line 915
    :cond_32
    sget-object p0, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_3b

    if-ne p3, v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    return v1

    .line 917
    :cond_3b
    sget-object p0, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_46

    const/16 p0, 0x45

    if-ne p3, p0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    return v1

    :cond_46
    return v2
.end method

.method private isTPRDset([B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 650
    array-length v1, p1

    if-gtz v1, :cond_7

    goto :goto_24

    .line 653
    :cond_7
    aget-byte v1, p1, v0

    if-lez v1, :cond_1d

    .line 657
    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-le v2, v1, :cond_1d

    aget-byte p1, p1, v1

    and-int/lit8 v1, p1, 0x1

    if-eq v1, v3, :cond_17

    goto :goto_1d

    :cond_17
    const/4 p0, 0x4

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_1c

    return v3

    :cond_1c
    return v0

    .line 658
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isTPRDset() sca is wrong: return false"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return v0
.end method

.method private onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 17

    move-object v0, p0

    move v3, p3

    move v4, p4

    .line 716
    iget v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 717
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveSMSAck: mno = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " messageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reasonCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " retryAfter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_45

    move v7, v5

    goto :goto_47

    :cond_45
    const/4 v2, 0x0

    move v7, v2

    .line 721
    :goto_47
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    if-eqz v6, :cond_85

    .line 724
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5e

    const/4 v9, 0x2

    .line 725
    invoke-virtual {v2, v9, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 727
    :cond_5e
    iput-boolean v5, v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    .line 729
    iget-boolean v2, v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    if-eqz v2, :cond_6f

    .line 731
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 732
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_6f
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_85

    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_85

    .line 738
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_85
    move-object/from16 v5, p6

    .line 741
    invoke-virtual {v5, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setMessageRef(I)V

    const/16 v2, 0x2710

    if-ge v2, v4, :cond_9d

    const/16 v2, 0x2af8

    if-ge v4, v2, :cond_9d

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p6

    move v5, v7

    .line 745
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V

    return-void

    :cond_9d
    const v2, 0x8000

    if-ge v2, v4, :cond_b2

    const v2, 0x80ff

    if-ge v4, v2, :cond_b2

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move v7, p1

    .line 751
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    return-void

    :cond_b2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move v8, p5

    .line 755
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;ZI)V

    return-void
.end method

.method private onSmsPduTestReceived(ILjava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming PduTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method private registerSmsEventListener()V
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz v0, :cond_b

    .line 384
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    :cond_b
    return-void
.end method

.method private resultToCause(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x3

    if-eq p1, p0, :cond_f

    const/4 p0, 0x4

    if-eq p1, p0, :cond_c

    const/16 p0, 0x29

    goto :goto_13

    :cond_c
    const/16 p0, 0x6f

    goto :goto_13

    :cond_f
    const/16 p0, 0x16

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    .registers 15

    .line 507
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "pdu"

    .line 508
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "destAddr"

    .line 509
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "contentType"

    .line 510
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const-string v2, "messageId"

    .line 511
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, 0x1

    if-nez p2, :cond_43

    .line 514
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gt v2, v11, :cond_43

    .line 515
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    move v2, v11

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    if-eqz p2, :cond_53

    .line 520
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_54

    :cond_53
    move v11, v2

    .line 524
    :goto_54
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> SEND_SMS : token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " statusReportRequested = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " smsSent = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p2, v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-boolean p2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p2, :cond_bc

    .line 527
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdu = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_bc
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_e5

    if-eqz v11, :cond_e5

    .line 531
    iget p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 532
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_d9

    .line 533
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 534
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    .line 533
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e5

    .line 537
    :cond_d9
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 538
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x1fbd0

    .line 537
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e5
    :goto_e5
    return-void
.end method

.method private setTPMRintoTPDU([BI)V
    .registers 8

    if-eqz p1, :cond_58

    .line 545
    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_58

    :cond_6
    const/4 v0, 0x0

    .line 548
    aget-byte v1, p1, v0

    if-lez v1, :cond_58

    .line 552
    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_58

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_18

    goto :goto_58

    .line 557
    :cond_18
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_20

    .line 558
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->updateTPMR(I)V

    .line 562
    :cond_20
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    if-lt v1, v4, :cond_2c

    .line 564
    iput v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_2f

    :cond_2c
    add-int/2addr v1, v2

    .line 567
    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    .line 569
    :goto_2f
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.radio.tpmr_sms"

    invoke-direct {p0, p2, v1, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 571
    iget p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    .line 572
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTPMRintoTPDU mTpmr : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method private setTPRDintoTPDU([B)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 635
    array-length p0, p1

    if-gtz p0, :cond_6

    goto :goto_1c

    :cond_6
    const/4 p0, 0x0

    .line 638
    aget-byte p0, p1, p0

    if-lez p0, :cond_1c

    .line 642
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_1c

    aget-byte v0, p1, p0

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_17

    goto :goto_1c

    :cond_17
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 646
    aput-byte v0, p1, p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method private setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_e

    move-object p3, v1

    :cond_e
    const/16 v3, 0x2c

    const/16 v4, 0x20

    .line 594
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    const-string v3, ","

    if-eqz v2, :cond_1f

    .line 596
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 599
    :goto_20
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_27

    return-void

    :cond_27
    const/4 v4, 0x0

    :goto_28
    if-ge v4, p1, :cond_3c

    if-eqz v2, :cond_32

    .line 605
    array-length v5, v2

    if-ge v4, v5, :cond_32

    .line 606
    aget-object v5, v2, v4

    goto :goto_33

    :cond_32
    move-object v5, v1

    .line 608
    :goto_33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 611
    :cond_3c
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_51

    add-int/lit8 v1, p1, 0x1

    .line 613
    :goto_43
    array-length v4, v2

    if-ge v1, v4, :cond_51

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 618
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :try_start_59
    const-string/jumbo v2, "utf-8"

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_59 .. :try_end_61} :catch_62

    goto :goto_6a

    .line 623
    :catch_62
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTelephonyProperty: utf-8 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    const/16 v2, 0x5b

    if-le v1, v2, :cond_9e

    .line 626
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " property="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " propVal="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 631
    :cond_9e
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .registers 9

    const/4 p2, 0x4

    new-array p2, p2, [B

    .line 260
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_17

    aput-byte v3, p2, v3

    aput-byte v3, p2, v2

    int-to-byte p3, p1

    aput-byte p3, p2, v1

    aput-byte v3, p2, v0

    goto :goto_29

    .line 267
    :cond_17
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->resultToCause(I)I

    move-result p3

    int-to-byte v4, p3

    aput-byte v4, p2, v3

    const/16 v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    aput-byte v3, p2, v0

    move v3, p3

    .line 275
    :goto_29
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p3, v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 276
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    if-eqz p3, :cond_37

    const/4 p3, 0x0

    .line 277
    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    .line 279
    :cond_37
    new-instance p3, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    invoke-direct {p3, p2, v3, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;-><init>([BII)V

    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    .line 280
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "> SMS_ACK : messageRef = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method public acknowledgeSms(III[B)V
    .registers 9

    .line 366
    array-length p2, p4

    const/4 p3, 0x4

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 368
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x0

    int-to-byte v2, v0

    .line 371
    aput-byte v2, p2, v0

    int-to-byte v2, v0

    const/4 v3, 0x1

    .line 372
    aput-byte v2, p2, v3

    int-to-byte v2, p1

    .line 373
    aput-byte v2, p2, v1

    .line 374
    array-length v1, p4

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, p2, v2

    .line 375
    array-length v1, p4

    invoke-static {p4, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p3, p4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 377
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "> SMS_ACK_WITH_PDU : messageRef = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .registers 7

    .line 306
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 307
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSmsReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", statusMsgId = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0, p1, p1, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->acknowledgeSms(III)V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .registers 10

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    :try_start_4
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 315
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_73

    if-eqz v2, :cond_50

    .line 319
    :try_start_3a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v3, 0x1

    .line 320
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_46

    goto :goto_52

    :catchall_46
    move-exception p0

    .line 315
    :try_start_47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v2

    :try_start_4c
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_73

    :cond_50
    const-string v3, "3GPP"

    :goto_52
    if-eqz v2, :cond_57

    .line 323
    :try_start_54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_73

    .line 324
    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "3GPP2"

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "3gpp"

    if-eqz v0, :cond_72

    .line 328
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6f

    return-object v1

    :cond_6f
    const-string p0, "3gpp2"

    return-object p0

    :cond_72
    return-object v1

    :catchall_73
    move-exception p0

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    throw p0
.end method

.method handleResultAsFallback(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .registers 12

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 760
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 761
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method public handleRetryDeliveryReportAck(Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;)V
    .registers 4

    if-nez p1, :cond_b

    .line 462
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sentDeliveryAck is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_b
    iget v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 467
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    :cond_19
    return-void
.end method

.method public onMemoryAvailable(I)V
    .registers 24

    move-object/from16 v9, p0

    move/from16 v15, p1

    const/16 v3, 0x101

    .line 287
    iget-object v4, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "application/vnd.3gpp.sms"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v12

    .line 288
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    iget v11, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 v14, 0x0

    const/16 v1, 0x101

    const/16 v16, 0x0

    iget-object v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const-string v18, "application/vnd.3gpp.sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v0

    move/from16 v13, p1

    move v3, v15

    move v15, v1

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 289
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 290
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_47
    :try_start_47
    iget-object v10, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v11, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 v12, 0x0

    iget-object v13, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const-string v14, "application/vnd.3gpp.sms"

    const/16 v15, 0x101

    const/16 v16, 0x1

    invoke-interface/range {v10 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 295
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMemoryAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_5e} :catch_5f

    goto :goto_9f

    :catch_5f
    move-exception v0

    .line 297
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not send onMemoryAvailable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 298
    invoke-virtual {v9, v3, v0, v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    .line 299
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMemoryAvailableResult token = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9f
    return-void
.end method

.method public onReady()V
    .registers 2

    .line 338
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->updateTPMR(I)V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 29

    move-object/from16 v9, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v0, p6

    .line 189
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    .line 195
    iget v12, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mLastRetryCount:I

    const-string v11, "3gpp"

    .line 197
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "application/vnd.3gpp.sms"

    goto :goto_1e

    :cond_1c
    const-string v2, "application/vnd.3gpp2.sms"

    :goto_1e
    move-object/from16 v18, v2

    .line 200
    :try_start_20
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_65

    const/4 v2, 0x2

    .line 201
    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    .line 202
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 203
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 205
    array-length v4, v2

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    array-length v2, v2

    array-length v4, v0

    invoke-static {v0, v10, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    invoke-virtual {v1, v3, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 210
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    .line 213
    invoke-direct {v9, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->isTPRDset([B)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 215
    invoke-direct {v9, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getTPMR([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_5b

    .line 217
    :cond_56
    iget v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-direct {v9, v3, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTPMRintoTPDU([BI)V

    .line 220
    :goto_5b
    iget v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    move-object/from16 v17, v0

    move/from16 v19, v1

    move v0, v2

    move-object/from16 v16, v3

    goto :goto_92

    :cond_65
    const-string v2, "3gpp2"

    .line 223
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v2, 0x1

    .line 224
    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    .line 225
    invoke-virtual {v1, v0, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 226
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v0

    .line 227
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getTpdu()[B

    move-result-object v2

    .line 228
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    move/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_92

    :cond_8a
    const/4 v0, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    move v0, v10

    move/from16 v19, v0

    :goto_92
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move v7, v12

    move/from16 v8, v19

    .line 232
    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v1

    .line 233
    new-instance v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    iget v3, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_a8} :catch_d8

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v4, v10

    move-object v10, v2

    move-object v5, v11

    move v11, v3

    move v3, v12

    move-object v12, v1

    move-object v1, v13

    move/from16 v13, p1

    move v8, v14

    move v14, v3

    move v7, v15

    move v15, v0

    :try_start_b9
    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 235
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 236
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_d1
    invoke-direct {v9, v2, v4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_d4
    .catch Ljava/lang/RuntimeException; {:try_start_b9 .. :try_end_d4} :catch_d6

    goto/16 :goto_162

    :catch_d6
    move-exception v0

    goto :goto_dd

    :catch_d8
    move-exception v0

    move-object v5, v11

    move-object v1, v13

    move v8, v14

    move v7, v15

    .line 240
    :goto_dd
    iget-object v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not send sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, " messageId = "

    if-eqz v0, :cond_12b

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 242
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    .line 244
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendSmsResult token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v7

    goto :goto_159

    :cond_12b
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x1f

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v11, v7

    move v7, v0

    .line 246
    invoke-virtual/range {v1 .. v7}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 248
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendSmsResponse token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_159
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_162
    return-void
.end method

.method public setRetryCount(II)V
    .registers 3

    .line 344
    iput p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mLastRetryCount:I

    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    return-void
.end method

.method public updateTPMR(I)V
    .registers 4

    .line 576
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v0, "persist.radio.tpmr_sms"

    const-string v1, "0"

    .line 577
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_24

    .line 582
    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_27

    :cond_24
    :goto_24
    const/4 p1, 0x0

    .line 580
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    :goto_27
    return-void
.end method
