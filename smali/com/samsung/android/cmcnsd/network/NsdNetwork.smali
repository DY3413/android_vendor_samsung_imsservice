.class public Lcom/samsung/android/cmcnsd/network/NsdNetwork;
.super Ljava/lang/Object;
.source "NsdNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field public static final USER_BINARY:Z


# instance fields
.field public mAuthenticationToken:Ljava/lang/String;

.field public mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

.field public mHostAddress:Ljava/lang/String;

.field public final mInterfaceNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsConnected:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->TAG:Ljava/lang/String;

    const-string v0, "ro.build.type"

    const-string/jumbo v1, "user"

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->USER_BINARY:Z

    .line 104
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    .line 141
    const-class v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 142
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

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

    .line 70
    instance-of v0, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    iget-boolean v2, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    .line 73
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    .line 74
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    iget-object v2, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 75
    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getAuthenticationToken()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object p0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getInterfaceNameList()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTransport()I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->getTransport()I

    move-result p0

    return p0
.end method

.method public hasTransport(I)Z
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    iget-boolean v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " {isConnected="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress=["

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " infNames="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    sget-boolean v1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->USER_BINARY:Z

    const-string v2, "]}"

    const-string v3, " token=["

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "xxx"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    if-nez p1, :cond_0

    .line 126
    sget-object p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->TAG:Ljava/lang/String;

    const-string p1, "failed to write to Parcel. out is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    iget-object p2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
