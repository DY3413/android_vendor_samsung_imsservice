.class Lcom/sec/internal/ims/core/ImsIconManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1164
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

    .line 1165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1166
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    .line 1167
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v3, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "hide_vowifi_icon_when_cs_call"

    .line 1168
    invoke-static {v0, v3, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 1169
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1170
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "Silent Redial Enabled"

    invoke-static {p1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1171
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    if-le p1, v1, :cond_1

    const/4 p1, -0x1

    const-string v0, "SLOTID"

    .line 1172
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-ne p2, p1, :cond_3

    .line 1174
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 1175
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    goto :goto_0

    .line 1178
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 1179
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 1182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1183
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1185
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1186
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget p2, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    if-eq p2, p1, :cond_3

    .line 1187
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "config is changed. update icon"

    invoke-static {p2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1188
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput-boolean v1, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    .line 1189
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1190
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    .line 1191
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    :cond_3
    :goto_0
    return-void
.end method
