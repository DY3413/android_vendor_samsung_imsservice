.class public Lcom/sec/internal/ims/config/util/TelephonySupport;
.super Ljava/lang/Object;
.source "TelephonySupport.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelephonySupport"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;
    .registers 9

    .line 28
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_87

    const/4 v1, 0x0

    .line 31
    :try_start_8
    aget-byte v2, p0, v1

    const/16 v3, -0x25

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v3, :cond_4f

    .line 32
    sget-object v2, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    const-string v3, "calculateAkaResponse: in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    aget-byte v2, p0, v4

    if-lez v2, :cond_21

    .line 52
    new-array v3, v2, [B
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_67

    .line 53
    :try_start_1d
    invoke-static {p0, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_22

    :cond_21
    move-object v3, v0

    :goto_22
    add-int/lit8 v4, v2, 0x2

    .line 56
    aget-byte v4, p0, v4

    if-lez v4, :cond_30

    .line 58
    new-array v5, v4, [B
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_4b

    add-int/lit8 v6, v2, 0x3

    .line 59
    :try_start_2c
    invoke-static {p0, v6, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31

    :cond_30
    move-object v5, v0

    :goto_31
    add-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v4

    .line 61
    aget-byte v6, p0, v6

    if-lez v6, :cond_44

    .line 63
    new-array v7, v6, [B
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_47

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    .line 64
    :try_start_3d
    invoke-static {p0, v2, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    move-object v1, v0

    goto :goto_6c

    :cond_44
    move-object v7, v0

    :goto_45
    move-object p0, v0

    goto :goto_8b

    :catch_47
    move-exception p0

    move-object v1, v0

    move-object v7, v1

    goto :goto_6c

    :catch_4b
    move-exception p0

    move-object v1, v0

    move-object v5, v1

    goto :goto_6b

    :cond_4f
    const/16 v3, -0x24

    if-ne v2, v3, :cond_87

    .line 82
    :try_start_53
    aget-byte v2, p0, v4

    if-lez v2, :cond_87

    .line 84
    new-array v3, v2, [B
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_67

    .line 85
    :try_start_59
    invoke-static {p0, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_61

    move-object v5, v0

    move-object v7, v5

    move-object p0, v3

    move-object v3, v7

    goto :goto_8b

    :catch_61
    move-exception p0

    move-object v5, v0

    move-object v7, v5

    move-object v1, v3

    move-object v3, v7

    goto :goto_6c

    :catch_67
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    move-object v5, v3

    :goto_6b
    move-object v7, v5

    .line 89
    :goto_6c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    sget-object v2, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error2:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    goto :goto_8b

    :cond_87
    move-object p0, v0

    move-object v3, p0

    move-object v5, v3

    move-object v7, v5

    :goto_8b
    if-nez v3, :cond_90

    if-nez p0, :cond_90

    goto :goto_95

    .line 94
    :cond_90
    new-instance v0, Lcom/sec/internal/ims/config/util/AkaResponse;

    invoke-direct {v0, v5, v7, p0, v3}, Lcom/sec/internal/ims/config/util/AkaResponse;-><init>([B[B[B[B)V

    :goto_95
    return-object v0
.end method

.method public static buildMainKey(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    .line 98
    invoke-static {p1}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 100
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 101
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object v1

    .line 102
    sget-object v2, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IK :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object p1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CK :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_63

    if-nez p1, :cond_4b

    goto :goto_63

    .line 108
    :cond_4b
    array-length v0, p0

    array-length v2, v1

    add-int/2addr v0, v2

    array-length v2, p1

    add-int/2addr v0, v2

    .line 109
    new-instance v2, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v2, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 110
    invoke-virtual {v2, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 111
    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 112
    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 113
    invoke-virtual {v2}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0

    :cond_63
    :goto_63
    return-object v0
.end method
