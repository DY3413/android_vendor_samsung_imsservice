.class Lcom/samsung/android/cmcsetting/CmcSettingManager$16;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 2

    .line 3165
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 3168
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$1500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3169
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$1500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;

    if-eqz v0, :cond_12

    .line 3171
    invoke-interface {v0}, Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;->onChangedDeviceInfo()V

    goto :goto_12

    :cond_24
    return-void
.end method
