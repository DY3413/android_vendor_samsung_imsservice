.class Lcom/voltecrypt/service/SxRequestAuthenticationEntity$1;
.super Ljava/lang/Object;
.source "SxRequestAuthenticationEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/SxRequestAuthenticationEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/voltecrypt/service/SxRequestAuthenticationEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestAuthenticationEntity;
    .registers 2

    .line 88
    new-instance p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    invoke-direct {p0, p1}, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestAuthenticationEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/voltecrypt/service/SxRequestAuthenticationEntity;
    .registers 2

    .line 97
    new-array p0, p1, [Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestAuthenticationEntity$1;->newArray(I)[Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    move-result-object p0

    return-object p0
.end method
