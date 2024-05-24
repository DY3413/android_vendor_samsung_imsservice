.class Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
.super Ljava/lang/Object;
.source "SipDelegateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/SipDelegateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;


# direct methods
.method public static synthetic $r8$lambda$z6tXMQWB5gq5e73pzy2DlEIwlKA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->lambda$setPcscfAddress$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(I)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig;-><init>(ILcom/sec/internal/imsphone/SipDelegateConfig-IA;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-void
.end method

.method private static synthetic lambda$setPcscfAddress$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]?:(\\d+)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/internal/imsphone/SipDelegateConfig;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-static {v0, p0}, Lcom/sec/internal/imsphone/SipDelegateConfig;->-$$Nest$fputmBuilder(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-object p0
.end method

.method public setHomeDomain(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setHomeDomain: Empty! Ignore."

    .line 122
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mImei:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setImei: Empty! Ignore."

    .line 131
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setLocalAddress(Ljava/lang/String;I)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 9

    const-string v0, "SipDelegateConfig"

    .line 208
    :try_start_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "setLocalAddress: %s:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Lcom/sec/internal/imsphone/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_3f

    :catch_29
    move-exception p1

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLocalAddress: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-object p0
.end method

.method public setMaxUdpPayloadSizeBytes(I)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mMaxUdpPayloadSize:I

    return-object p0
.end method

.method public setPcscfAddress(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 9

    const-string v0, "SipDelegateConfig"

    .line 227
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iget-object v1, v1, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder$$ExternalSyntheticLambda1;-><init>()V

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/16 v2, 0x13c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 233
    :try_start_2c
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "setPcscfAddress: %s:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v2, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;
    :try_end_52
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_52} :catch_53

    goto :goto_69

    :catch_53
    move-exception p1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPcscfAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-object p0
.end method

.method public setPrivateUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setPublicUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityVerifyHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 218
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSecurityVerifyHeader: Empty! Ignore."

    .line 220
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setSipAssociatedUriHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipAssociatedUriHeader: Empty! Ignore."

    .line 195
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setSipAuthenticationHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setSipAuthenticationNonce(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    return-object p0
.end method

.method public setSipContactUserParameter(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipContactUserParameter: Empty! Ignore."

    .line 168
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipPaniHeader: Empty! Ignore."

    .line 177
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 184
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipPlaniHeader: Empty! Ignore."

    .line 186
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setSipServiceRouteHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipServiceRouteHeader: Empty! Ignore."

    .line 150
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setSipUserAgentHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 3

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 157
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    goto :goto_13

    :cond_b
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipUserAgentHeader: Empty! Ignore."

    .line 159
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object p0
.end method

.method public setTransport(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .registers 4

    const-string/jumbo v0, "setTransport: [%s]"

    .line 201
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateConfig"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    const-string v1, "UDP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mTransportType:I

    return-object p0
.end method
