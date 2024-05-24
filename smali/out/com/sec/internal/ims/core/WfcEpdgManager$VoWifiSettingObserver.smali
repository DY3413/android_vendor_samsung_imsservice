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
    .registers 3

    .line 1029
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 1030
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 1043
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1044
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

    .line 1047
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wifi_call_enable"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x4

    if-eqz p2, :cond_40

    .line 1048
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_7b

    .line 1049
    :cond_40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 1050
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_7b

    :cond_5c
    const-string p2, "data_preferred_mode_during_calling"

    .line 1051
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 1052
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_7b

    :cond_6c
    const-string p2, "mobile_data"

    .line 1053
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 1054
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_7b
    :goto_7b
    return-void
.end method
