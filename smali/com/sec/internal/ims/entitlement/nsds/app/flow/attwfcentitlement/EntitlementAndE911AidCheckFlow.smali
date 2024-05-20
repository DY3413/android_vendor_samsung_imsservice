.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "EntitlementAndE911AidCheckFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;


# static fields
.field private static final FAIL_ENTITLEMENT_AUTO_ON:I = 0xe

.field private static final INIT_E911_ADDRESS_UPDATE:I = 0xa

.field private static final INIT_ENTITLEMENT_CHECK:I = 0x8

.field private static final INIT_PUSH_TOKEN_REMOVAL:I = 0x9

.field private static final LOCATION_AND_TC_CHECK:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final OPEN_E911_ADDRESS_UPDATE_WEBSHEET:I = 0x5

.field private static final OPEN_LOC_AND_TC_WEBSHEET:I = 0x4

.field private static final REGISTER_PUSH_TOKEN:I = 0x2

.field private static final REMOVE_PUSH_TOKEN:I = 0x3

.field private static final REMOVE_PUSH_TOKEN_AUTO_ON:I = 0xc

.field private static final REMOVE_PUSH_TOKEN_AUTO_ON_AFTER:I = 0xd

.field private static final RESULT_SVC_PROV_LOC_AND_TC_WEBSHEET:I = 0x6

.field private static final RESULT_UPDATE_LOC_AND_TC_WEBSHEET:I = 0x7

.field private static final RETRY_ENTITLEMENT_AUTO_ON:I = 0xb

.field private static final VOWIFI_ENTITLEMENT_CHECK:I = 0x1


# instance fields
.field private final mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServerData:Ljava/lang/String;

.field private mServerUrl:Ljava/lang/String;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    return-void
.end method

.method private checkLocationAndTC()V
    .locals 9

    .line 338
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkLocationAndTC()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "checkLocationAndTC: native line detail is null"

    .line 342
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 344
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;

    .line 349
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v8, "1.0"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 351
    iget-object p0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->checkLocationAndTC(Ljava/lang/String;J)V

    return-void
.end method

.method private checkSntMode()Z
    .locals 2

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 428
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method private checkVoWifiEntitlement()V
    .locals 8

    .line 356
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkVoWifiEntitlement: requesting entitlement check"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "vowifi"

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    .line 362
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-wide/16 v2, 0x7530

    .line 363
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;ZJ)V

    return-void
.end method

.method private failEntitlementAutoOn()V
    .locals 4

    .line 272
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ATT_AutoOn] failEntitlementAutoOn - reset token in device"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "push_token"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sent_token_to_server"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    .line 276
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    return-void
.end method

.method private getE911AidValidationBundle()Landroid/os/Bundle;
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineE911AidExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "e911_aid_exp"

    .line 457
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string/jumbo v3, "svc_prov_status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getE911AidValidationBundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", OnSvcProv:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerData:Ljava/lang/String;

    .line 489
    invoke-interface {v0, v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getLocAndTcWebSheetData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getLocAndTcWebsheetRespCode(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8fd

    goto :goto_0

    :cond_0
    const/16 p0, 0x900

    goto :goto_0

    :cond_1
    const/16 p0, 0x9c4

    goto :goto_0

    :cond_2
    const/16 p0, 0x3e8

    goto :goto_0

    :cond_3
    const/16 p0, 0x8fc

    :goto_0
    return p0
.end method

.method private getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;
    .locals 3

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 440
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 441
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 444
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const-string/jumbo v2, "svc_prov_status"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "loc_and_tc_status"

    .line 445
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget-object p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    const-string v2, "loc_and_tc_server_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    const-string p1, "loc_and_tc_server_data"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationAndTCStatusBundle: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 9

    .line 91
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string v2, "serviceEntitlementStatus"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    if-nez p1, :cond_0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v1

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getHttpErrRespReason(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-gtz v1, :cond_8

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 107
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    const-string v3, "getMSISDN"

    .line 108
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    const-string v4, ", responseCode:"

    const/16 v5, 0x3e8

    if-eqz v1, :cond_5

    .line 111
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResponseServiceEntitlementStatus : messageId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v6, v1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    if-ne v6, v5, :cond_4

    .line 115
    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 116
    iget-object v6, v2, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string/jumbo v7, "vowifi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service responseCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", onDemandProv: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    const/16 v6, 0x418

    if-ne v1, v6, :cond_5

    .line 120
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 132
    :cond_4
    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 133
    iput v6, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    :cond_5
    :goto_0
    if-eqz p1, :cond_7

    .line 138
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    if-ne v1, v5, :cond_6

    .line 139
    new-instance v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;-><init>()V

    .line 140
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseGetMsisdn content : messageId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msisdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service_fingerprint:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    if-ne v2, v5, :cond_7

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 147
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const-wide/16 v3, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, v4, p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertOrUpdateNativeLine(JLjava/lang/String;Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    .line 149
    iget-object p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    iput-object p0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->msisdn:Ljava/lang/String;

    .line 150
    iget-object p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    iput-object p0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_6
    iput-object v3, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 154
    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    :cond_7
    :goto_1
    return-object v0

    .line 101
    :cond_8
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEntitlementCheckResponse: http error code = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa28

    .line 103
    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    return-object v0
.end method

.method private handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_RESULT_CODE"

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x5

    .line 235
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->notifyCallbackForNsdsEvent(II)V

    .line 237
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocAndTcWebsheetResult: result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x140b0000

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WBSHT RESULT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :cond_1
    const/16 p2, 0xc

    .line 241
    :goto_1
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    .line 243
    new-instance p2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLocAndTcWebsheetRespCode(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v1, p2, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    return-void
.end method

.method private handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 9

    .line 212
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string v2, "manageLocationAndTC"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 215
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 216
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerData:Ljava/lang/String;

    .line 217
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerUrl:Ljava/lang/String;

    .line 218
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponseAvailable: update location and tc status in db. E911 AID received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 221
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 222
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    move-object v6, p1

    .line 220
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateLocationAndTcStatus(JLcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;Ljava/lang/String;I)V

    .line 224
    :cond_0
    iget p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    :cond_1
    return-object v0
.end method

.method private handleRegisterPushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 3

    .line 161
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "managePushToken"

    .line 165
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    if-eqz p0, :cond_1

    .line 168
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseManagePushToken for token registration : messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    const/16 v1, 0x3e8

    if-eq p0, v1, :cond_2

    const-string p0, "responseManagePushToken failed"

    .line 174
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 175
    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    goto :goto_0

    .line 178
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string p1, "responseManagePushToken is NULL"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private handleRemovePushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 5

    .line 185
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "managePushToken"

    .line 189
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    if-eqz p1, :cond_1

    .line 192
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseManagePushToken for token removal : messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", responseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    iput p1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    if-eq p1, v1, :cond_2

    const-string p1, "responseManagePushToken failed"

    .line 198
    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 199
    iput p1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    goto :goto_0

    .line 202
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "responseManagePushToken is NULL"

    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    .line 206
    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    :cond_3
    return-object v0
.end method

.method private openLocAndTCWebsheet(Z)V
    .locals 4

    .line 392
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openLocAndTCWebsheet: url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serverData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clientName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", title "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 398
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_URL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_CLIENT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    const-string v2, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 407
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "com.sec.vsim.ericssonnsds.LOC_AND_TC_WEBSHEET_RESULT_MESSAGE"

    .line 406
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v0, "com.sec.vsim.ericssonnsds.LOCATION_AND_TC_MESSENGER"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 411
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->checkSntMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.vsim.ericssonnsds.action.SNT_MODE_LOCATIONANDTC_OPEN_WEBSHEET"

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v0, "com.sec.vsim.ericssonnsds.action.UNIFIED_WFC_LOCATIONANDTC_OPEN_WEBSHEET"

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 416
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 417
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x4

    .line 420
    iget v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->notifyCallbackForNsdsEvent(II)V

    goto :goto_2

    .line 422
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "openLocAndTCWebsheet: missing server info, failed"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 423
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    :goto_2
    return-void
.end method

.method private performNextOperation(IILjava/lang/String;)V
    .locals 4

    .line 321
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performNextOperation: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nsdsMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    const-string v3, "entitlement_in_progress"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    .line 330
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mRetryCount:I

    .line 332
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getE911AidValidationBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 333
    new-instance p2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v0, 0x3e8

    const/4 v1, -0x1

    invoke-direct {p2, p0, v0, p3, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v1, p2, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    return-void
.end method

.method private registerPushToken()V
    .locals 9

    .line 368
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerPushToken: requesting push token registration"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    .line 371
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 374
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 373
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v6, "vowifi+vvm"

    const-wide/16 v7, 0x7530

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->registerVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private removePushToken()V
    .locals 9

    .line 380
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removePushToken: requesting push token de-registration"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    .line 383
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 386
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v6, "vowifi+vvm"

    const-wide/16 v7, 0x7530

    move-object v2, v0

    .line 385
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->removeVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private retryEntitlementAutoOn(I)V
    .locals 8

    .line 248
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ATT_AutoOn] EntitlementAutoOn"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activate_after_oos"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "retry"

    .line 252
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "inprogress"

    if-nez v4, :cond_0

    .line 253
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "entitlement_state"

    invoke-static {v4, v6, v7}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 256
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[ATT_AutoOn] EntitlementAutoOn - fail : remove token"

    .line 258
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performRemovePushToken(I)V

    goto :goto_0

    :cond_1
    const-string p1, "[ATT_AutoOn] retry EntitlementAutoOn"

    .line 264
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v3, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateEntitlementStatus(I)V
    .locals 3

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    .line 496
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 497
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mRetryCount:I

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_provision_state"

    const/16 v1, 0x8ff

    if-ne p1, v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    .line 505
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEntitlementStatus: svc de-provision success"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8fe

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9c6

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->clearDeferredMessage()V

    .line 513
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEntitlementStatus: svc provision success"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "service_provisioned"

    invoke-static {p1, p0, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateResponseResult(ZI)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3e8

    if-eq p2, p1, :cond_0

    const/16 p1, 0x8ff

    if-eq p2, p1, :cond_0

    const/16 p1, 0x9c5

    if-eq p2, p1, :cond_0

    const/16 p1, 0x9c6

    if-eq p2, p1, :cond_0

    const/16 p1, 0x8fe

    if-ne p2, p1, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 580
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    const/4 v3, 0x2

    if-eq v1, v2, :cond_5

    const/16 v2, 0x68

    const/4 v4, 0x0

    const-string v5, "manageLocationAndTC"

    if-eq v1, v2, :cond_2

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 629
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->failEntitlementAutoOn()V

    goto/16 :goto_0

    .line 626
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->retryEntitlementAutoOn(I)V

    goto/16 :goto_0

    .line 623
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->retryEntitlementAutoOn(I)V

    goto/16 :goto_0

    .line 620
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->retryEntitlementAutoOn(I)V

    goto/16 :goto_0

    .line 592
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1, v5}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperation(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "managePushToken"

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperation(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "serviceEntitlementStatus"

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperation(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 617
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 614
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 611
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->openLocAndTCWebsheet(Z)V

    goto/16 :goto_0

    .line 608
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->openLocAndTCWebsheet(Z)V

    goto/16 :goto_0

    .line 602
    :pswitch_b
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->removePushToken()V

    goto/16 :goto_0

    .line 599
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->registerPushToken()V

    goto/16 :goto_0

    .line 605
    :pswitch_d
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->checkVoWifiEntitlement()V

    goto/16 :goto_0

    .line 596
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->checkLocationAndTC()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 642
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleRemovePushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 641
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 638
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleRegisterPushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object p1

    .line 637
    invoke-virtual {p0, v0, p1, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 647
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    :cond_3
    const/4 p1, 0x3

    .line 650
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activate_after_oos"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const-string v2, "completed"

    .line 653
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p1, "[ATT_AutoOn] InProgress - CHECK_LOC_AND_TC_AUTO_ON"

    .line 654
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 658
    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v0

    .line 659
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;

    move-result-object v1

    .line 658
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 632
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getE911AidValidationBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 633
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object p1

    .line 634
    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 6

    .line 668
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    iget v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mRetryCount:I

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 671
    invoke-virtual {p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p4

    .line 669
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->translateErrorCode(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;IZIILjava/lang/String;)I

    move-result p3

    .line 672
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->updateResponseResult(ZI)Z

    move-result p1

    .line 676
    sget-object p4, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNSDSFlowResponse: success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUCS:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ERRC:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const v0, 0x140b0001

    invoke-static {v0, p4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 p4, 0x900

    if-eq p4, p3, :cond_0

    .line 681
    new-instance p4, Landroid/content/Intent;

    const-string v0, "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    iget v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mSimSlot:I

    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "request_status"

    .line 683
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    iget p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    const-string v0, "device_event_type"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v0, "req_toggle_off_op"

    .line 685
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "error_codes"

    .line 686
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 687
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, p4, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 689
    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->updateEntitlementStatus(I)V

    return-void
.end method

.method public performE911AddressUpdate(I)V
    .locals 4

    .line 308
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performE911AddressUpdate: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v1, :cond_0

    const-string v1, "performE911AddressUpdate: entitlement in progress"

    .line 312
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public performEntitlementCheck(II)V
    .locals 3

    .line 280
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performEntitlementCheck: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const-string v1, "performEntitlementCheck: entitlement in progress"

    .line 284
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public performRemovePushToken(I)V
    .locals 4

    .line 293
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performRemovePushToken: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-eqz v1, :cond_0

    const-string v1, "performRemovePushToken: entitlement in progress"

    .line 297
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->clearDeferredMessage()V

    :goto_0
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 6

    const/16 v0, 0xd

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v3, 0x8

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 568
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "queueOperation: did not match any nsds base operations"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    :pswitch_3
    if-eq v0, v5, :cond_6

    .line 572
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 573
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 574
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
