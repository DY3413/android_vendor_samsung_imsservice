.class public Lcom/sec/internal/ims/gba/Gba;
.super Ljava/lang/Object;
.source "Gba.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Gba"


# instance fields
.field private gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/gba/Gba;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    .line 29
    iput p1, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    .line 30
    new-instance p1, Lcom/sec/internal/ims/gba/GbaStore;

    invoke-direct {p1}, Lcom/sec/internal/ims/gba/GbaStore;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 138
    :cond_8
    instance-of v2, p1, Lcom/sec/internal/ims/gba/Gba;

    if-nez v2, :cond_d

    return v1

    .line 141
    :cond_d
    check-cast p1, Lcom/sec/internal/ims/gba/Gba;

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-nez p0, :cond_18

    .line 143
    iget-object p0, p1, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-eqz p0, :cond_21

    return v1

    .line 146
    :cond_18
    iget-object p1, p1, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    :cond_21
    return v0
.end method

.method public getGbaValue([B[B)Lcom/sec/internal/ims/gba/GbaValue;
    .registers 4

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object p0

    return-object p0
.end method

.method public getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    if-nez p2, :cond_6

    goto :goto_2b

    .line 79
    :cond_6
    new-instance v1, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 80
    iget-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/gba/GbaStore;->hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z

    move-result p1

    if-nez p1, :cond_14

    return-object v0

    .line 84
    :cond_14
    iget-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/gba/GbaStore;->getKeys(Lcom/sec/internal/ims/gba/Gbakey;)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/sec/internal/ims/gba/GbaValue;->getValidity()Ljava/util/Date;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/gba/Gba;->isKeyExpired(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/gba/GbaStore;->removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V

    return-object v0

    :cond_2a
    return-object p1

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_a
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public isKeyExpired(Ljava/util/Date;)Z
    .registers 11

    .line 98
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz p1, :cond_51

    .line 100
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget v5, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_51

    .line 102
    sget-object v1, Lcom/sec/internal/ims/gba/Gba;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Date and time in GMT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  key life time in GMT: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    .line 103
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_51
    const/4 p0, 0x1

    return p0
.end method

.method public removeGbaKey([B[BI)V
    .registers 5

    if-eqz p1, :cond_18

    if-nez p2, :cond_5

    goto :goto_18

    .line 115
    :cond_5
    new-instance v0, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 116
    iget-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/gba/GbaStore;->hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    .line 119
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/gba/GbaStore;->removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 41
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V
    .registers 10

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    :try_start_b
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception p4

    .line 52
    invoke-virtual {p4}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p4, 0x0

    .line 57
    :goto_17
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/gba/Gba;->isKeyExpired(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 59
    new-instance v0, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v0, p2, p1, p7}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 60
    new-instance p1, Lcom/sec/internal/ims/gba/GbaValue;

    invoke-direct {p1, p3, p4, p5, p6}, Lcom/sec/internal/ims/gba/GbaValue;-><init>([BLjava/util/Date;Ljava/lang/String;Z)V

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/gba/GbaStore;->putKeys(Lcom/sec/internal/ims/gba/Gbakey;Lcom/sec/internal/ims/gba/GbaValue;)V

    :cond_2c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gba [gbaStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
