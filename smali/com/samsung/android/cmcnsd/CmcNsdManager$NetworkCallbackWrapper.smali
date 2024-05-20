.class public Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;
.super Ljava/lang/Object;
.source "CmcNsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/CmcNsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

.field public final mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 236
    iput-object p2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->mCallback:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 246
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->mCallback:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    return-object p0
.end method

.method public getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 241
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->mCallback:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
