.class public Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorSoftphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WifiEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RegiGvnSoftp"

    const-string v0, "WifiEventReceiver: INTENT_ACTION_WIFI_MODE_CHANGED Received."

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "delayState"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const/16 p2, 0xd

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(I)V

    const-string p0, "WifiEventReceiver: send Deregister message."

    .line 151
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method