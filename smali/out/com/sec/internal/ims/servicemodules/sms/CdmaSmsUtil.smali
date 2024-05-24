.class public Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;
.super Ljava/lang/Object;
.source "CdmaSmsUtil.java"


# static fields
.field public static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARAM_ID_BEARER_DATA:I = 0x8

.field public static final PARAM_ID_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_ID_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ID_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_ID_TELESERVICE:I = 0x0

.field public static final SMS_MSG_TYPE_PP:I = 0x0

.field public static final TELESERVICE_WAP:I = 0x1004


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdminMsg([B)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    .line 221
    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_8

    goto :goto_53

    .line 226
    :cond_8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    :try_start_12
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 231
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-nez v1, :cond_37

    if-nez v2, :cond_37

    .line 233
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_3d
    .catchall {:try_start_12 .. :try_end_28} :catchall_3b

    add-int/2addr v1, v2

    const/16 v2, 0x1004

    if-ne v1, v2, :cond_37

    .line 243
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_35
    const/4 p0, 0x1

    return p0

    .line 243
    :cond_37
    :try_start_37
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_45

    goto :goto_49

    :catchall_3b
    move-exception v0

    goto :goto_4a

    :catch_3d
    move-exception v1

    .line 239
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    .line 243
    :try_start_41
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_49
    return v0

    .line 243
    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    :goto_52
    throw v0

    :cond_53
    :goto_53
    return v0
.end method

.method public static isValid3GPP2PDU([B)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_f7

    .line 30
    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_9

    goto/16 :goto_f7

    .line 35
    :cond_9
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v0

    :cond_14
    const/4 v3, 0x1

    .line 42
    :try_start_15
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_cf

    .line 44
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 45
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-gtz v5, :cond_35

    .line 46
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isValid3GPP2PDU() no data after paramId"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2c} :catch_da
    .catchall {:try_start_15 .. :try_end_2c} :catchall_d8

    .line 91
    :try_start_2c
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_34
    return v0

    .line 49
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 50
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_49

    if-nez v4, :cond_49

    .line 51
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 53
    :cond_49
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-ge v6, v5, :cond_6e

    .line 54
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValid3GPP2PDU() wrong after PARAM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_65} :catch_da
    .catchall {:try_start_35 .. :try_end_65} :catchall_d8

    .line 91
    :try_start_65
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6d
    return v0

    :cond_6e
    const-wide/16 v6, 0x0

    if-eqz v4, :cond_b9

    if-eq v4, v3, :cond_bb

    const/4 v8, 0x2

    if-eq v4, v8, :cond_b6

    if-eq v4, v2, :cond_a4

    const/16 v8, 0x8

    if-eq v4, v8, :cond_a1

    .line 76
    :try_start_7d
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValid3GPP2PDU() Invalid paramID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_98} :catch_da
    .catchall {:try_start_7d .. :try_end_98} :catchall_d8

    .line 91
    :try_start_98
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_a0
    return v0

    :cond_a1
    or-int/lit8 v1, v1, 0x8

    goto :goto_bb

    :cond_a4
    int-to-long v8, v5

    .line 67
    :try_start_a5
    invoke-virtual {p0, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v8
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a9} :catch_da
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_d8

    cmp-long v8, v8, v6

    if-gez v8, :cond_bb

    .line 91
    :try_start_ad
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b5

    :catch_b1
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b5
    return v0

    :cond_b6
    or-int/lit8 v1, v1, 0x2

    goto :goto_bb

    :cond_b9
    or-int/lit8 v1, v1, 0x1

    :cond_bb
    :goto_bb
    if-eq v4, v2, :cond_14

    int-to-long v4, v5

    .line 80
    :try_start_be
    invoke-virtual {p0, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v3
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c2} :catch_da
    .catchall {:try_start_be .. :try_end_c2} :catchall_d8

    cmp-long v3, v3, v6

    if-gez v3, :cond_14

    .line 91
    :try_start_c6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_ce
    return v0

    .line 91
    :cond_cf
    :try_start_cf
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_e1

    :catch_d3
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e1

    :catchall_d8
    move-exception v0

    goto :goto_ee

    :catch_da
    move-exception v2

    .line 87
    :try_start_db
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_d8

    .line 91
    :try_start_de
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_d3

    :goto_e1
    const/16 p0, 0xb

    if-ne v1, p0, :cond_e6

    return v3

    .line 100
    :cond_e6
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValid3GPP2PDU() PDU doesn\'t have mandatory paramId"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 91
    :goto_ee
    :try_start_ee
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_f6

    :catch_f2
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_f6
    throw v0

    :cond_f7
    :goto_f7
    return v0
.end method
