.class Lcom/sec/internal/google/SipDelegateConfig$Builder;
.super Ljava/lang/Object;
.source "SipDelegateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/SipDelegateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;


# direct methods
.method public static synthetic $r8$lambda$QLMYbDWasM_jD7G_CMwhJdzL_zQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->lambda$setPcscfAddress$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/sec/internal/google/SipDelegateConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/internal/google/SipDelegateConfig;-><init>(ILjava/util/Set;Lcom/sec/internal/google/SipDelegateConfig-IA;)V

    iput-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    return-void
.end method

.method private static synthetic lambda$setPcscfAddress$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 282
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

    .line 283
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/internal/google/SipDelegateConfig;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    invoke-static {v0, p0}, Lcom/sec/internal/google/SipDelegateConfig;->-$$Nest$fputmBuilder(Lcom/sec/internal/google/SipDelegateConfig;Lcom/sec/internal/google/SipDelegateConfig$Builder;)V

    .line 297
    iget-object p0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    return-object p0
.end method

.method public setHomeDomain(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setHomeDomain: Empty! Ignore."

    .line 156
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mImei:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setImei: Empty! Ignore."

    .line 165
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setLocalAddress(Ljava/lang/String;I)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 6

    const-string v0, "SipDelegateConfig"

    .line 262
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "setLocalAddress: %s:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Lcom/sec/internal/google/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLocalAddress: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setMaxUdpPayloadSizeBytes(I)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mMaxUdpPayloadSize:I

    return-object p0
.end method

.method public setNatSocketAddress(Ljava/net/InetSocketAddress;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mNatAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public setPcscfAddress(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 7

    const-string v0, "SipDelegateConfig"

    .line 281
    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iget-object v1, v1, Lcom/sec/internal/google/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/google/SipDelegateConfig$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/google/SipDelegateConfig$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/google/SipDelegateConfig$Builder$$ExternalSyntheticLambda1;-><init>()V

    .line 284
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

    .line 287
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "setPcscfAddress: %s:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v2, Lcom/sec/internal/google/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPcscfAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setPrivateUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setPublicGruuUri(Landroid/net/Uri;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mGruu:Landroid/net/Uri;

    return-object p0
.end method

.method public setPublicUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityVerifyHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSecurityVerifyHeader: Empty! Ignore."

    .line 274
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipAssociatedUriHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipAssociatedUriHeader: Empty! Ignore."

    .line 249
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipAuthenticationHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setSipAuthenticationNonce(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    return-object p0
.end method

.method public setSipCniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mCniHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setSipCompactFormEnabled(Z)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-boolean p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mIsSipCompactFormEnabled:Z

    return-object p0
.end method

.method public setSipContactUserParameter(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipContactUserParameter: Empty! Ignore."

    .line 217
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipKeepaliveEnabled(Z)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-boolean p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mIsSipKeepaliveEnabled:Z

    return-object p0
.end method

.method public setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipPaniHeader: Empty! Ignore."

    .line 226
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipPathHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mPathHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipPlaniHeader: Empty! Ignore."

    .line 235
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipServiceRouteHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipServiceRouteHeader: Empty! Ignore."

    .line 194
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipUserAgentHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/google/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipUserAgentHeader: Empty! Ignore."

    .line 208
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTransport(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "setTransport: [%s]"

    .line 255
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SipDelegateConfig"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/sec/internal/google/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/google/SipDelegateConfig;

    const-string v2, "UDP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput p1, v1, Lcom/sec/internal/google/SipDelegateConfig;->mTransportType:I

    return-object p0
.end method
