.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "XaaEntitlementCheckFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;


# static fields
.field private static final INIT_E911_ADDRESS_UPDATE:I = 0x7

.field private static final INIT_ENTITLEMENT_CHECK:I = 0x6

.field protected static final LOCATION_AND_TC_CHECK:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final OPEN_E911_ADDRESS_UPDATE_WEBSHEET:I = 0x3

.field protected static final OPEN_LOC_AND_TC_WEBSHEET:I = 0x2

.field protected static final RESULT_SVC_PROV_LOC_AND_TC_WEBSHEET:I = 0x4

.field protected static final RESULT_UPDATE_LOC_AND_TC_WEBSHEET:I = 0x5

.field protected static final VOWIFI_ENTITLEMENT_CHECK:I = 0x1


# instance fields
.field protected mServerData:Ljava/lang/String;

.field protected mServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    return-void
.end method

.method private checkLocationAndTC()V
    .locals 9

    .line 175
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkLocationAndTC()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "checkLocationAndTC: native line detail is null"

    .line 179
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 181
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v8, "1.0"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 188
    iget-object p0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->checkLocationAndTC(Ljava/lang/String;J)V

    return-void
.end method

.method private checkSntMode()Z
    .locals 2

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private checkVoWifiEntitlement()V
    .locals 8

    .line 192
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkVoWifiEntitlement: requesting entitlement check"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "vowifi"

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    const/4 p0, 0x1

    const-wide/16 v2, 0x7530

    .line 199
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;ZJ)V

    return-void
.end method

.method private getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerData:Ljava/lang/String;

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

    .line 242
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 247
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-string v1, "loc_and_tc_status"

    .line 251
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    const-string v2, "loc_and_tc_server_url"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    const-string v1, "loc_and_tc_server_data"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationAndTCStatusBundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 4

    .line 66
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string v2, "serviceEntitlementStatus"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    if-nez p1, :cond_0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v1

    .line 72
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->getHttpErrRespReason(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-gtz v1, :cond_5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    if-eqz p1, :cond_4

    .line 82
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseServiceEntitlementStatus :messageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 86
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 87
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string/jumbo v2, "vowifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_0

    .line 94
    :cond_3
    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    :cond_4
    :goto_0
    return-object v0

    .line 75
    :cond_5
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    .line 76
    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    return-object v0
.end method

.method private handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_RESULT_CODE"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x5

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 122
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->notifyCallbackForNsdsEvent(II)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocAndTcWebsheetResult: result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :cond_1
    const/16 p2, 0xc

    .line 126
    :goto_1
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    .line 128
    new-instance p2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLocAndTcWebsheetRespCode(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v1, p2, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    return-void
.end method

.method private handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 9

    .line 101
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string v2, "manageLocationAndTC"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 103
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerData:Ljava/lang/String;

    .line 105
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerUrl:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onResponseAvailable: update location and tc status in db"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 108
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    move-object v6, p1

    .line 107
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateLocationAndTcStatus(JLcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;Ljava/lang/String;I)V

    .line 110
    :cond_0
    iget p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    iput p0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    :cond_1
    return-object v0
.end method

.method private openLocAndTCWebsheet(Z)V
    .locals 4

    .line 203
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openLocAndTCWebsheet: url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "serverData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "clientName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "title "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 209
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_URL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_CLIENT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    const-string v2, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 216
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v2, "com.sec.vsim.ericssonnsds.LOC_AND_TC_WEBSHEET_RESULT_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v2, "com.sec.vsim.ericssonnsds.LOCATION_AND_TC_MESSENGER"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 220
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->checkSntMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.sec.vsim.ericssonnsds.action.SNT_MODE_LOCATIONANDTC_OPEN_WEBSHEET"

    .line 221
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v2, "com.sec.vsim.ericssonnsds.action.UNIFIED_WFC_LOCATIONANDTC_OPEN_WEBSHEET"

    .line 223
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 225
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 230
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->notifyCallbackForNsdsEvent(II)V

    goto :goto_2

    .line 232
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "openLocAndTCWebsheet: missing server info, failed"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 233
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    :goto_2
    return-void
.end method

.method private performNextOperation(IILjava/lang/String;)V
    .locals 4

    .line 162
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    const-string v3, "entitlement_in_progress"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    .line 169
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mRetryCount:I

    .line 171
    new-instance p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 p2, 0x3e8

    const/4 v0, -0x1

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateEntitlementStatus(I)V
    .locals 3

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    .line 292
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mRetryCount:I

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_provision_state"

    const/16 v1, 0x8ff

    if-ne p1, v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    .line 299
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEntitlementStatus: svc de-provision success"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
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

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_1

    .line 305
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->clearDeferredMessage()V

    .line 306
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEntitlementStatus: svc provision success"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
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
    .locals 0

    if-eqz p1, :cond_1

    const/16 p0, 0x3e8

    if-eq p2, p0, :cond_0

    const/16 p0, 0x8ff

    if-eq p2, p0, :cond_0

    const/16 p0, 0x9c5

    if-eq p2, p0, :cond_0

    const/16 p0, 0x9c6

    if-eq p2, p0, :cond_0

    const/16 p0, 0x8fe

    if-ne p2, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 350
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x68

    const-string v3, "manageLocationAndTC"

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 357
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperation(IILjava/lang/String;)V

    goto :goto_0

    .line 354
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "serviceEntitlementStatus"

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperation(IILjava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 372
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 369
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->openLocAndTCWebsheet(Z)V

    goto :goto_0

    .line 366
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->openLocAndTCWebsheet(Z)V

    goto :goto_0

    .line 363
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->checkVoWifiEntitlement()V

    goto :goto_0

    .line 360
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->checkLocationAndTC()V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    :cond_1
    const/4 p1, 0x3

    .line 385
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v0

    .line 386
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;

    move-result-object v1

    .line 385
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 378
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 2

    .line 395
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    iget p3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    invoke-static {p3, p1, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaWfcErrorCodeTranslator;->translateErrorCode(IZI)I

    move-result p3

    .line 397
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->updateResponseResult(ZI)Z

    move-result p1

    .line 401
    sget-object p4, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNSDSFlowResponse: success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x900

    if-eq p4, p3, :cond_0

    .line 405
    new-instance p4, Landroid/content/Intent;

    const-string v0, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "request_status"

    .line 407
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    iget p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mDeviceEventType:I

    const-string v0, "device_event_type"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "req_toggle_off_op"

    .line 409
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "error_codes"

    .line 410
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 411
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, p4, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 413
    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->updateEntitlementStatus(I)V

    return-void
.end method

.method public performE911AddressUpdate(I)V
    .locals 4

    .line 151
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eqz v1, :cond_0

    const-string v1, "performE911AddressUpdate: entitlement in progress"

    .line 154
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public performEntitlementCheck(II)V
    .locals 3

    .line 132
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    .line 135
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    const-string v1, "performEntitlementCheck: entitlement in progress"

    .line 136
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public performRemovePushToken(I)V
    .locals 2

    .line 145
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "performRemovePushToken: not supported"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 146
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    .line 338
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "queueOperation: did not match any nsds base operations"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eq v0, v2, :cond_4

    .line 342
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 343
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method
