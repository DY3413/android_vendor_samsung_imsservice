.class public abstract Lcom/sec/internal/helper/HttpRequest$Operation;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 468
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_5} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_13
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    .line 477
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;->done()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception p0

    .line 480
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catchall_10
    move-exception v0

    const/4 v1, 0x0

    goto :goto_20

    :catch_13
    move-exception v1

    .line 474
    :try_start_14
    new-instance v2, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_1a
    move-exception v1

    .line 471
    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    .line 477
    :goto_20
    :try_start_20
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;->done()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_2d

    :catch_24
    move-exception p0

    if-nez v1, :cond_2d

    .line 480
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 483
    :cond_2d
    :goto_2d
    throw v0
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
