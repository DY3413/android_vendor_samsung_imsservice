.class abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IWorkflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "State"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .line 0
    return-void
.end method

.method public closeStorage()V
    .registers 1

    .line 0
    return-void
.end method

.method public forceAutoConfig(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public getStorage()Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMSISDNDialog()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startAutoConfig(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public startAutoConfigDualsim(Z)V
    .registers 2

    .line 0
    return-void
.end method
