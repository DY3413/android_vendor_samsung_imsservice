.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;
.super Ljava/lang/Object;
.source "SoftphoneClient.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->connectImsManager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;I)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iput p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Connected to ImsService."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->val$phoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManagers:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->val$phoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->val$phoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleTryRegisterRequest()V

    :cond_1
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Disconnected from ImsService."

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method
