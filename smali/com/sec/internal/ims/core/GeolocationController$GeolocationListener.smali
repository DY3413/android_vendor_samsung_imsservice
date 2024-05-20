.class Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;
.super Ljava/lang/Object;
.source "GeolocationController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/GeolocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeolocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged : location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/GeolocationController;)I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocation(ILandroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "onLocationChanged : removing location listener"

    .line 667
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x30000035

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocation(Landroid/location/Location;)V

    .line 670
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLocationChanged ex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
