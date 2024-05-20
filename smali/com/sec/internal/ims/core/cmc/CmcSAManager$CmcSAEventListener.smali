.class public interface abstract Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;
.super Ljava/lang/Object;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CmcSAEventListener"
.end annotation


# virtual methods
.method public abstract onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
.end method

.method public abstract onSARequested()V
.end method

.method public abstract onSAServiceBindResult(ZZ)V
.end method

.method public abstract onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V
.end method
