.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
.super Ljava/lang/Object;
.source "NsdNetworkMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEvent:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
