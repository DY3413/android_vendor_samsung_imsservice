.class Lcom/sec/internal/ims/core/GeoLocationUtility;
.super Ljava/lang/Object;
.source "GeoLocationUtility.java"


# static fields
.field private static final ATT_SCC_E911_MAX_LOCATIONFIX_ACCURACY:F = 150.0f

.field private static final ATT_SCC_E911_MAX_LOCATIONFIX_AGE:J = 0x708L

.field private static final LOG_TAG:Ljava/lang/String; = "GeoLocationUtility"

.field private static mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static constructData(Landroid/location/Location;Ljava/lang/String;Landroid/content/Context;ZI)Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 15

    move-object/from16 v0, p1

    .line 79
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const-string v5, "N"

    goto :goto_0

    :cond_0
    const-string v5, "S"

    .line 81
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-static {v1, v2, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v3, v8, v3

    if-lez v3, :cond_1

    const-string v3, "E"

    goto :goto_1

    :cond_1
    const-string v3, "W"

    .line 85
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/16 v6, 0x5a

    move/from16 v7, p4

    if-ne v7, v6, :cond_2

    float-to-double v6, v4

    const-wide v10, 0x3ffa666666666666L    # 1.65

    mul-double/2addr v6, v10

    double-to-float v4, v6

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    .line 93
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v10

    .line 94
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v11

    .line 96
    sget-object v12, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "constructData: providerType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " slatitude="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " slongitude="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " accuracy "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " verticalAxis "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " orientation "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " locationtime "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    const/16 v5, 0x154

    .line 106
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v13

    .line 107
    invoke-virtual {v13, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 108
    invoke-virtual {v13, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 110
    new-instance v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/gls/LocationInfo;-><init>()V

    .line 112
    invoke-virtual {v13, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    .line 113
    invoke-virtual {v13, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v5, v14

    const-string v13, "%.1f"

    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    .line 115
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    .line 116
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mVerticalAxis:Ljava/lang/String;

    .line 117
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOrientation:Ljava/lang/String;

    .line 118
    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/GeoLocationUtility;->getInternetDateTimeFormat(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    const-string/jumbo v0, "urn:ogc:def:crs:EPSG::4326"

    .line 120
    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    const-string/jumbo v0, "urn:ogc:def:uom:EPSG::9001"

    .line 121
    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    .line 123
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "urn:uuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 132
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-direct {v0, v5, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v4, 0x0

    .line 135
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    invoke-static {v1, v2, v8, v9, v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->getAddressUsingGeocoder(DDLandroid/location/Geocoder;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v0, "geocoder is not created"

    .line 138
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v4, :cond_8

    .line 141
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 142
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 143
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    iput-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 147
    :cond_5
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    .line 148
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 149
    :cond_6
    invoke-virtual {v0}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    .line 152
    iget-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    const-string v1, "GU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "us"

    .line 154
    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const-string v0, "Not fetching address from GeoCoder for VZW as its not required for 911 call"

    .line 158
    invoke-static {v12, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_8
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructData getAddressUsingGeocoder: mCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mA1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mA3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mA6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHNO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ","

    const-string v2, "."

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    .line 170
    iget-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    .line 173
    :cond_9
    invoke-static {v3}, Lcom/sec/internal/ims/core/GeoLocationUtility;->updateLocationInfo(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    return-object v3
.end method

.method static constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 5

    .line 50
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructData, countryIso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object p0, Lcom/sec/internal/ims/core/GeoLocationUtility;->mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    return-object p0

    .line 60
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/gls/LocationInfo;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    .line 65
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/GeoLocationUtility;->getInternetDateTimeFormat(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    const-string/jumbo p1, "urn:ogc:def:crs:EPSG::4326"

    .line 66
    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    const-string/jumbo p1, "urn:ogc:def:uom:EPSG::9001"

    .line 67
    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    const-wide/16 v3, 0x3e8

    .line 69
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:uuid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    .line 71
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->updateLocationInfo(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    return-object v0
.end method

.method static getAddressUsingGeocoder(DDLandroid/location/Geocoder;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Landroid/location/Geocoder;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p4

    move-wide v1, p0

    move-wide v3, p2

    .line 204
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    sget-object p1, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAddressUsingGeocoder: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getInternetDateTimeFormat(J)Ljava/lang/String;
    .locals 10

    const-string v0, "UTC"

    .line 181
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p0, 0x18

    const/16 p1, 0xb

    .line 186
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x1

    .line 188
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p0

    const/4 v4, 0x5

    .line 190
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 191
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v6, 0xc

    .line 192
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xd

    .line 193
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xe

    .line 194
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v2

    const/4 p0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, p0

    const/4 p0, 0x4

    const-string p1, ":"

    aput-object p1, v8, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v4

    const/4 p0, 0x6

    aput-object p1, v8, p0

    const/4 p0, 0x7

    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, p0

    const/16 p0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, p0

    const-string p0, "%2d-%02d-%02dT%02d%s%02d%s%02d.%02dZ"

    .line 196
    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLocationValid(Landroid/location/Location;)Z
    .locals 5

    .line 212
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x708

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 213
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid location time expired location.time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " current time = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v2, 0x43160000    # 150.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 217
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location received is not valid, hence not notifying acc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static declared-synchronized updateLocationInfo(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 1

    const-class v0, Lcom/sec/internal/ims/core/GeoLocationUtility;

    monitor-enter v0

    .line 46
    :try_start_0
    sput-object p0, Lcom/sec/internal/ims/core/GeoLocationUtility;->mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
