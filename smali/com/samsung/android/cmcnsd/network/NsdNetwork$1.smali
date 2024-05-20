.class public final Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;
.super Ljava/lang/Object;
.source "NsdNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/cmcnsd/network/NsdNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 108
    new-instance p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .locals 0

    .line 113
    new-array p0, p1, [Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;->newArray(I)[Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    move-result-object p0

    return-object p0
.end method
