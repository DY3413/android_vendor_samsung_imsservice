.class public final Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;
.super Ljava/lang/Object;
.source "NsdNetworkMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .locals 1

    .line 32
    new-instance p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;-><init>(Landroid/os/Parcel;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .locals 0

    .line 37
    new-array p0, p1, [Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;->newArray(I)[Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    move-result-object p0

    return-object p0
.end method
