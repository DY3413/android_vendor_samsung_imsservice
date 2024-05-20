.class public abstract Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
.super Landroid/os/Handler;
.source "EntitlementConfigModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$RunningState;,
        Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$ReadyState;,
        Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$InitialState;
    }
.end annotation


# instance fields
.field mState:Lcom/sec/internal/helper/State;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$InitialState;

    invoke-direct {p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$InitialState;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->mState:Lcom/sec/internal/helper/State;

    return-void
.end method

.method private updateState(Lcom/sec/internal/helper/State;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->mState:Lcom/sec/internal/helper/State;

    if-ne v0, p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->exit()V

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->mState:Lcom/sec/internal/helper/State;

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->enter()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    return-void
.end method

.method public forceConfigUpdate()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 1

    .line 17
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$ReadyState;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$ReadyState;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->updateState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method public onDeviceReady()V
    .locals 0

    return-void
.end method

.method public onSimReady(Z)V
    .locals 0

    return-void
.end method

.method public retriveAkaToken()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 21
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$RunningState;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$RunningState;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->updateState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 0

    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 0

    return-void
.end method
