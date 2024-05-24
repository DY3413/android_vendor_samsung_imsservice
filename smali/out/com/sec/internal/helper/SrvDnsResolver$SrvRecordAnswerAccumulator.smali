.class Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;
.super Ljava/lang/Object;
.source "SrvDnsResolver.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/SrvDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SrvRecordAnswerAccumulator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$LazyExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SrvRecordAnswerAccum"


# instance fields
.field private final mNetwork:Landroid/net/Network;

.field private final mUserCallback:Landroid/net/DnsResolver$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$5VB-Tth35PRDrFApa4WONMQE0z8(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/List;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->lambda$onAnswer$0(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Qsf7i7gm3AGdux8yN-HqpADnlc(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->lambda$onAnswer$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$j6EFHRFi3tfq9YV8WQVKHIiEHkA(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->lambda$onError$2(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Network;Landroid/net/DnsResolver$Callback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mNetwork:Landroid/net/Network;

    .line 235
    iput-object p2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    .line 236
    iput-object p3, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private composeSrvRecordResult(Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;,
            Landroid/net/DnsResolver$DnsException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-virtual {p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;->parseSrvRecords()Ljava/util/Map;

    move-result-object p1

    .line 297
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 317
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 318
    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 319
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse$SrvRecord;

    iget v1, v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse$SrvRecord;->port:I

    .line 322
    invoke-direct {p0, v2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->queryDns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 323
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 324
    new-instance v4, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;

    invoke-direct {v4, v3, v1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_4f
    return-object v0
.end method

.method static getInternalExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 227
    sget-object v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$LazyExecutor;->INSTANCE:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private synthetic lambda$onAnswer$0(Ljava/util/List;I)V
    .registers 3

    .line 335
    iget-object p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {p0, p1, p2}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$onAnswer$1()V
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method private synthetic lambda$onError$2(Landroid/net/DnsResolver$DnsException;)V
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {p0, p1}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method private queryDns(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 246
    new-instance v7, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$1;

    invoke-direct {v7, p0, v0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$1;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/concurrent/CompletableFuture;)V

    .line 263
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mNetwork:Landroid/net/Network;

    const/4 v4, 0x0

    new-instance v5, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x0

    move-object v3, p1

    .line 264
    invoke-virtual/range {v1 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 267
    :try_start_1b
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_21} :catch_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    .line 273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 275
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_32

    :catch_2e
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 278
    :goto_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .registers 3

    .line 215
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->onAnswer([BI)V

    return-void
.end method

.method public onAnswer([BI)V
    .registers 5

    .line 333
    :try_start_0
    new-instance v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;-><init>([B)V

    .line 334
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->composeSrvRecordResult(Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;)Ljava/util/List;

    move-result-object p1

    .line 335
    iget-object v0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Lcom/android/net/module/util/DnsPacket$ParseException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Landroid/net/DnsResolver$DnsException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_29

    :catch_14
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "SrvRecordAnswerAccum"

    const-string p2, "Exception occurs, send error to do ARES DNS query once again"

    .line 338
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_29
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .registers 4

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SrvRecordAnswerAccum"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
