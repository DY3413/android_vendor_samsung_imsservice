.class public interface abstract Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionFactory"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 373
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory$1;

    invoke-direct {v0}, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory$1;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/net/URL;Landroid/net/Network;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;Landroid/net/Network;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
