.class public Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$StoppedState;
.super Lcom/sec/internal/helper/State;
.source "ServiceModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StoppedState"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 300
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method
