.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;
.super Landroid/os/Handler;
.source "NSDSResponseHandler.java"


# static fields
.field private static final KEY_CALLBACK:Ljava/lang/String; = "callback"

.field private static final KEY_MESSAGE_ID_METHOD_BUNDLE:Ljava/lang/String; = "messageIdMethodBundle"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final METHOD_ID_GET_MSISDN:I = 0x3

.field private static final METHOD_ID_MANAGE_CONNECTIVITY:I = 0x2

.field private static final METHOD_ID_MANAGE_LOC_AND_TC:I = 0x5

.field private static final METHOD_ID_MANAGE_PUSH_TOKEN:I = 0x4

.field private static final METHOD_ID_MANAGE_SERVICE:I = 0x6

.field private static final METHOD_ID_REGISTERED_DEVICES:I = 0x8

.field private static final METHOD_ID_REGISTERED_MSISDN:I = 0x7

.field private static final METHOD_ID_REQ_3GPP_AUTH:I = 0x1

.field private static final METHOD_ID_SERVICE_ENTITLEMENT_STATUS:I = 0x9

.field private static final PARSE_REPSONSE:I

.field private static final sMapNSDSMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3gppAuthentication"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageConnectivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getMSISDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "managePushToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageLocationAndTC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageService"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "registeredMSISDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "registeredDevices"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 75
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 76
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mContext:Landroid/content/Context;

    .line 77
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-direct {p1, p2, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private parseHttpErrorResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;
    .registers 4

    .line 116
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseHttpErrorResponse: status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "http_resp_code"

    .line 118
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "http_resp_reason"

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private parseResponse(Landroid/os/Bundle;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;
    .registers 12

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 126
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "parseJsonData: Check for http failure. most likely connection reset by peer"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_b
    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_18

    .line 132
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->parseHttpErrorResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 135
    :cond_18
    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_26

    .line 137
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "parseResponse: null json data"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 142
    :cond_26
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 143
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 146
    :try_start_30
    invoke-virtual {v1, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p2
    :try_end_38
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_30 .. :try_end_38} :catch_176

    if-eqz p2, :cond_16e

    .line 152
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_16e

    .line 158
    :cond_42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4b
    :goto_4b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 164
    :try_start_57
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :try_end_5f
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_57 .. :try_end_5f} :catch_151

    .line 169
    iget v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    .line 170
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_82

    .line 172
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find method for message id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 177
    :cond_82
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseResponse: method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-direct {p0, v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x140a0000

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 180
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_192

    move-object v3, v0

    goto/16 :goto_148

    .line 208
    :pswitch_d8
    :try_start_d8
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 205
    :pswitch_e1
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 202
    :pswitch_ea
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredMSISDN;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 199
    :pswitch_f3
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 196
    :pswitch_fc
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 193
    :pswitch_105
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 190
    :pswitch_10e
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 187
    :pswitch_117
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    goto :goto_148

    .line 184
    :pswitch_120
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :try_end_128
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d8 .. :try_end_128} :catch_129

    goto :goto_148

    :catch_129
    move-exception p0

    .line 215
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syntax error while parsing individual response: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :goto_148
    if-eqz v3, :cond_4b

    .line 219
    iput-object v6, v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->method:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_4b

    :catch_151
    move-exception p0

    .line 166
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syntax error while parsing generic response"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_16d
    return-object v1

    .line 153
    :cond_16e
    :goto_16e
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "empty result"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_176
    move-exception p0

    .line 148
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot parse result"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_120
        :pswitch_117
        :pswitch_10e
        :pswitch_105
        :pswitch_fc
        :pswitch_f3
        :pswitch_ea
        :pswitch_e1
        :pswitch_d8
    .end packed-switch
.end method

.method private toString(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_ab

    const/16 p0, 0x3f2

    if-eq p1, p0, :cond_a8

    const/16 p0, 0x438

    if-eq p1, p0, :cond_a5

    const/16 p0, 0x5dc

    if-eq p1, p0, :cond_a2

    const/16 p0, 0x270f

    if-eq p1, p0, :cond_9f

    const/16 p0, 0x404

    if-eq p1, p0, :cond_9c

    const/16 p0, 0x405

    if-eq p1, p0, :cond_99

    const/16 p0, 0x418

    if-eq p1, p0, :cond_96

    const/16 p0, 0x419

    if-eq p1, p0, :cond_93

    const/16 p0, 0x41d

    if-eq p1, p0, :cond_90

    const/16 p0, 0x41e

    if-eq p1, p0, :cond_8d

    const/16 p0, 0x424

    if-eq p1, p0, :cond_8a

    const/16 p0, 0x425

    if-eq p1, p0, :cond_87

    const/16 p0, 0x457

    if-eq p1, p0, :cond_84

    const/16 p0, 0x458

    if-eq p1, p0, :cond_81

    packed-switch p1, :pswitch_data_ae

    packed-switch p1, :pswitch_data_be

    packed-switch p1, :pswitch_data_ce

    const-string p0, "ERROR_UNKNOWN"

    return-object p0

    :pswitch_48
    const-string p0, "ERROR_INVALID_SERVICE_NAME"

    return-object p0

    :pswitch_4b
    const-string p0, "ERROR_COPY_FORBIDDEN"

    return-object p0

    :pswitch_4e
    const-string p0, "ERROR_MAX_SERVICE_INSTANCE_REACHED"

    return-object p0

    :pswitch_51
    const-string p0, "ERROR_INVALID_TARGET_USER"

    return-object p0

    :pswitch_54
    const-string p0, "ERROR_INVALID_TARGET_DEVICEID"

    return-object p0

    :pswitch_57
    const-string p0, "ERROR_INVALID_FINGERPRINT"

    return-object p0

    :pswitch_5a
    const-string p0, "ERROR_MAX_SERVICE_REACHED"

    return-object p0

    :pswitch_5d
    const-string p0, "ERROR_INVALID_CSR"

    return-object p0

    :pswitch_60
    const-string p0, "ERROR_INVALID_OWNERID"

    return-object p0

    :pswitch_63
    const-string p0, "ERROR_REMOVAL_SERVICE_FAILURE"

    return-object p0

    :pswitch_66
    const-string p0, "ERROR_CERTIFICATE_GENERATION_FAILURE"

    return-object p0

    :pswitch_69
    const-string p0, "ERROR_NO_EPDG"

    return-object p0

    :pswitch_6c
    const-string p0, "ERROR_INVALID_DEVICE_ID"

    return-object p0

    :pswitch_6f
    const-string p0, "INVALID_CLIENT_ID"

    return-object p0

    :pswitch_72
    const-string p0, "FORBIDDEN_REQUEST"

    return-object p0

    :pswitch_75
    const-string p0, "ERROR_AKA_AUTHENTICATION_FAILED"

    return-object p0

    :pswitch_78
    const-string p0, "ERROR_INVALID_IP_AUTHENTICATION"

    return-object p0

    :pswitch_7b
    const-string p0, "ERROR_INVALID_REQUEST"

    return-object p0

    :pswitch_7e
    const-string p0, "REQUEST_AKA_CHALLENGE"

    return-object p0

    :cond_81
    const-string p0, "ERROR_3GPP_AUTH_ONGOING"

    return-object p0

    :cond_84
    const-string p0, "ERROR_SERVER_ERROR"

    return-object p0

    :cond_87
    const-string p0, "ERROR_CREATION_FAILURE"

    return-object p0

    :cond_8a
    const-string p0, "ERROR_NO_MSISDN_FOUND"

    return-object p0

    :cond_8d
    const-string p0, "ERROR_INVALID_DEVICE_GROUP"

    return-object p0

    :cond_90
    const-string p0, "ERROR_INVALID_SERVICE_INSTANCEID"

    return-object p0

    :cond_93
    const-string p0, "ERROR_SERVICE_NOT_PERMITTED"

    return-object p0

    :cond_96
    const-string p0, "ERROR_SERVICE_NOT_ENTITLED"

    return-object p0

    :cond_99
    const-string p0, "ERROR_INVALID_DEVICE_STATUS"

    return-object p0

    :cond_9c
    const-string p0, "ERROR_DEVICE_LOCKED"

    return-object p0

    :cond_9f
    const-string p0, "ERROR_UNSUPPORTED_OPERATION"

    return-object p0

    :cond_a2
    const-string p0, "ERROR_REQUEST_ONGOING"

    return-object p0

    :cond_a5
    const-string p0, "ERROR_INVALID_PUSH_TOKEN"

    return-object p0

    :cond_a8
    const-string p0, "ERROR_MAX_DEVICE_REACHED"

    return-object p0

    :cond_ab
    const-string p0, "REQUEST_SUCCESSFUL"

    return-object p0

    :pswitch_data_ae
    .packed-switch 0x3eb
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x3fc
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x410
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .registers 4

    .line 227
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 230
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 91
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "callback"

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    const-string v2, "messageIdMethodBundle"

    .line 96
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    move-object v0, v1

    :goto_17
    if-nez v1, :cond_21

    .line 99
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage(): callback is null. return..."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_21
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_3e

    .line 111
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response for Unknown EricssonNSDSRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 104
    :cond_3e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->parseResponse(Landroid/os/Bundle;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 105
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 106
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 108
    :cond_55
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_58
    return-void
.end method

.method public obtainParseResponseMessage(Landroid/os/Message;Landroid/os/Bundle;)Landroid/os/Message;
    .registers 5

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callback"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "messageIdMethodBundle"

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object p0
.end method
