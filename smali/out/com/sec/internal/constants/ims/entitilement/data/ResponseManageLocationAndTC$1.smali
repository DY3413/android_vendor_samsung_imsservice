.class Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC$1;
.super Ljava/lang/Object;
.source "ResponseManageLocationAndTC.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    .registers 2

    .line 74
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    .registers 2

    .line 79
    new-array p0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    move-result-object p0

    return-object p0
.end method