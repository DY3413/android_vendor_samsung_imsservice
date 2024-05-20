.class Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    const-string p1, "CmcSAManager"

    if-eqz p2, :cond_0

    const-string p2, "access_token"

    .line 141
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "user_id"

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc"

    .line 143
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_server_url"

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth_server_url"

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveAccessToken: Success to get user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Access Token: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " api_server_url: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " auth_server_url: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mcc : "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p0

    invoke-interface {p0, p2, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 153
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-nez p3, :cond_1

    const-string p3, "resultData is null"

    goto/16 :goto_1

    :cond_1
    const-string v0, "error_code"

    .line 158
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    .line 159
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "NETWORK_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "SAC_0501"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "SAC_0402"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "SAC_0301"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p2, "onReceiveAccessToken: SAC_0501 error, Another request is ongoing. Ignore this error"

    .line 166
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    return-void

    .line 163
    :pswitch_1
    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    goto :goto_1

    .line 171
    :pswitch_2
    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    .line 175
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveAccessToken: Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p0

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6be36672 -> :sswitch_3
        -0x6be362b0 -> :sswitch_2
        -0x6be35ef0 -> :sswitch_1
        -0x34711f89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
