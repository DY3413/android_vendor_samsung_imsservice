.class Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;
.super Landroid/database/ContentObserver;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoWifiSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/os/Handler;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 1035
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1040
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1048
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1049
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On SETTING Changed, key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 1053
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1055
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    :cond_2
    const-string p2, "data_preferred_mode_during_calling"

    .line 1056
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1057
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string p2, "mobile_data"

    .line 1058
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1059
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_4
    :goto_0
    return-void
.end method