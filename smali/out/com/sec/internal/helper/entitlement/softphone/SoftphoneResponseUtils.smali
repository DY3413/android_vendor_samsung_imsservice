.class public Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;
.super Ljava/lang/Object;
.source "SoftphoneResponseUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftphoneResponseUtils"

.field public static final PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils$1;

    invoke-direct {v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils$1;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;
    .registers 3

    .line 70
    new-instance v0, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorString(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;
    .registers 5

    .line 189
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 190
    sget-object v1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Response Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_40

    const-string p0, "Unable to get response"

    .line 198
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    const/16 v3, 0xc8

    if-eq v0, v3, :cond_ba

    const/16 v3, 0x198

    if-eq v0, v3, :cond_b4

    const/16 v3, 0x19b

    if-eq v0, v3, :cond_ae

    const/16 v3, 0x19e

    if-eq v0, v3, :cond_a8

    const/16 v3, 0x1f4

    if-eq v0, v3, :cond_a2

    const/16 v3, 0x190

    if-eq v0, v3, :cond_ba

    const/16 v3, 0x191

    if-eq v0, v3, :cond_8d

    packed-switch v0, :pswitch_data_108

    packed-switch v0, :pswitch_data_112

    const-string v0, "Unexpected response status."

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cf

    :pswitch_69
    const-string v0, "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI or some other auxiliary server it needed to access in attempting to complete the request."

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :pswitch_6f
    const-string v0, "The server is currently unable to receive requests; please retry."

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :pswitch_75
    const-string v0, "The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request."

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :pswitch_7b
    const-string v0, "A request was made of a resource using a request method not supported by that resource."

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :pswitch_81
    const-string v0, "The server has not found anything matching the Request-URI."

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :pswitch_87
    const-string v0, "Access permission error."

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 215
    :cond_8d
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/PolicyExceptionResponse;

    invoke-static {v0, v3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/PolicyExceptionResponse;

    if-eqz v0, :cond_cf

    .line 216
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/PolicyExceptionResponse;->mRequestError:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/PolicyExceptionResponse$RequestError;

    if-eqz v0, :cond_cf

    .line 217
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/PolicyExceptionResponse$RequestError;->mException:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;

    goto :goto_d0

    :cond_a2
    const-string v0, "The server encountered an internal error or timed out; please retry."

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :cond_a8
    const-string v0, "The Request-URI is longer than the server is willing to interpret."

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :cond_ae
    const-string v0, "The Content-Length header was not specified."

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :cond_b4
    const-string v0, "The client did not produce a request within the time that the server was prepared to wait."

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 207
    :cond_ba
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse;

    invoke-static {v0, v3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse;

    if-eqz v0, :cond_cf

    .line 208
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse;->mRequestError:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;

    if-eqz v0, :cond_cf

    .line 209
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;->mException:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;

    goto :goto_d0

    :cond_cf
    :goto_cf
    const/4 v0, 0x0

    :goto_d0
    if-eqz v0, :cond_ee

    .line 257
    iget-object p0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;->mMessageId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;->mText:Ljava/lang/String;

    .line 259
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object p0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;->mVariables:Ljava/lang/String;

    if-eqz p0, :cond_e6

    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_e6
    iget-object p0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;->mValues:Ljava/lang/String;

    if-eqz p0, :cond_103

    .line 265
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_103

    .line 269
    :cond_ee
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/GeneralErrorResponse;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/GeneralErrorResponse;

    if-eqz p0, :cond_103

    .line 270
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/GeneralErrorResponse;->mError:Ljava/lang/String;

    if-eqz p0, :cond_103

    .line 271
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_103
    :goto_103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_108
    .packed-switch 0x193
        :pswitch_87
        :pswitch_81
        :pswitch_7b
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x1f6
        :pswitch_75
        :pswitch_6f
        :pswitch_69
    .end packed-switch
.end method

.method public static parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    const-string v0, "mStatusCode"

    const-string v1, "mReason"

    const/4 v2, 0x0

    const-string v3, "cannot parse result"

    const-string v4, "mSuccess"

    const/4 v5, 0x0

    if-eqz p0, :cond_98

    .line 89
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    if-ne v6, p2, :cond_5c

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    sget-object p2, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJsonResponse(): parsed response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_39

    .line 99
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    goto :goto_39

    :catch_37
    move-exception p1

    goto :goto_43

    .line 101
    :cond_39
    :goto_39
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 102
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_41} :catch_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_41} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_32 .. :try_end_41} :catch_37

    goto/16 :goto_ce

    .line 104
    :goto_43
    sget-object p2, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    .line 108
    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 109
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 110
    invoke-virtual {p2, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 112
    invoke-static {p0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->getErrorString(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v5, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p0

    invoke-virtual {p1, v5, p0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5c .. :try_end_7d} :catch_7e
    .catch Ljava/lang/InstantiationException; {:try_start_5c .. :try_end_7d} :catch_7e

    goto :goto_cd

    :catch_7e
    move-exception p0

    .line 116
    sget-object p1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    .line 121
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 123
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-string p2, "Null response"

    .line 125
    invoke-virtual {p0, v5, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 127
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_b3
    .catch Ljava/lang/IllegalAccessException; {:try_start_98 .. :try_end_b3} :catch_b4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_98 .. :try_end_b3} :catch_b4
    .catch Ljava/lang/InstantiationException; {:try_start_98 .. :try_end_b3} :catch_b4

    goto :goto_cd

    :catch_b4
    move-exception p0

    .line 129
    sget-object p1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cd
    move-object p0, v5

    :goto_ce
    return-object p0
.end method

.method public static parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 58
    :cond_4
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 59
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    :try_start_e
    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 62
    invoke-virtual {v2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_16
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 64
    sget-object p1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/lang/Class<",
            "TT;>;IZ)TT;"
        }
    .end annotation

    const-string v0, "mStatusCode"

    const-string v1, "mReason"

    const/4 v2, 0x0

    const-string v3, "cannot parse result"

    const-string v4, "mSuccess"

    const/4 v5, 0x0

    if-eqz p0, :cond_82

    .line 138
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    if-ne v6, p2, :cond_46

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {p0, p1, p3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseXmlResponse(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_23

    .line 151
    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_2d

    .line 153
    :cond_23
    :goto_23
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 154
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2b} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_2b} :catch_21
    .catch Ljava/lang/InstantiationException; {:try_start_1c .. :try_end_2b} :catch_21

    goto/16 :goto_b8

    .line 156
    :goto_2d
    sget-object p2, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 160
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 161
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 162
    invoke-virtual {p2, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 164
    invoke-static {p0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->getErrorString(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v5, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p0

    invoke-virtual {p1, v5, p0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_67} :catch_68
    .catch Ljava/lang/NoSuchFieldException; {:try_start_46 .. :try_end_67} :catch_68
    .catch Ljava/lang/InstantiationException; {:try_start_46 .. :try_end_67} :catch_68

    goto :goto_b7

    :catch_68
    move-exception p0

    .line 168
    sget-object p1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    .line 173
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 174
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 175
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-string p2, "Null response"

    .line 177
    invoke-virtual {p0, v5, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 179
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_9d
    .catch Ljava/lang/IllegalAccessException; {:try_start_82 .. :try_end_9d} :catch_9e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_82 .. :try_end_9d} :catch_9e
    .catch Ljava/lang/InstantiationException; {:try_start_82 .. :try_end_9d} :catch_9e

    goto :goto_b7

    :catch_9e
    move-exception p0

    .line 181
    sget-object p1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b7
    move-object p0, v5

    :goto_b8
    return-object p0
.end method

.method public static parseXmlResponse(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 78
    :cond_4
    :try_start_4
    invoke-static {p2}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object p2

    .line 79
    invoke-virtual {p2, p0, p1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 81
    sget-object p1, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot parse result"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
