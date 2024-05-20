.class public final Lcom/sec/internal/helper/SrvDnsResolver;
.super Ljava/lang/Object;
.source "SrvDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;,
        Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;,
        Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;
    }
.end annotation


# static fields
.field public static final QUERY_TYPE_SRV:I = 0x21

.field private static final TAG:Ljava/lang/String; = "SrvDnsResolver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/net/Network;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 369
    new-instance v8, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;

    invoke-direct {v8, p0, p4, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;-><init>(Landroid/net/Network;Landroid/net/DnsResolver$Callback;Ljava/util/concurrent/Executor;)V

    .line 371
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->getInternalExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    .line 372
    invoke-virtual/range {v0 .. v8}, Landroid/net/DnsResolver;->rawQuery(Landroid/net/Network;Ljava/lang/String;IIILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    return-void
.end method
