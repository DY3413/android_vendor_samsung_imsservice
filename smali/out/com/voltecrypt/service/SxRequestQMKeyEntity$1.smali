.class Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;
.super Ljava/lang/Object;
.source "SxRequestQMKeyEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/SxRequestQMKeyEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/voltecrypt/service/SxRequestQMKeyEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestQMKeyEntity;
    .registers 2

    .line 127
    new-instance p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    invoke-direct {p0, p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/voltecrypt/service/SxRequestQMKeyEntity;
    .registers 2

    .line 136
    new-array p0, p1, [Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;->newArray(I)[Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    move-result-object p0

    return-object p0
.end method
