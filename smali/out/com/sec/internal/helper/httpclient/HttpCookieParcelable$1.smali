.class Lcom/sec/internal/helper/httpclient/HttpCookieParcelable$1;
.super Ljava/lang/Object;
.source "HttpCookieParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;
    .registers 2

    .line 64
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;
    .registers 2

    .line 59
    new-array p0, p1, [Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpCookieParcelable$1;->newArray(I)[Lcom/sec/internal/helper/httpclient/HttpCookieParcelable;

    move-result-object p0

    return-object p0
.end method
