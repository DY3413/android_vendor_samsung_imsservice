.class public Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;
.super Ljava/lang/Object;
.source "TimeBasedUuidGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimeBasedUuidGenerator"

.field protected static final SHAREDPREF_INSTANCE_ID_UUID_KEY:Ljava/lang/String; = "instanceIdUuid"

.field protected static final UUID_CORE_PATTERN:Ljava/lang/String; = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"

.field protected static final UUID_PURE_PATTERN:Ljava/util/regex/Pattern;

.field private static final UUID_STRIP:Ljava/util/regex/Pattern;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_PURE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(<)|(urn:uuid:)|(>)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_STRIP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    .line 86
    iput-object p2, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private compute100nsTimestamp()J
    .locals 5

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    .line 151
    sget-object p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compute100nsTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0x1b21dd213814000L

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private generate()Ljava/lang/String;
    .locals 7

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->compute100nsTimestamp()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->randSeq()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->getWifiMacAddr()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->generate(JJJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWifiMacAddr()J
    .locals 3

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "000000000000"

    .line 134
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiMacAddr: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private obtainUuid()Ljava/lang/String;
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getUuid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_STRIP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectUuidInstanceId from config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->UUID_PURE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->AUTOCONFIG:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    iput-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    return-object v0

    .line 212
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    const-string v4, "ims_user_data"

    const-string v5, "instanceIdUuid"

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectUuidInstanceId from sharedPref: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->SHAREDPREFS:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    iput-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    return-object v0

    :cond_1
    const-string v0, "selectUuidInstanceId from sharedPref Empty"

    .line 222
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->generate()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectUuidInstanceId from Generator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->GENERATOR:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    iput-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    return-object v0
.end method

.method private randSeq()J
    .locals 5

    .line 159
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 161
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x1

    aget-byte p0, v0, p0

    int-to-long v1, p0

    const-wide/16 v3, 0x100

    mul-long/2addr v1, v3

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3fff

    and-long v0, v1, v3

    return-wide v0
.end method


# virtual methods
.method protected generate(JJJ)Ljava/lang/String;
    .locals 6

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    const-wide v2, 0xffff00000000L

    and-long/2addr v2, p1

    const/16 p0, 0x20

    ushr-long/2addr v2, p0

    const-wide/high16 v4, 0xfff000000000000L

    and-long/2addr p1, v4

    const/16 v4, 0x30

    ushr-long/2addr p1, v4

    shl-long/2addr v0, p0

    const/16 p0, 0x10

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    or-long p0, v0, p1

    shl-long p2, p3, v4

    const-wide/high16 v0, -0x8000000000000000L

    or-long/2addr p2, v0

    or-long/2addr p2, p5

    .line 118
    new-instance p4, Ljava/util/UUID;

    invoke-direct {p4, p0, p1, p2, p3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUuidInstanceId()Ljava/lang/String;
    .locals 4

    .line 175
    invoke-direct {p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->obtainUuid()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mUuidSource:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    sget-object v2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->GENERATOR:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    if-ne v1, v2, :cond_0

    .line 181
    iget v1, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->mContext:Landroid/content/Context;

    const-string v2, "ims_user_data"

    const-string v3, "instanceIdUuid"

    invoke-static {v1, p0, v2, v3, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<urn:uuid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
