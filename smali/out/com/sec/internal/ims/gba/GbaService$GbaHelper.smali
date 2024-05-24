.class Lcom/sec/internal/ims/gba/GbaService$GbaHelper;
.super Ljava/lang/Object;
.source "GbaService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/gba/GbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/gba/GbaService;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/gba/GbaService;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/gba/GbaService;Lcom/sec/internal/ims/gba/GbaService$GbaHelper-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;-><init>(Lcom/sec/internal/ims/gba/GbaService;)V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 7

    .line 58
    invoke-static {}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authenticationRequest : onComplete "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p4, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p4}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p4

    monitor-enter p4

    .line 62
    :try_start_1f
    iget-object p5, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p5}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_59

    .line 63
    iget-object p5, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p5}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/Pair;

    iget-object p5, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    const/4 p5, 0x0

    .line 67
    :goto_5b
    monitor-exit p4
    :try_end_5c
    .catchall {:try_start_1f .. :try_end_5c} :catchall_67

    if-eqz v0, :cond_66

    const/4 p0, 0x2

    .line 70
    :try_start_5f
    invoke-static {p3, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-interface {v0, p5, p0, p2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onKeysAvailable(I[BLjava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_66

    :catch_66
    :cond_66
    return-void

    :catchall_67
    move-exception p0

    .line 67
    :try_start_68
    monitor-exit p4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public onFail(ILcom/sec/internal/ims/gba/GbaException;)V
    .registers 6

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticationRequest : onFail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_1f
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 84
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v2}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_5b

    :cond_59
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_1f .. :try_end_5c} :catchall_66

    if-eqz v2, :cond_65

    .line 91
    :try_start_5e
    invoke-virtual {p2}, Lcom/sec/internal/ims/gba/GbaException;->getCode()I

    move-result p0

    invoke-interface {v2, v1, p0}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_65} :catch_65

    :catch_65
    :cond_65
    return-void

    :catchall_66
    move-exception p0

    .line 88
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method
