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
    .registers 3

    .line 201
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 204
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 205
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    goto :goto_42

    .line 207
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget p1, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_42

    .line 208
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 210
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleTryRegisterRequest()V

    :cond_42
    :goto_42
    return-void
.end method
