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
    .locals 0

    .line 217
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
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 221
    iget-object p1, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$response:[Ljava/lang/String;

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$requestUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$method:Ljava/lang/String;

    invoke-static {p5, v0, v1, p2, p3}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onFail(ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
