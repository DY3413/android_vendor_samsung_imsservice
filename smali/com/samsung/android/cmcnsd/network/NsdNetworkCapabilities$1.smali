.class public final Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;
.super Ljava/lang/Object;
.source "NsdNetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 1

    .line 93
    new-instance p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;-><init>(Landroid/os/Parcel;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 0

    .line 98
    new-array p0, p1, [Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;->newArray(I)[Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object p0

    return-object p0
.end method