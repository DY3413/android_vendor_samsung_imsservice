.class public final Lcom/sec/internal/google/ImsSmsImpl;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;,
        Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;,
        Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_PDU_IMS:Ljava/lang/String; = "com.sec.internal.google.ImsSmsImpl.PduTest"

.field private static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field private static final DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field private static final DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field private static final DELIVER_STATUS_OK:I = 0x1

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

.field public static final RESULT_NO_NETWORK_ERROR:I = -0x1

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

.field private static final SEND_STATUS_ERROR:I = 0x2

.field private static final SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field private static final SEND_STATUS_ERROR_RETRY:I = 0x3

.field private static final SEND_STATUS_OK:I = 0x1

.field public static final STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final STATUS_REPORT_STATUS_OK:I = 0x1

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
            "Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;",
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
            "Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRetryCount:I

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

.field private mSmsEventListener:Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

.field private mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

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
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/google/ImsSmsImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsListener(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsLogger(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentNetworkType(Lcom/sec/internal/google/ImsSmsImpl;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTokenByMessageId(Lcom/sec/internal/google/ImsSmsImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->getTokenByMessageId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleNoResponseTimeout(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->handleNoResponseTimeout(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendDelayedMessage(Lcom/sec/internal/google/ImsSmsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->handleSendDelayedMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSmsRetry(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->handleSmsRetry(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStatusReport(Lcom/sec/internal/google/ImsSmsImpl;IILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->handleStatusReport(IILjava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReceiveSMSSuccssAcknowledgment(Lcom/sec/internal/google/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/google/ImsSmsImpl;->onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSmsPduTestReceived(Lcom/sec/internal/google/ImsSmsImpl;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/ImsSmsImpl;->onSmsPduTestReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 50
    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    .line 51
    new-instance v2, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener-IA;)V

    iput-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

    .line 52
    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    .line 82
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 175
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 176
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLock:Ljava/lang/Object;

    .line 1486
    new-instance v1, Lcom/sec/internal/google/ImsSmsImpl$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/ImsSmsImpl$2;-><init>(Lcom/sec/internal/google/ImsSmsImpl;)V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSmsImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    .line 180
    iput p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    .line 181
    iput-object p3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 182
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    .line 183
    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz p1, :cond_1

    .line 188
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/internal/google/ImsSmsImpl;->registerSmsEventListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    :cond_1
    :goto_1
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_2

    .line 195
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.sec.internal.google.ImsSmsImpl.PduTest"

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p3, "register for intent action=com.sec.internal.google.ImsSmsImpl.PduTest"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    :cond_2
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 202
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance p2, Lcom/sec/internal/google/ImsSmsImpl$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/google/ImsSmsImpl$1;-><init>(Lcom/sec/internal/google/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private canFallback(I)Z
    .locals 8

    const/4 v0, 0x0

    .line 1311
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1312
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1313
    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1314
    iget v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1317
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v4, "46000"

    .line 1318
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    .line 1320
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    .line 1322
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 1323
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const-string v3, "gsm.operator.isroaming"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1324
    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_8

    .line 1327
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->isVolteSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    .line 1325
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fallback always over NAS (cdmaless / volte roaming)"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1330
    :cond_5
    sget-object p1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, p1, :cond_6

    return v0

    .line 1332
    :cond_6
    sget-object p1, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x12

    if-ne v2, p1, :cond_7

    .line 1333
    new-instance p1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1334
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result p1

    if-eq p1, v6, :cond_8

    .line 1335
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 1336
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Block fallback for Play in VoWiFi international roaming"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1339
    :cond_7
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1340
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_8

    return v0

    .line 1345
    :cond_8
    iget p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_9

    .line 1346
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "serviceState is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1350
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_a

    return v7

    :cond_a
    return v0

    .line 1357
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No permission for telephony service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private canFallbackForTimeout()Z
    .locals 8

    const/4 v0, 0x0

    .line 1364
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1365
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1366
    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1367
    iget v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1370
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v4, "46000"

    .line 1371
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :cond_1
    new-array v3, v6, [Lcom/sec/internal/constants/Mno;

    .line 1373
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    .line 1375
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 1376
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Block timeout fallback for Orange in VoWiFi roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1378
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFallback()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1379
    :cond_4
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1380
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "serviceState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1384
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceState.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_6

    .line 1386
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CanFallbackForTimeout() : SmsFallbackDefaultSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    .line 1391
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No permission for telephony service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CanFallbackForTimeout() : SmsFallback is not Supported"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;
    .locals 1
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

    .line 1456
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "token"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "messageId"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "destAddr"

    .line 1459
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pdu"

    .line 1460
    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentType"

    .line 1461
    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "retryCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p2, "statusReport"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getSmsFallback()Z
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 836
    :cond_0
    iget p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->getSmsFallback(I)Z

    move-result p0

    return p0
.end method

.method private getTPMR([B)B
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 816
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    aget-byte v0, p1, p0

    if-lez v0, :cond_2

    .line 823
    array-length v1, p1

    add-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 827
    :cond_1
    aget-byte p0, p1, v2

    :cond_2
    :goto_0
    return p0
.end method

.method private getTokenByMessageId(I)I
    .locals 2

    .line 439
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 440
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 442
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 443
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getMessageId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;ZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    .line 903
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 904
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V

    goto/16 :goto_0

    .line 905
    :cond_0
    sget-object v6, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_1

    .line 906
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 907
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_2

    .line 908
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 909
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_3

    .line 910
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 911
    :cond_3
    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 912
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 913
    :cond_4
    sget-object v6, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 914
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 915
    :cond_5
    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    .line 916
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V

    goto/16 :goto_0

    .line 917
    :cond_6
    sget-object v6, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_7

    .line 918
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sec/internal/constants/Mno;

    .line 919
    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {p1, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    .line 920
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V

    goto :goto_0

    .line 921
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 922
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_9
    const/4 v7, 0x3

    new-array v7, v7, [Lcom/sec/internal/constants/Mno;

    .line 923
    sget-object v8, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v10

    sget-object v8, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v6

    invoke-virtual {p1, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 924
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_b

    .line 925
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 926
    invoke-virtual {v5, v9}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 927
    invoke-virtual {v5, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v6, 0x4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move-object/from16 v5, p5

    .line 928
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_b
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move-object/from16 v5, p5

    .line 930
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x198

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1173
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1169
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1170
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1171
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    if-eqz p5, :cond_0

    .line 1209
    iget v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    .line 1210
    iput v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1211
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1212
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1214
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorCause()I

    move-result v7

    .line 1246
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result v8

    .line 1247
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v4

    if-eqz v8, :cond_4

    const/16 p4, 0x9

    if-eq v8, p4, :cond_2

    const/4 p4, 0x2

    if-eq v8, p4, :cond_1

    const/4 p4, 0x3

    if-eq v8, p4, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto/16 :goto_0

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x3

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    .line 1266
    :cond_2
    iget-object p4, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry to send over 1x"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    .line 1267
    invoke-direct {p0, p4}, Lcom/sec/internal/google/ImsSmsImpl;->canFallback(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x4

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    :cond_4
    const/16 p4, 0x2714

    if-ne p3, p4, :cond_5

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x4

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    .line 1255
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 1276
    :goto_0
    iget-object p4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-lez p3, :cond_0

    const v0, 0x8000

    if-ge p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1199
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1200
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1201
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1203
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, -0x1

    const/16 v4, 0x1f8

    if-ne p3, v4, :cond_0

    if-ne p6, v2, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/16 v6, 0x3e7

    if-ne p3, v6, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting SMS resend timer. 999 error ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v5, p6

    :goto_0
    const/16 v6, 0x198

    if-eq p3, v6, :cond_2

    if-ne p3, v4, :cond_4

    :cond_2
    if-eq v5, v2, :cond_4

    if-eqz p5, :cond_4

    .line 1129
    iget v2, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    add-int/2addr v2, v4

    .line 1130
    iput v2, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1131
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1132
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    .line 1134
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1135
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1138
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1281
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v4

    const/4 v0, 0x1

    const/4 v6, 0x2

    if-eq p4, v0, :cond_3

    const/4 p5, 0x3

    if-eq p4, p5, :cond_2

    const/4 p5, 0x4

    if-eq p4, p5, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move v3, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1284
    :cond_0
    invoke-direct {p0, v6}, Lcom/sec/internal/google/ImsSmsImpl;->canFallback(I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1285
    iget-object p5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry SMS Over SGs/CS"

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x4

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x3

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1295
    :cond_3
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p5

    if-nez p5, :cond_4

    .line 1296
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1299
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    move p4, v6

    .line 1305
    :goto_0
    iget-object p5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x2711

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2712

    const/16 v4, 0x9

    const/16 v5, 0x13

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2714

    if-eq p3, v0, :cond_1

    if-eqz p5, :cond_0

    .line 966
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x6b

    .line 967
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 969
    :cond_0
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 970
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 959
    :cond_1
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 960
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_0
    move v7, v2

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    .line 950
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    goto :goto_1

    .line 952
    :cond_3
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 953
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_5

    .line 940
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x69

    .line 941
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 943
    :cond_5
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 944
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_1
    const/4 v2, 0x2

    goto :goto_0

    :goto_2
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 973
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v4, 0x9

    const/16 v6, 0x198

    const/4 v7, -0x1

    if-ne p6, v7, :cond_3

    if-eqz p3, :cond_2

    .line 1090
    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1092
    sget-object v2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    if-eq p3, v6, :cond_0

    const/16 v1, 0x1e8

    if-ne p3, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 1094
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1095
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 1097
    :cond_1
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1098
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1101
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_3
    const/16 v7, 0x193

    if-eq p3, v7, :cond_5

    const/16 v7, 0x194

    if-eq p3, v7, :cond_5

    if-eq p3, v6, :cond_5

    const/16 v6, 0x1f4

    if-eq p3, v6, :cond_5

    const/16 v6, 0x1f7

    if-eq p3, v6, :cond_5

    const/16 v6, 0x1f8

    if-eq p3, v6, :cond_5

    const/16 v6, 0x64

    if-lt p3, v6, :cond_5

    const/16 v6, 0x2bb

    if-gt p3, v6, :cond_5

    if-eqz p5, :cond_5

    .line 1106
    iget v6, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    const/4 v3, 0x1

    add-int/2addr v6, v3

    .line 1107
    iput v6, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1108
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1109
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v2, p6, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1111
    :cond_4
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1112
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1115
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleNoResponseTimeout(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 11

    .line 380
    iget v7, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 381
    iget v8, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 386
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->canFallbackForTimeout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    move v3, v0

    const-string v0, "application/vnd.3gpp.sms"

    .line 389
    iget-object p1, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, " reason = timeOut"

    const-string v10, " messageId = "

    if-eqz p1, :cond_1

    .line 390
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v4, 0x1

    const/4 v5, -0x1

    move v1, v7

    move v2, v8

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 391
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    const/4 v6, 0x2

    move v1, v7

    move v2, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 395
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    .line 397
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x193

    if-eq p3, v0, :cond_2

    const/16 v0, 0x198

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-lt p3, v0, :cond_2

    :cond_0
    const/16 v0, 0x2c4

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1183
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1180
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1181
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    .line 979
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getTpdu()[B

    move-result-object v2

    .line 981
    array-length v3, v2

    const/4 v4, 0x3

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    .line 982
    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    move/from16 v3, p4

    add-int/lit16 v7, v3, -0x8000

    .line 986
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v11, 0x13

    const/16 v12, 0x2a

    const/16 v13, 0x29

    const/4 v14, 0x2

    if-eqz v8, :cond_4

    const/16 v8, 0x26

    if-eq v7, v8, :cond_1

    if-eq v7, v13, :cond_1

    if-eq v7, v12, :cond_1

    const/16 v8, 0x45

    if-ne v7, v8, :cond_4

    .line 991
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v4, -0x1

    .line 994
    invoke-static/range {p6 .. p6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    if-eqz v8, :cond_2

    .line 996
    aget v4, v8, v6

    .line 998
    :cond_2
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 999
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v4, 0x12

    if-ne v1, v4, :cond_3

    .line 1001
    iget-object v1, v0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orange, RP# "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isRoaming is true and DataNetworkType is IWLAN, so CS fallback does not done"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1005
    :cond_3
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1006
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1007
    iget-object v1, v0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orange, set errorcause as fallbackIMS due to RP# "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_1

    .line 1010
    :cond_4
    invoke-direct {p0, v1, v2, v7}, Lcom/sec/internal/google/ImsSmsImpl;->isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    move v4, v14

    goto :goto_2

    .line 1012
    :cond_6
    sget-object v8, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v8, :cond_7

    const/16 v1, 0x15

    if-ne v7, v1, :cond_7

    const/16 v1, 0xc5

    if-ne v2, v1, :cond_7

    .line 1016
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1017
    iget-object v1, v0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Forced success for NTT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v4, v9

    goto :goto_2

    .line 1018
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1019
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1020
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    move v4, v10

    goto :goto_2

    :cond_8
    if-eq v7, v12, :cond_9

    const/16 v1, 0x6f

    if-eq v7, v1, :cond_9

    const/16 v1, 0x2f

    if-eq v7, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v7, v1, :cond_9

    if-eq v7, v13, :cond_9

    const/16 v1, 0x62

    if-ne v7, v1, :cond_5

    .line 1031
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRPError: rpCause= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", tpCause= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status= "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 1032
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1238
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/internal/google/ImsSmsImpl;->handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1240
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/google/ImsSmsImpl;->handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_1

    const/16 v0, 0x19f

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1146
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1147
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 1149
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1150
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1153
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleSendDelayedMessage()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 339
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    if-eqz v1, :cond_0

    .line 341
    iget-boolean v2, v1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    if-nez v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 343
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/google/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V

    :cond_0
    return-void
.end method

.method private handleSmsRetry(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 9

    .line 350
    iget v0, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    const/4 v1, 0x0

    .line 351
    iput-boolean v1, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0x1fbd0

    const/4 v6, 0x2

    .line 353
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 354
    iget-object v7, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    const-string v7, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsSmsImpl;->setTPRDintoTPDU([B)V

    .line 360
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/google/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 365
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 367
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 368
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 367
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 371
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 372
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 371
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 362
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception during sms retry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 365
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 364
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 365
    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 366
    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_4

    .line 367
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 368
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 367
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 371
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 372
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 371
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 376
    :cond_5
    :goto_2
    throw v0
.end method

.method private handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    const/16 v0, 0x2bb

    if-gt p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1159
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1160
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1161
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1163
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleStatusReport(IILjava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDeliveryPendingList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 417
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 420
    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 421
    iget v4, v3, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    if-ne v4, p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    iget v3, v3, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-interface {v0, v3, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 425
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "statusReport is not matched. But, the messageId is forcibly saved."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {p0, v1, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    :cond_2
    return-void
.end method

.method private handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v2, 0x190

    if-eq p3, v2, :cond_0

    const/16 v2, 0x193

    if-eq p3, v2, :cond_0

    const/16 v2, 0x194

    if-eq p3, v2, :cond_0

    const/16 v2, 0x1e8

    if-eq p3, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p3, v2, :cond_2

    const/16 v2, 0x258

    if-ge p3, v2, :cond_2

    :cond_0
    if-eqz p5, :cond_2

    .line 1222
    iget v2, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1223
    iput v2, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1224
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1227
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 1228
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1229
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1232
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x198

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1e0

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1193
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1189
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1190
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1191
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    move-object v1, p5

    const/16 v2, 0x9

    const/16 v4, 0x13

    const/4 v6, 0x0

    const/16 v7, 0x190

    if-lt v3, v7, :cond_2

    const/16 v7, 0x257

    if-gt v3, v7, :cond_2

    if-eqz v1, :cond_2

    .line 1057
    iget-object v7, v0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsSmsTracker.mRetryCount =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget v7, v1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    add-int/2addr v7, v8

    .line 1059
    iput v7, v1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1060
    iget-object v2, v0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1061
    iget-object v0, v0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_0
    if-eqz p6, :cond_1

    .line 1064
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1065
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1067
    :cond_1
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1068
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1069
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x309

    if-eq v3, v1, :cond_4

    const/16 v1, 0x320

    if-ne v3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1082
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz p6, :cond_5

    .line 1074
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1075
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1077
    :cond_5
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1078
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1079
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z
    .locals 3

    .line 1036
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v0, 0x6f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_2

    const/16 p0, 0xc3

    if-eq p2, p0, :cond_1

    if-eq p3, v0, :cond_1

    const/16 p0, 0x1e

    if-eq p3, p0, :cond_1

    const/16 p0, 0x1c

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 1041
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_5

    const/16 p0, 0x29

    if-eq p3, p0, :cond_4

    const/16 p0, 0x2a

    if-eq p3, p0, :cond_4

    const/16 p0, 0x2f

    if-eq p3, p0, :cond_4

    const/16 p0, 0x62

    if-eq p3, p0, :cond_4

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    .line 1047
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_7

    if-ne p3, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    :cond_7
    return v2
.end method

.method private isTPRDset([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 796
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 799
    :cond_0
    aget-byte v1, p1, v0

    if-lez v1, :cond_3

    .line 803
    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-le v2, v1, :cond_3

    aget-byte p1, p1, v1

    and-int/lit8 v1, p1, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    return v3

    :cond_2
    return v0

    .line 804
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isTPRDset() sca is wrong: return false"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 863
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    .line 867
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    if-eqz v6, :cond_2

    .line 870
    iput-boolean v5, v6, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    .line 872
    iget-boolean v2, v6, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    if-eqz v2, :cond_1

    .line 874
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_1

    .line 875
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 881
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 884
    :cond_2
    invoke-virtual {p6, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setMessageRef(I)V

    const/16 v2, 0x2710

    if-ge v2, p4, :cond_3

    const/16 v2, 0x2af8

    if-ge p4, v2, :cond_3

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p6

    move v5, v7

    .line 888
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V

    return-void

    :cond_3
    const v2, 0x8000

    if-ge v2, p4, :cond_4

    const v2, 0x80ff

    if-ge p4, v2, :cond_4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move v6, p1

    .line 894
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;I)V

    return-void

    :cond_4
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move v8, p5

    .line 898
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/google/ImsSmsImpl;->handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;ZI)V

    return-void
.end method

.method private onSmsPduTestReceived(ILjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1474
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1478
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V

    .line 1479
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming PduTest: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1481
    :try_start_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not deliver sms: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :goto_0
    monitor-exit v0

    return-void

    .line 1475
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mSmsListener is not ready."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 1483
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private registerSmsEventListener(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "registerSmsEventListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz v0, :cond_0

    .line 242
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    :cond_0
    return-void
.end method

.method private resultToCause(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x29

    goto :goto_0

    :cond_0
    const/16 p0, 0x6f

    goto :goto_0

    :cond_1
    const/16 p0, 0x16

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 11

    .line 535
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "pdu"

    .line 536
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "destAddr"

    .line 537
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "contentType"

    .line 538
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const-string v2, "messageId"

    .line 539
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 542
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 549
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> SEND_SMS : token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " statusReportRequested = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p2, v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-boolean p2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p2, :cond_2

    .line 552
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    .line 555
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    .line 556
    iget p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 557
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_3

    .line 558
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 559
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    .line 558
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 562
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 563
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x1fbd0

    .line 562
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private setTPMRintoTPDU([BI)V
    .locals 5

    if-eqz p1, :cond_4

    .line 691
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 694
    aget-byte v1, p1, v0

    if-lez v1, :cond_4

    .line 698
    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 703
    :cond_1
    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 704
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    .line 708
    :cond_2
    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    iput v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    if-lt v1, v4, :cond_3

    .line 710
    iput v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    goto :goto_0

    :cond_3
    add-int/2addr v1, v2

    .line 713
    iput v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    .line 715
    :goto_0
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.radio.tpmr_sms"

    invoke-direct {p0, p2, v1, v0}, Lcom/sec/internal/google/ImsSmsImpl;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    iget p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    .line 718
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTPMRintoTPDU mTpmr : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private setTPRDintoTPDU([B)V
    .locals 3

    if-eqz p1, :cond_2

    .line 781
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 784
    aget-byte p0, p1, p0

    if-lez p0, :cond_2

    .line 788
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_2

    aget-byte v0, p1, p0

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 792
    aput-byte v0, p1, p0

    :cond_2
    :goto_0
    return-void
.end method

.method private setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 733
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    move-object p3, v1

    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    .line 740
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    const-string v3, ","

    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 745
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_4

    if-eqz v2, :cond_3

    .line 751
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 752
    aget-object v5, v2, v4

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 754
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 757
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_5

    add-int/lit8 v1, p1, 0x1

    .line 759
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 760
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 764
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :try_start_0
    const-string/jumbo v2, "utf-8"

    .line 767
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 769
    :catch_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTelephonyProperty: utf-8 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v2, 0x5b

    if-le v1, v2, :cond_6

    .line 772
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    .line 777
    :cond_6
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "acknowledgeSms"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    new-array p2, p2, [B

    .line 596
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p4, v2, :cond_0

    aput-byte v3, p2, v3

    aput-byte v3, p2, v2

    int-to-byte p4, p3

    aput-byte p4, p2, v1

    aput-byte v3, p2, v0

    goto :goto_0

    .line 603
    :cond_0
    invoke-direct {p0, p4}, Lcom/sec/internal/google/ImsSmsImpl;->resultToCause(I)I

    move-result p4

    const/16 v4, 0x80

    int-to-byte v5, p4

    aput-byte v5, p2, v3

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    int-to-byte v2, p3

    aput-byte v2, p2, v1

    aput-byte v3, p2, v0

    move v3, p4

    .line 611
    :goto_0
    iget-object p4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    invoke-interface {p4, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 612
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 613
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    .line 615
    :cond_1
    new-instance p1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    invoke-direct {p1, p2, v3, v1}, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;-><init>([BII)V

    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    .line 616
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "> SMS_ACK : messageRef = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public acknowledgeSmsReport(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSmsReport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeSmsReport messageRef = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", statusMsgId = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSms(IIII)V

    return-void
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "acknowledgeSms"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    array-length p2, p4

    const/4 v0, 0x4

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 635
    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x0

    int-to-byte v4, v3

    .line 638
    aput-byte v4, p2, v3

    int-to-byte v4, v3

    .line 639
    aput-byte v4, p2, v1

    const/4 v1, 0x3

    int-to-byte v4, p3

    .line 640
    aput-byte v4, p2, v2

    .line 641
    array-length v2, p4

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 642
    array-length v1, p4

    invoke-static {p4, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    iget-object p4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    invoke-interface {p4, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 644
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "> SMS_ACK_WITH_PDU : messageRef = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 233
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 669
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 670
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 669
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 673
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 674
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 669
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    const-string v3, "3GPP"

    :goto_1
    if-eqz v2, :cond_1

    .line 677
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 678
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "3GPP2"

    .line 681
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "3gpp"

    if-eqz v0, :cond_3

    .line 682
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    const-string p0, "3gpp2"

    return-object p0

    :cond_3
    return-object v1

    :catchall_2
    move-exception p0

    .line 678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    throw p0
.end method

.method public handleRetryDeliveryReportAck(Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;)V
    .locals 2

    if-nez p1, :cond_0

    .line 406
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sentDeliveryAck is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_0
    iget v0, p1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    iget-object p1, p1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    :cond_1
    return-void
.end method

.method public sendRpSmma(ILjava/lang/String;)V
    .locals 7

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    const/4 v2, 0x0

    const-string v4, "application/vnd.3gpp.sms"

    const/16 v5, 0x101

    const/4 v6, 0x1

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 572
    iget-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "sendRpSmma"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 574
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not send RP Smma: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;[B)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v0, p6

    .line 470
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    .line 476
    iget v12, v9, Lcom/sec/internal/google/ImsSmsImpl;->mLastRetryCount:I

    const-string v11, "3gpp"

    .line 478
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.3gpp.sms"

    goto :goto_0

    :cond_0
    const-string v2, "application/vnd.3gpp2.sms"

    :goto_0
    move-object/from16 v18, v2

    .line 481
    :try_start_0
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 482
    iput v2, v9, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    .line 483
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 484
    array-length v4, v2

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 486
    array-length v5, v2

    invoke-static {v2, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    array-length v2, v2

    array-length v5, v0

    invoke-static {v0, v10, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    invoke-virtual {v1, v4, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 491
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    .line 494
    invoke-direct {v9, v4}, Lcom/sec/internal/google/ImsSmsImpl;->isTPRDset([B)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 496
    invoke-direct {v9, v4}, Lcom/sec/internal/google/ImsSmsImpl;->getTPMR([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v9, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    move/from16 v8, p1

    goto :goto_1

    :cond_1
    move/from16 v8, p1

    .line 498
    invoke-direct {v9, v4, v8}, Lcom/sec/internal/google/ImsSmsImpl;->setTPMRintoTPDU([BI)V

    .line 501
    :goto_1
    iget v2, v9, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    move-object/from16 v17, v0

    move/from16 v19, v1

    move v0, v2

    move-object/from16 v16, v4

    goto :goto_2

    :cond_2
    move/from16 v8, p1

    const-string v2, "3gpp2"

    .line 504
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    iput v3, v9, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    .line 506
    invoke-virtual {v1, v0, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 507
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v0

    .line 508
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getTpdu()[B

    move-result-object v2

    .line 509
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    move/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_2

    :cond_3
    move-object/from16 v16, v4

    move-object/from16 v17, v16

    move v0, v10

    move/from16 v19, v0

    :goto_2
    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move v7, v12

    move/from16 v8, v19

    .line 513
    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/google/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v1

    .line 514
    new-instance v2, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v3, v10

    move-object v10, v2

    move-object v4, v11

    move/from16 v11, p1

    move v5, v12

    move-object v12, v1

    move-object v1, v13

    move/from16 v13, p2

    move v8, v14

    move v14, v5

    move v7, v15

    move v15, v0

    :try_start_1
    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 516
    iget-object v0, v9, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 517
    iget-object v0, v9, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_4
    invoke-direct {v9, v2, v3}, Lcom/sec/internal/google/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v11

    move-object v1, v13

    move v8, v14

    move v7, v15

    .line 521
    :goto_3
    iget-object v2, v9, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not send sms: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, " messageId = "

    if-eqz v0, :cond_5

    .line 523
    iget-object v1, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface/range {v1 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 524
    iget-object v0, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    goto :goto_4

    .line 526
    :cond_5
    iget-object v1, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x1f

    const/4 v0, 0x2

    move/from16 v2, p2

    move/from16 v3, p3

    move v11, v7

    move v7, v0

    invoke-interface/range {v1 .. v7}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 528
    iget-object v0, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

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

    .line 530
    :goto_4
    iget-object v0, v9, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method public setRetryCount(III)V
    .locals 0

    .line 451
    iput p3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLastRetryCount:I

    return-void
.end method

.method protected setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-void
.end method

.method public updateTPMR(I)V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v0, "persist.radio.tpmr_sms"

    const-string v1, "0"

    .line 723
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 726
    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    :goto_1
    return-void
.end method
