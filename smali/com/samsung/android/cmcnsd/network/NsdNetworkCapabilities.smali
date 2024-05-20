.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
.super Ljava/lang/Object;
.source "NsdNetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCapabilities:I

.field public mTransport:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    .line 33
    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 72
    instance-of v0, p1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 74
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    iget v2, p1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    iget p1, p1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCapabilities()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return p0
.end method

.method public getTransport()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    return p0
.end method

.method public hasCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 57
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->getTransport()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->getCapabilities()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTransport(I)Z
    .locals 1

    .line 45
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    iget v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    iget p2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
