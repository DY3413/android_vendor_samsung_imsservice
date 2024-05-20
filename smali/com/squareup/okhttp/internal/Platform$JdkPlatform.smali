.class Lcom/squareup/okhttp/internal/Platform$JdkPlatform;
.super Lcom/squareup/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdkPlatform"
.end annotation


# instance fields
.field private final sslContextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$JdkPlatform;->sslContextClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 341
    iget-object p0, p0, Lcom/squareup/okhttp/internal/Platform$JdkPlatform;->sslContextClass:Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {p1, p0, v0}, Lcom/squareup/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_0
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v0, "trustManager"

    invoke-static {p0, p1, v0}, Lcom/squareup/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method
