.class Lcom/sec/internal/ims/util/HttpAuthGenerator$1;
.super Ljava/lang/Object;
.source "HttpAuthGenerator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/HttpAuthGenerator;->getGbaResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$response:[Ljava/lang/String;

.field final synthetic val$wwwAuthenticateHeader:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$response:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$requestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 7

    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    .line 233
    iget-object p1, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$response:[Ljava/lang/String;

    iget-object p4, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$requestUrl:Ljava/lang/String;

    invoke-static {p5}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$method:Ljava/lang/String;

    invoke-static {p4, p5, v0, p2, p3}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 235
    :cond_17
    iget-object p0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onFail(ILcom/sec/internal/ims/gba/GbaException;)V
    .registers 3

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
