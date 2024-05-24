.class public Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
.super Ljava/lang/Object;
.source "ServiceEntitlement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-id"
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display-name"
    .end annotation
.end field

.field public entitlementStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entitlement-status"
    .end annotation
.end field

.field public managementWebsheet:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "management-websheet"
    .end annotation
.end field

.field public onDemandProv:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "on-demand-prov"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field

.field public visible:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field

.field public websheetPreActivation:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "websheet-pre-activation"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1b

    move-object v0, v3

    goto :goto_24

    :cond_1b
    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 35
    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->clientId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->displayName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_3a

    move-object v0, v3

    goto :goto_43

    :cond_3a
    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 39
    :goto_3f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_43
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->visible:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_4d

    move-object v0, v3

    goto :goto_56

    :cond_4d
    if-eqz v0, :cond_51

    move v0, v1

    goto :goto_52

    :cond_51
    move v0, v2

    .line 41
    :goto_52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_56
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->websheetPreActivation:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v4, :cond_5f

    goto :goto_67

    :cond_5f
    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v1, v2

    .line 43
    :goto_63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_67
    iput-object v3, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->managementWebsheet:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 53
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    const/4 v0, 0x2

    if-nez p2, :cond_13

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1b

    .line 58
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    :goto_1b
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->clientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->visible:Ljava/lang/Boolean;

    if-nez p2, :cond_2d

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_35

    .line 65
    :cond_2d
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    :goto_35
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->websheetPreActivation:Ljava/lang/Boolean;

    if-nez p2, :cond_3d

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_45

    .line 70
    :cond_3d
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    :goto_45
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->managementWebsheet:Ljava/lang/Boolean;

    if-nez p0, :cond_4d

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_55

    .line 75
    :cond_4d
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_55
    return-void
.end method
