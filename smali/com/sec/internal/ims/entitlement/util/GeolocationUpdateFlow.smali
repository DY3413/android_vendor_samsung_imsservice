.class public Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
.super Landroid/os/Handler;
.source "GeolocationUpdateFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;,
        Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;,
        Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;
    }
.end annotation


# static fields
.field private static final EVENT_LOCATION_UPDATED:I = 0x3

.field private static final EVENT_LOCATION_UPDATE_TIMEOUT:I = 0x1

.field private static final EVENT_STOP_LOCATION_UPDATE:I = 0x2

.field private static final GPS_LOCATION_REQUEST_TIMEOUT:I = 0xafc8

.field public static final GPS_ONLY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NLP_AND_GPS:I = 0x3

.field public static final NLP_ONLY:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

.field private mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

.field private mStatus:I

.field private mUserLocationMode:I

.field private mUserLocationProvider:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$menforceLocationSettings(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->enforceLocationSettings(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastKnownGPSLocation(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getLastKnownGPSLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastKnownNLPLocation(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getLastKnownNLPLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUserLocationSettings(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getUserLocationSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestLocationUpdates(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestLocationUpdates(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "location"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    new-instance p1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    .line 73
    new-instance p1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    return-void
.end method

.method private enforceLocationSettings(I)V
    .locals 3

    .line 112
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceLocationSettings(): provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "location_providers_allowed"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const-string v1, "network,gps"

    if-eq p1, v2, :cond_0

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 123
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "gps"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 118
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "network"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private getLastKnownGPSLocation()V
    .locals 3

    .line 235
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownGPSLocation"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "getLastKnownGPSLocation(): No Last Known Location Available"

    .line 239
    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 242
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    return-void
.end method

.method private getLastKnownNLPLocation()V
    .locals 3

    .line 247
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownNLPLocation"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "getLastKnownNLPLocation(): No Last Known Location Available"

    .line 252
    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 255
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    return-void
.end method

.method private getUserLocationSettings()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUserLocationProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestLocationUpdates(III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 183
    sget-object v4, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLocationUpdates(): updateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", accuracy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "requestLocationUpdates(): NLP enabled"

    const/4 v6, 0x1

    const/4 v7, 0x3

    const-string v8, "network"

    if-eqz v3, :cond_4

    const-string v9, "requestLocationUpdates(): GPS enabled"

    const-string v10, "gps"

    if-eq v3, v6, :cond_2

    .line 210
    :try_start_0
    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 211
    invoke-virtual {v3, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "requestLocationUpdates(): providers are all disabled"

    .line 212
    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 216
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v11, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v12, "network"

    int-to-long v13, v0

    int-to-float v15, v2

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 220
    :cond_1
    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 221
    invoke-static {v4, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v10, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v11, "gps"

    int-to-long v12, v0

    int-to-float v14, v2

    iget-object v15, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual/range {v10 .. v15}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    invoke-static {v4, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v10, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v11, "gps"

    int-to-long v12, v0

    int-to-float v14, v2

    iget-object v15, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual/range {v10 .. v15}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    :cond_3
    const-string v0, "requestLocationUpdates(): GPS disabled"

    .line 203
    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 189
    :cond_4
    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v9, "network"

    int-to-long v10, v0

    int-to-float v12, v2

    iget-object v13, v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    :cond_5
    const-string v0, "requestLocationUpdates(): NLP disabled"

    .line 193
    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 227
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_6
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requestLocation(): location req timeout = 45000"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private restoreUserLocationSettings()V
    .locals 3

    .line 150
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUserLocationProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private startGeolocationUpdate(III)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopGeolocationUpdate()V
    .locals 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;
    .locals 8

    .line 260
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Geocoder is not present."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 265
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Location is null."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 269
    :cond_1
    new-instance v2, Landroid/location/Geocoder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 275
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    .line 273
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", Longitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 290
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    return-object p0

    .line 287
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No address is found."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 79
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    check-cast p1, Landroid/location/Address;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 94
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public requestGeolocationUpdate(IIILcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V
    .locals 3

    .line 102
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGeolocationUpdate(): mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    if-nez v0, :cond_0

    .line 107
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->startGeolocationUpdate(III)V

    return-void

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Flow has already been started."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
