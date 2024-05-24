.class public final Lcom/google/android/gms/common/util/zzp;
.super Ljava/lang/Object;


# direct methods
.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method
