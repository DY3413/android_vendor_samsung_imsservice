.class public Lcom/sec/internal/ims/util/HttpAuthGenerator;
.super Ljava/lang/Object;
.source "HttpAuthGenerator.java"


# static fields
.field private static final AKAV1_MD5:Ljava/lang/String; = "AKAv1-MD5"

.field private static final AKAV2_MD5:Ljava/lang/String; = "AKAv2-MD5"

.field private static final LOG_TAG:Ljava/lang/String; = "HttpAuthGenerator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 67
    sget-object v0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateAuthHeader: challenge= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateAuthHeader: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " "

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 76
    aget-object v2, v0, v1

    const-string v3, "Digest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateDigestAuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    aget-object p0, v0, v1

    const-string p1, "Basic"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 79
    invoke-static {p3, p4}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "challenge is not WWW-Authenticate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateDigestAuthHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 194
    new-instance v0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    .line 195
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v6

    .line 196
    invoke-virtual {v6}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    move-object v1, p3

    move-object v2, p4

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "/"

    .line 121
    invoke-static {p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 122
    invoke-static {p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    .line 123
    new-instance v3, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v3}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    if-eqz v1, :cond_0

    const-string v4, "ft_with_gba"

    .line 124
    invoke-interface {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {v3, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v3

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    sget-object v4, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getAuthorizationHeader: requestUrl is empty. get url from imConfig"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, p1

    .line 134
    :goto_1
    sget-object v5, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v4, v0

    .line 146
    :goto_2
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 149
    :cond_2
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, v4

    .line 152
    :goto_4
    sget-object v4, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const-string v0, "FT with GBA is on"

    .line 157
    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getGbaResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p0, ""

    goto :goto_6

    .line 164
    :cond_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsPwd()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {v3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 166
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "aka"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    invoke-virtual {v3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/ims/util/AkaAuth;->getAkaResponse(ILjava/lang/String;)Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v1, "AKAv1-MD5"

    .line 169
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getRes()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    const-string v1, "AKAv2-MD5"

    .line 171
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getRes()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getAuthKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->getEncrKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_6
    :goto_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUser()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p2, v0, p3, p0, p1}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object p0
.end method

.method public static getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "eap-relay-packet"

    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->composeRootNai(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p1, v2, p0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->generateChallengeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleEapAkaChallenge akaResp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    sget-object p1, Lcom/sec/internal/ims/util/HttpAuthGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEAPAkaChallengeResponse error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getGbaResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-class v1, Lcom/sec/internal/ims/util/HttpAuthGenerator;

    monitor-enter v1

    .line 206
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    .line 207
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 208
    new-instance v10, Landroid/telephony/gba/GbaAuthRequest;

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v3, :cond_0

    move-object/from16 v2, p4

    move v3, v11

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    move v3, v12

    .line 209
    :goto_0
    invoke-static {v2, v3}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;Z)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    const-string v2, ""

    .line 210
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 211
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 212
    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, p0

    invoke-interface {v0, p0, v3}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaValue(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v3}, Lcom/sec/internal/ims/gba/GbaValue;->getValue()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sec/internal/ims/gba/GbaValue;->getBtid()Ljava/lang/String;

    move-result-object v3

    move-object v5, p2

    move-object/from16 v7, p3

    invoke-static {p2, v2, v7, v3, v0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    move-object v5, p2

    move-object/from16 v7, p3

    .line 217
    :try_start_1
    new-instance v11, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;

    move-object v3, v11

    move-object v4, v2

    move-object v5, p2

    move-object v6, p1

    move-object/from16 v7, p3

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v0, v10, v11}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Landroid/telephony/gba/GbaAuthRequest;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x1388

    .line 232
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 234
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 237
    :goto_1
    aget-object v0, v2, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 0

    .line 189
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    return-object p0
.end method

.method private static getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 185
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method
