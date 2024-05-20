.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;
.super Landroid/database/ContentObserver;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1147
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirplaneModeObserver onChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UtServiceModule"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 1151
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v2, :cond_1

    .line 1152
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1153
    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo()V

    .line 1160
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->onAirplaneModeChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
