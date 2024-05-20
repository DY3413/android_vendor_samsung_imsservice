.class public Lcom/sec/internal/ims/util/OpenIdAuth;
.super Ljava/lang/Object;
.source "OpenIdAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OpenIdAuth"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmUrl(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/OpenIdAuth;->setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V

    .line 51
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0xc8

    const/16 v3, 0x12e

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/16 v2, 0x191

    if-eq v1, v2, :cond_0

    .line 93
    sget-object p0, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive HTTP response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " neither 302 nor UNAUTHORIZED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 79
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v2

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "challenge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I

    move-result v1

    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmUrl(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    const-string v5, "GET"

    .line 82
    invoke-static {v1, v4, v2, v5, v0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmUrl(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    .line 86
    invoke-static {v1, p0}, Lcom/sec/internal/ims/util/OpenIdAuth;->setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 89
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p0

    move-object v0, v1

    :goto_0
    move v1, p0

    goto :goto_1

    .line 72
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Received 302"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    const-string v4, "200 OK received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Content-Type"

    .line 56
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 58
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 60
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I

    move-result v4

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 62
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmUrl(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 63
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/OpenIdAuth;->setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V

    .line 65
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    .line 66
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p0

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v1, v3, :cond_4

    const-string p0, "Location"

    .line 97
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not receive 302 after authentication, received : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V
    .locals 6

    .line 109
    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Landroid/net/Network;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmUserAgent(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/16 v3, 0x2710

    const v4, 0x1d4c0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/helper/HttpRequest;->setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 110
    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmIsTrustAllCert(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "is_eap_supported"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Accept"

    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    :cond_1
    return-void
.end method
