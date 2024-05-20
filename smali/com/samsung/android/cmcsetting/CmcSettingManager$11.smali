.class Lcom/samsung/android/cmcsetting/CmcSettingManager$11;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcMessageActivation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 3176
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3179
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$1000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3180
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$1000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsetting/listeners/CmcMessageActivationInfoChangedListener;

    if-eqz v0, :cond_0

    .line 3182
    invoke-interface {v0}, Lcom/samsung/android/cmcsetting/listeners/CmcMessageActivationInfoChangedListener;->onChangedCmcMessageActivation()V

    goto :goto_0

    :cond_1
    return-void
.end method
