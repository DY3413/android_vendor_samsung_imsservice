.class public Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
.super Lcom/sec/internal/helper/header/AuthenticationHeaders;
.source "WwwAuthenticateHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "WWW-Authenticate"

.field public static final HEADER_PARAM_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final HEADER_PARAM_BASIC_SCHEME:Ljava/lang/String; = "Basic"

.field public static final HEADER_PARAM_DIGEST_SCHEME:Ljava/lang/String; = "Digest"

.field public static final HEADER_PARAM_NONCE:Ljava/lang/String; = "nonce"

.field public static final HEADER_PARAM_OPAQUE:Ljava/lang/String; = "opaque"

.field public static final HEADER_PARAM_REALM:Ljava/lang/String; = "realm"

.field public static final HEADER_PARAM_STALE:Ljava/lang/String; = "stale"

.field public static final HEADER_PARAM_UNKNOWN_SCHEME:Ljava/lang/String; = "Unknown"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private stale:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/sec/internal/helper/header/AuthenticationHeaders;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->scheme:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->stale:Z

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getNonce()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public getOpaque()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    return-object p0
.end method

.method public getQop()Ljava/lang/String;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    return-object p0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public isStale()Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->stale:Z

    return p0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setStale(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->stale:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WwwAuthenticateHeader ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->scheme:Ljava/lang/String;

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheme="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    move-object v1, v3

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_4a
    move-object v1, v3

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    if-eqz v1, :cond_69

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :cond_69
    move-object v1, v3

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    if-eqz v1, :cond_88

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algorithm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    :cond_88
    move-object v1, v3

    :goto_89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    if-eqz v1, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qop="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a9

    :cond_a8
    move-object v1, v3

    :goto_a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    if-eqz v1, :cond_c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opaque="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->stale:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
