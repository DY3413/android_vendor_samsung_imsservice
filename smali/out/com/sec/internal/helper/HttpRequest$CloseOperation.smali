.class public abstract Lcom/sec/internal/helper/HttpRequest$CloseOperation;
.super Lcom/sec/internal/helper/HttpRequest$Operation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CloseOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sec/internal/helper/HttpRequest$Operation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field fileOutputStream:Ljava/io/FileOutputStream;

.field private final ignoreCloseExceptions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;ZLjava/io/FileOutputStream;)V
    .registers 4

    .line 501
    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    .line 503
    iput-boolean p2, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    .line 504
    iput-object p3, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_b

    .line 510
    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 512
    :cond_b
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1c

    .line 514
    :try_start_f
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 515
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_28

    .line 516
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_28

    goto :goto_28

    .line 522
    :cond_1c
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 523
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_28

    .line 524
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :catch_28
    :cond_28
    :goto_28
    return-void
.end method
