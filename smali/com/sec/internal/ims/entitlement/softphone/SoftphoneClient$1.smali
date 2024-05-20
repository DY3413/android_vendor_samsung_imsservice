.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;
.super Landroid/os/Handler;
.source "SoftphoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Looper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 205
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget p1, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 208
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget p1, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget p1, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->connectImsManager(I)V

    .line 215
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleTryRegisterRequest()V

    :cond_3
    :goto_0
    return-void
.end method
