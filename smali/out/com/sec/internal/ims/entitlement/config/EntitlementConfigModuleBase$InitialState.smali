.class public Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase$InitialState;
.super Lcom/sec/internal/helper/State;
.source "EntitlementConfigModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InitialState"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method
