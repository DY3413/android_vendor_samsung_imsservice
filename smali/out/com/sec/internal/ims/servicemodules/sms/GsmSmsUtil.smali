.class public Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;
.super Ljava/lang/Object;
.source "GsmSmsUtil.java"


# static fields
.field public static final BIT_TP_DCS_CLASS2_SIM_MSG:I = 0x2

.field public static final BIT_TP_PID_SIM_DATA_DOWNLOAD:I = 0x3f

.field public static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final IPC_ERR_MEM_CAP_EXCEED:I = 0x8016

.field private static final IPC_ERR_SMS_ME_FULL:I = 0x8080

.field private static final IPC_ERR_SMS_SIM_FULL:I = 0x8081

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_DATA_LEN:I = 0xff

.field private static final NANP_LENGTH:I = 0xa

.field private static final PREFIX_NUMBER_PLUS:Ljava/lang/String; = "011"

.field public static final RIL_CODE_RP_ERROR:I = 0x8000

.field public static final RIL_CODE_SMS_OK_:I = 0x0

.field public static final RP_ACK_N_MS:I = 0x3

.field public static final RP_DATA_MS_N:I = 0x0

.field public static final RP_DATA_N_MS:I = 0x1

.field public static final RP_ERROR_N_MS:I = 0x5

.field public static final RP_ERR_INVALID_MSG:I = 0x5f

.field public static final RP_SMMA:I = 0x6

.field public static final TP_PID_SIM_DATA_DOWNLOAD:I = 0x7f


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3gppPduFromTpdu([BILjava/lang/String;Ljava/lang/String;)[B
    .registers 11

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 61
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    .line 66
    :try_start_17
    aget-byte v4, p0, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 67
    new-array v6, v4, [B

    .line 69
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-lt v6, v4, :cond_83

    .line 74
    array-length p0, p0

    sub-int/2addr p0, v4

    new-array v4, p0, [B

    .line 76
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_7b

    int-to-byte p0, p0

    .line 82
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 83
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 86
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_4b

    .line 88
    :cond_3e
    invoke-static {p3, v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_72

    .line 92
    array-length p3, p1

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 93
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 96
    :goto_4b
    invoke-static {p2, v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_69

    .line 100
    array-length p2, p1

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 101
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 103
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 106
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 98
    :cond_69
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "smsc is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_72
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "rp_oa is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_7b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Exception : Fail to Read TPDU from PDU"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_83
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Exception : Fail to Read Sca from PDU"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception p0

    .line 111
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 112
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    :goto_97
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static get3gppRPError(Ljava/lang/String;[B)I
    .registers 4

    if-eqz p0, :cond_1e

    const-string v0, "application/vnd.3gpp.sms"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_11

    goto :goto_1e

    :cond_11
    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 145
    aget-byte v1, p1, v0

    if-ne p0, v1, :cond_1d

    const/4 p0, 0x3

    .line 146
    aget-byte p0, p1, p0

    and-int/lit8 p0, p0, 0x7f

    return p0

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    const/4 p0, -0x1

    return p0
.end method

.method private static get3gppTpdu([B)[B
    .registers 10

    .line 186
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 187
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 194
    :try_start_18
    aget-byte p0, p0, v3

    const/4 v6, 0x3

    if-ne v6, p0, :cond_60

    .line 199
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 200
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 201
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 202
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    .line 204
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_2f} :catch_177
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_16c
    .catchall {:try_start_18 .. :try_end_2f} :catchall_16a

    if-ge v1, p0, :cond_3d

    .line 313
    :try_start_31
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3c
    return-object v5

    .line 209
    :cond_3d
    :try_start_3d
    new-array p0, p0, [B

    .line 211
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_58

    .line 215
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 217
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_4c} :catch_177
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4c} :catch_16c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_16a

    .line 313
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_57
    return-object p0

    .line 213
    :cond_58
    :try_start_58
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Fail to read TPDU from PDU"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    const/4 v6, 0x1

    if-ne v6, p0, :cond_111

    .line 227
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 228
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 229
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/lit16 v7, p0, 0xff

    .line 231
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v8
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_73} :catch_177
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_73} :catch_16c
    .catchall {:try_start_58 .. :try_end_73} :catchall_16a

    if-ge v8, v7, :cond_81

    .line 313
    :try_start_75
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_80
    return-object v5

    :cond_81
    add-int/2addr v7, v6

    .line 236
    :try_start_82
    new-array v7, v7, [B

    .line 237
    invoke-virtual {v4, v7, v6, p0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_88} :catch_177
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_88} :catch_16c
    .catchall {:try_start_82 .. :try_end_88} :catchall_16a

    if-gez v6, :cond_96

    .line 313
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_95
    return-object v5

    .line 243
    :cond_96
    :try_start_96
    aput-byte p0, v7, v3

    .line 244
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result p0

    if-lez p0, :cond_109

    .line 248
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    if-lez p0, :cond_ba

    .line 251
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v3
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_a9} :catch_177
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a9} :catch_16c
    .catchall {:try_start_96 .. :try_end_a9} :catchall_16a

    if-ge v3, p0, :cond_b7

    .line 313
    :try_start_ab
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b1} :catch_b2

    goto :goto_b6

    :catch_b2
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b6
    return-object v5

    .line 255
    :cond_b7
    :try_start_b7
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 258
    :cond_ba
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result p0
    :try_end_be
    .catch Ljava/lang/RuntimeException; {:try_start_b7 .. :try_end_be} :catch_177
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_be} :catch_16c
    .catchall {:try_start_b7 .. :try_end_be} :catchall_16a

    if-gtz p0, :cond_cc

    .line 313
    :try_start_c0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c6} :catch_c7

    goto :goto_cb

    :catch_c7
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_cb
    return-object v5

    .line 263
    :cond_cc
    :try_start_cc
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    .line 265
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_d5
    .catch Ljava/lang/RuntimeException; {:try_start_cc .. :try_end_d5} :catch_177
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d5} :catch_16c
    .catchall {:try_start_cc .. :try_end_d5} :catchall_16a

    if-ge v1, p0, :cond_e3

    .line 313
    :try_start_d7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_dd} :catch_de

    goto :goto_e2

    :catch_de
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e2
    return-object v5

    .line 270
    :cond_e3
    :try_start_e3
    new-array p0, p0, [B

    .line 271
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_101

    .line 275
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 276
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_f5
    .catch Ljava/lang/RuntimeException; {:try_start_e3 .. :try_end_f5} :catch_177
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f5} :catch_16c
    .catchall {:try_start_e3 .. :try_end_f5} :catchall_16a

    .line 313
    :try_start_f5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fb} :catch_fc

    goto :goto_100

    :catch_fc
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_100
    return-object p0

    .line 273
    :cond_101
    :try_start_101
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Exception : fail to read tpdu"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_109
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EOF RPDU. before reading RP-DA len"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_111
    const/4 v6, 0x5

    if-ne v6, p0, :cond_163

    .line 282
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 283
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 284
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    .line 286
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_123
    .catch Ljava/lang/RuntimeException; {:try_start_101 .. :try_end_123} :catch_177
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_123} :catch_16c
    .catchall {:try_start_101 .. :try_end_123} :catchall_16a

    if-ge v1, p0, :cond_131

    .line 313
    :try_start_125
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12b} :catch_12c

    goto :goto_130

    :catch_12c
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_130
    return-object v5

    :cond_131
    :goto_131
    if-ge v3, p0, :cond_139

    .line 292
    :try_start_133
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v3, v3, 0x1

    goto :goto_131

    .line 294
    :cond_139
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result p0

    if-lez p0, :cond_153

    .line 296
    new-array p0, p0, [B

    .line 297
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_14b

    .line 301
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_153

    .line 299
    :cond_14b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Exception : Reading TPDU from RIL PDU"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_153
    :goto_153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_157
    .catch Ljava/lang/RuntimeException; {:try_start_133 .. :try_end_157} :catch_177
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_157} :catch_16c
    .catchall {:try_start_133 .. :try_end_157} :catchall_16a

    .line 313
    :try_start_157
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15d} :catch_15e

    goto :goto_162

    :catch_15e
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_162
    return-object p0

    .line 313
    :cond_163
    :try_start_163
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_169} :catch_182

    goto :goto_186

    :catchall_16a
    move-exception p0

    goto :goto_187

    :catch_16c
    move-exception p0

    .line 309
    :try_start_16d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_16a

    .line 313
    :try_start_170
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_176} :catch_182

    goto :goto_186

    :catch_177
    move-exception p0

    .line 307
    :try_start_178
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_16a

    .line 313
    :try_start_17b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_181} :catch_182

    goto :goto_186

    :catch_182
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_186
    return-object v5

    .line 313
    :goto_187
    :try_start_187
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18d} :catch_18e

    goto :goto_192

    :catch_18e
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    :goto_192
    throw p0
.end method

.method public static get3gppTpduFromPdu([B)[B
    .registers 3

    .line 177
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_6
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpdu([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getDeliverReportFromPdu(II[BII)[B
    .registers 16

    const/4 v0, 0x0

    if-eqz p2, :cond_d9

    .line 483
    array-length v1, p2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_9

    goto/16 :goto_d9

    :cond_9
    const/4 v1, 0x1

    .line 486
    aget-byte v3, p2, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x100

    const/4 v5, 0x0

    aget-byte v6, p2, v5

    and-int/2addr v6, v4

    add-int/2addr v3, v6

    .line 487
    sget-object v6, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeliverReportFromPdu - reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 491
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x41

    const/4 v9, 0x3

    if-eqz v3, :cond_7a

    const v10, 0x8000

    if-ge v3, v10, :cond_41

    goto :goto_7a

    :cond_41
    if-le v3, v10, :cond_c5

    .line 542
    :try_start_43
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->write(I)V

    int-to-byte p1, p1

    .line 543
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 544
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 545
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRPErrCause(I)B

    move-result p1

    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 548
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 549
    sget-object p1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_70

    .line 550
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 551
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 552
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 553
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPErrCause(I)B

    move-result p0

    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 554
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_c5

    .line 555
    :cond_70
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p0

    if-nez p0, :cond_c5

    .line 556
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_c5

    :cond_7a
    :goto_7a
    const/4 p0, 0x2

    .line 495
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    int-to-byte p1, p1

    .line 496
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 497
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 498
    aget-byte p1, p2, v9

    if-lez p1, :cond_92

    array-length v2, p2

    if-lt v2, p1, :cond_92

    .line 500
    array-length p0, p2

    sub-int/2addr p0, v9

    invoke-virtual {v7, p2, v9, p0}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_c5

    :cond_92
    if-eqz v3, :cond_98

    .line 504
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_a4

    :cond_98
    if-eqz p3, :cond_9b

    goto :goto_9c

    :cond_9b
    move v9, p0

    :goto_9c
    if-eqz p4, :cond_a0

    add-int/lit8 v9, v9, 0x1

    :cond_a0
    int-to-byte p0, v9

    .line 513
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 517
    :goto_a4
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz v3, :cond_ae

    and-int/lit16 p0, v3, 0xff

    .line 520
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    :cond_ae
    if-eqz p3, :cond_b1

    int-to-byte v5, v1

    :cond_b1
    if-eqz p4, :cond_b6

    or-int/lit8 p0, v5, 0x2

    int-to-byte v5, p0

    .line 530
    :cond_b6
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz p3, :cond_bf

    int-to-byte p0, p3

    .line 533
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    :cond_bf
    if-eqz p4, :cond_c5

    int-to-byte p0, p4

    .line 537
    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 559
    :cond_c5
    :goto_c5
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 560
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_cc} :catch_cd

    return-object p0

    :catch_cd
    move-exception p0

    .line 563
    :try_start_ce
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_d6

    :catch_d2
    move-exception p1

    .line 565
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 567
    :goto_d6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d9
    :goto_d9
    return-object v0
.end method

.method private static getRPErrCause(I)B
    .registers 1

    .line 0
    sparse-switch p0, :sswitch_data_e

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0

    :sswitch_7
    const/16 p0, 0x6f

    return p0

    :sswitch_a
    const/16 p0, 0x16

    return p0

    nop

    :sswitch_data_e
    .sparse-switch
        0x8016 -> :sswitch_a
        0x8080 -> :sswitch_a
        0x8081 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getRilRPErrCode(I)I
    .registers 2

    .line 0
    const v0, 0x8000

    add-int/2addr p0, v0

    return p0
.end method

.method public static getRpSMMAPdu(I)[B
    .registers 4

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getSCAFromPdu([B)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    .line 126
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_20

    .line 127
    array-length v2, p0

    if-ge v2, v1, :cond_10

    goto :goto_20

    :cond_10
    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v0, v1, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    .line 133
    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "[getSCAFromPdu] Exception : sca is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    return-object v0
.end method

.method protected static getSca(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .registers 5

    .line 782
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_2f

    if-eqz p1, :cond_2b

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x3

    if-le p2, p3, :cond_2b

    const-string p2, "011"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 786
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "+"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_2b
    if-eqz p1, :cond_44

    move-object p0, p1

    goto :goto_44

    .line 791
    :cond_2f
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_44

    if-eqz p3, :cond_40

    .line 793
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSmscSet()Ljava/lang/String;

    move-result-object p0

    :cond_40
    if-nez p0, :cond_44

    const-string p0, "4444"

    :cond_44
    :goto_44
    return-object p0
.end method

.method protected static getScaForRpDa(Z[BLjava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_6

    .line 764
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getSCAFromPdu([B)Ljava/lang/String;

    move-result-object p2

    .line 768
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 769
    sget-object p0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p3, p0, :cond_23

    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p3, p0, :cond_23

    sget-object p0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p3, p0, :cond_19

    goto :goto_23

    .line 772
    :cond_19
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "pdu is malformed. no SCA"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "noSCA"

    return-object p0

    :cond_23
    :goto_23
    const-string p2, "7"

    .line 777
    :cond_25
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendSMSOverIMS: SmscAddr FromPdu="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected static getScaFromPsismscPSI(Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Landroid/telephony/TelephonyManager;ILcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .registers 13

    const-string v0, ";"

    .line 805
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 807
    :try_start_6
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_d8

    const-string/jumbo v4, "there is no SMS_PSI"

    const-string v5, "PSISMSC: "

    const-string v6, ""

    if-eq p2, v3, :cond_90

    :try_start_11
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_90

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_90

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_1f

    goto/16 :goto_90

    .line 821
    :cond_1f
    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_42

    .line 823
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSmsPsi()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 824
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d4

    .line 825
    :cond_37
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "noPSI"
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_d8

    .line 847
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 829
    :cond_42
    :try_start_42
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_d4

    .line 832
    invoke-static {p3, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getPsismsc(Landroid/telephony/TelephonyManager;I)[B

    move-result-object p0

    if-nez p0, :cond_56

    .line 834
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "there is no PSISMSC"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 836
    :cond_56
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 837
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_74

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_74

    .line 838
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 840
    :cond_74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_d4

    .line 842
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    goto :goto_d4

    .line 809
    :cond_90
    :goto_90
    invoke-static {p3, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getPsismsc(Landroid/telephony/TelephonyManager;I)[B

    move-result-object p3

    if-eqz p3, :cond_b4

    .line 811
    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 812
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 813
    :cond_b4
    sget-object p3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_d4

    .line 814
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-static {p0, p2, p4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSmsPsi()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_cf

    .line 815
    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_cd

    goto :goto_cf

    :cond_cd
    move-object p1, p0

    goto :goto_d4

    .line 816
    :cond_cf
    :goto_cf
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_42 .. :try_end_d4} :catchall_d8

    .line 847
    :cond_d4
    :goto_d4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_d8
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    throw p0
.end method

.method private static getTPErrCause(I)B
    .registers 1

    .line 0
    sparse-switch p0, :sswitch_data_c

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/16 p0, -0x2d

    return p0

    :sswitch_8
    const/16 p0, -0x30

    return p0

    nop

    :sswitch_data_c
    .sparse-switch
        0x8016 -> :sswitch_8
        0x8080 -> :sswitch_5
        0x8081 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getTPMRFromPdu([B)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 383
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 384
    array-length v2, p0

    add-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_f

    return v0

    .line 387
    :cond_f
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getTPPidDcsFromPdu([B)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 600
    fill-array-data v2, :array_76

    .line 602
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 603
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 606
    :try_start_14
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 607
    array-length p0, p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_60
    .catchall {:try_start_14 .. :try_end_1b} :catchall_5e

    add-int/lit8 v5, v3, 0x2

    if-ge p0, v5, :cond_28

    .line 636
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_27
    return-object v0

    .line 611
    :cond_28
    :try_start_28
    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    const/4 p0, 0x1

    .line 613
    invoke-virtual {v4, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 615
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p0

    .line 620
    div-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 621
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3c} :catch_60
    .catchall {:try_start_28 .. :try_end_3c} :catchall_5e

    add-int/lit8 v3, v0, 0x2

    if-ge v1, v3, :cond_49

    .line 636
    :try_start_40
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_48
    return-object v2

    :cond_49
    int-to-long v0, v0

    .line 624
    :try_start_4a
    invoke-virtual {v4, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 629
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x0

    aput-byte v0, v2, v1

    .line 630
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, p0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_60
    .catchall {:try_start_4a .. :try_end_5a} :catchall_5e

    .line 636
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_68

    goto :goto_6c

    :catchall_5e
    move-exception p0

    goto :goto_6d

    :catch_60
    move-exception p0

    .line 632
    :try_start_61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    .line 636
    :try_start_64
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6c
    return-object v2

    .line 636
    :goto_6d
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 641
    :goto_75
    throw p0

    :array_76
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static is911FromPdu([B)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 650
    :cond_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 651
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 654
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 655
    array-length p0, p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_7c
    .catchall {:try_start_e .. :try_end_15} :catchall_7a

    add-int/lit8 v3, v1, 0x2

    if-ge p0, v3, :cond_22

    .line 685
    :try_start_19
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_21
    return v0

    .line 659
    :cond_22
    :try_start_22
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    const/4 p0, 0x1

    .line 661
    invoke-virtual {v2, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 663
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p0

    .line 665
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    .line 666
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v3
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_37} :catch_7c
    .catchall {:try_start_22 .. :try_end_37} :catchall_7a

    add-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_44

    .line 685
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_43
    return v0

    .line 670
    :cond_44
    :try_start_44
    new-array v3, v1, [B

    .line 671
    invoke-virtual {v2, v3, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_7c
    .catchall {:try_start_44 .. :try_end_4a} :catchall_7a

    if-gez v4, :cond_55

    .line 685
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_54
    return v0

    .line 675
    :cond_55
    :try_start_55
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_76

    if-eqz v3, :cond_76

    const-string v1, "(.*)19f1"

    .line 676
    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 677
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Incoming 911"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6d} :catch_7c
    .catchall {:try_start_55 .. :try_end_6d} :catchall_7a

    .line 685
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_75
    return p0

    .line 685
    :cond_76
    :try_start_76
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_84

    goto :goto_88

    :catchall_7a
    move-exception p0

    goto :goto_89

    :catch_7c
    move-exception p0

    .line 681
    :try_start_7d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_7a

    .line 685
    :try_start_80
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_88
    return v0

    .line 685
    :goto_89
    :try_start_89
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 690
    :goto_91
    throw p0
.end method

.method public static isAck(Ljava/lang/String;[B)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3e

    .line 161
    array-length v1, p1

    if-nez v1, :cond_e

    goto :goto_3e

    .line 165
    :cond_e
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAck: contentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "application/vnd.3gpp.sms"

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x3

    aget-byte p1, p1, v3

    if-ne p0, p1, :cond_3d

    return v0

    :cond_3d
    return v3

    :cond_3e
    :goto_3e
    return v0

    .line 158
    :cond_3f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "contentType is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAdminMsg([B)Z
    .registers 3

    .line 753
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPPidDcsFromPdu([B)[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 754
    aget-byte p0, p0, v0

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v0
.end method

.method public static isISODigit(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    .line 722
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_33

    .line 723
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x3

    .line 724
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    move v3, v1

    :goto_22
    if-ge v3, v2, :cond_32

    .line 727
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 728
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_33

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_32
    move v0, v1

    :cond_33
    :goto_33
    return v0
.end method

.method public static isRPErrorForRetransmission(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x29

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_16

    const/16 v0, 0x62

    if-eq p0, v0, :cond_16

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static isStatusReport([B)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 440
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_17

    .line 444
    :cond_7
    aget-byte v1, p0, v0

    if-ltz v1, :cond_17

    .line 445
    array-length v2, p0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-le v2, v1, :cond_17

    .line 446
    aget-byte p0, p0, v1

    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_17

    move v0, v3

    :cond_17
    :goto_17
    return v0
.end method

.method private static isTwoToNine(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static makeRPErrorPdu([B)[B
    .registers 5

    .line 327
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-lt v0, v1, :cond_b

    .line 328
    aget-byte p0, p0, v2

    and-int/2addr p0, v3

    goto :goto_c

    :cond_b
    move p0, v3

    .line 331
    :goto_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 332
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    .line 334
    :try_start_17
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 335
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 336
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p0, 0x5f

    .line 337
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 338
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_34
    .catchall {:try_start_17 .. :try_end_29} :catchall_32

    .line 344
    :try_start_29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_31
    return-object p0

    :catchall_32
    move-exception p0

    goto :goto_42

    :catch_34
    move-exception p0

    .line 340
    :try_start_35
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    .line 344
    :try_start_38
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    .line 347
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_40
    const/4 p0, 0x0

    return-object p0

    .line 344
    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 349
    :goto_4a
    throw p0
.end method

.method public static removeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 408
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_10

    return-object p0

    :cond_10
    const-string/jumbo v1, "sip"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "<sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "tel"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "<tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_69

    :cond_33
    const-string v1, "\""

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    return-object p0

    :cond_3c
    const-string/jumbo v3, "sip:"

    .line 423
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4f

    const-string/jumbo v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4f

    return-object p0

    .line 427
    :cond_4f
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v3, v1, :cond_57

    return-object p0

    .line 431
    :cond_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v1, v3, :cond_5f

    return-object p0

    :cond_5f
    add-int/2addr v1, v2

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_69
    :goto_69
    return-object v0
.end method

.method public static removeSipPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 394
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_c

    return-object p0

    :cond_c
    const-string/jumbo v0, "sip:"

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 399
    :cond_1e
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_22
    return-object p0
.end method

.method public static set3gppTPRD([B)V
    .registers 4

    .line 453
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    .line 460
    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, 0x3

    .line 463
    array-length v2, p0

    if-ge v2, v0, :cond_e

    return-void

    .line 467
    :cond_e
    aget-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 469
    array-length v2, p0

    if-ge v2, v0, :cond_17

    return-void

    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 475
    aget-byte v2, p0, v0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static trimSipAddr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "<"

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_11
    const-string v0, ">"

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_23
    return-object p0
.end method
