.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
.super Ljava/lang/Object;
.source "NsdNetworkCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method public onConnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 0

    return-void
.end method

.method public onDisconnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 0

    return-void
.end method

.method public onNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clazz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
