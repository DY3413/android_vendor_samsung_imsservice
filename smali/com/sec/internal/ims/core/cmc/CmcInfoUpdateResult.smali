.class public Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;
.super Ljava/lang/Object;
.source "CmcInfoUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "CmcInfoUpdateResult"


# instance fields
.field private mChangedCmcInfoList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceUpdate:Z

.field private mProfileUpdateReason:Ljava/lang/String;

.field private mProfileUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mProfileUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mChangedCmcInfoList:Ljava/util/Set;

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mProfileUpdateReason:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mForceUpdate:Z

    return-void
.end method


# virtual methods
.method public addChangedCmcInfo(Ljava/lang/String;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mChangedCmcInfoList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearChangedCmcInfoList()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mChangedCmcInfoList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getChangedCmcInfoList()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mChangedCmcInfoList:Ljava/util/Set;

    return-object p0
.end method

.method public getProfileUpdateReason()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mProfileUpdateReason:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileUpdatedResult()Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mProfileUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    return-object p0
.end method

.method public isFailed()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdatedResult()Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotUpdated()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdatedResult()Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdated()Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdatedResult()Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setForceUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mForceUpdate:Z

    return-void
.end method

.method public setProfileUpdateReason(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mProfileUpdateReason:Ljava/lang/String;

    return-void
.end method

.method public setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mForceUpdate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    if-ne p1, v0, :cond_0

    .line 26
    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setProfileUpdatedResult: force update"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mForceUpdate:Z

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->mProfileUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    return-void
.end method
