.class Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 455
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "RegiObsMgr"

    const-string v0, "ImsServiceSwitch updated."

    .line 460
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 462
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyImsSettingUpdated(I)V

    :cond_0
    return-void
.end method
