.class public Lcom/sec/internal/ims/cmstore/RetryMapAdapterHelper;
.super Ljava/lang/Object;
.source "RetryMapAdapterHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "RetryMapAdapterHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public clearRetryHistory()V
    .registers 2

    .line 42
    sget-object p0, Lcom/sec/internal/ims/cmstore/RetryMapAdapterHelper;->TAG:Ljava/lang/String;

    const-string v0, "Special Helper Clear History"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isRetryTimesFinished()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .registers 5

    .line 0
    return-void
.end method

.method public retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public saveRetryLastFailedTime(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public searchAndPush(Landroid/util/Pair;ILcom/sec/internal/ims/cmstore/MessageStoreClient;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;I",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ")Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
