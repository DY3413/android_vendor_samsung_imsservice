.class Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;
.super Ljava/lang/Object;
.source "SmsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .registers 2

    .line 269
    new-instance p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .registers 2

    .line 274
    new-array p0, p1, [Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;->newArray(I)[Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object p0

    return-object p0
.end method
