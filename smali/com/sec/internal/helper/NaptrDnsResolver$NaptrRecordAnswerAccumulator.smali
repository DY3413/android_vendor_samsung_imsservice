.class public Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;
.super Ljava/lang/Object;
.source "NaptrDnsResolver.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/NaptrDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NaptrRecordAnswerAccumulator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$LazyExecutor;
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
.field private static final TAG:Ljava/lang/String; = "NaptrRecordAnswerAccum"


# instance fields
.field private final mTransport:Ljava/lang/String;

.field private final mUserCallback:Landroid/net/DnsResolver$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$B1o_EHGGympgu69AHmdHhpG3xS4(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->lambda$onError$2(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rd07mTls0bEj83WcYRfrs3ToJLA(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->lambda$onAnswer$0(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WlH_0-tYaXsn9z0tP_NbB1kv5_c(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->lambda$onAnswer$1()V

    return-void
.end method

.method public constructor <init>(Landroid/net/DnsResolver$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    .line 243
    iput-object p2, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    .line 244
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "UDP"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p1, "TLS"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string p1, "TCP"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    .line 255
    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mTransport:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const-string p1, "SIP+D2U"

    .line 246
    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mTransport:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string p1, "SIPS+D2T"

    .line 252
    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mTransport:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string p1, "SIP+D2T"

    .line 249
    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mTransport:Ljava/lang/String;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x143c1 -> :sswitch_2
        0x144db -> :sswitch_1
        0x147a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private composeNaptrRecordResult(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 263
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;

    .line 264
    iget-object v2, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mTransport:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    new-instance v2, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;

    iget-object v3, v1, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->replacement:Ljava/lang/String;

    .line 266
    invoke-virtual {v1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->getTypeFromFlagString()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;-><init>(Ljava/lang/String;I)V

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static getInternalExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 236
    sget-object v0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$LazyExecutor;->INSTANCE:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private synthetic lambda$onAnswer$0(Ljava/util/List;I)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {p0, p1, p2}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$onAnswer$1()V
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method private synthetic lambda$onError$2(Landroid/net/DnsResolver$DnsException;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {p0, p1}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0

    .line 224
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->onAnswer([BI)V

    return-void
.end method

.method public onAnswer([BI)V
    .locals 2

    .line 275
    :try_start_0
    new-instance v0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse;-><init>([B)V

    .line 277
    invoke-virtual {v0}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse;->parseNaptrRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->composeNaptrRecordResult(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/android/net/module/util/DnsPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NaptrRecordAnswerAccum"

    const-string p2, "Exception occurs, send error to do ARES DNS query once again"

    .line 280
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NaptrRecordAnswerAccum"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
