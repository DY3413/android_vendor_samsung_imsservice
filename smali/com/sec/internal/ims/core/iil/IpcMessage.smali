.class public Lcom/sec/internal/ims/core/iil/IpcMessage;
.super Ljava/lang/Object;
.source "IpcMessage.java"


# static fields
.field public static final IPC_CMD_CFRM:I = 0x4

.field public static final IPC_CMD_EVENT:I = 0x5

.field public static final IPC_CMD_EXEC:I = 0x1

.field public static final IPC_CMD_GET:I = 0x2

.field public static final IPC_CMD_INDI:I = 0x1

.field public static final IPC_CMD_NOTI:I = 0x3

.field public static final IPC_CMD_RESP:I = 0x2

.field public static final IPC_CMD_SET:I = 0x3

.field public static final IPC_DEBUG_HDR_SIZE:I = 0xc

.field public static final IPC_FROM_IIL:I = 0x1

.field public static final IPC_FROM_RIL:I = 0x0

.field public static final IPC_GEN_CMD:I = 0x80

.field public static final IPC_GEN_ERR_INVALID_STATE:I = 0x8005

.field public static final IPC_GEN_ERR_NONE:I = 0x8000

.field public static final IPC_GEN_ERR_SIM_PIN2_PERM_BLOCKED:I = 0x800e

.field public static final IPC_GEN_PHONE_RES:I = 0x1

.field public static final IPC_HDR_SIZE:I = 0x7

.field public static final IPC_IIL_CHANGE_PREFERRED_NETWORK_TYPE:I = 0x15

.field public static final IPC_IIL_CMD:I = 0x70

.field public static final IPC_IIL_EMC_ATTACH_AUTH:I = 0x20

.field public static final IPC_IIL_IIL_CONNECTED:I = 0x12

.field public static final IPC_IIL_IMS_SUPPORT_STATE:I = 0x10

.field public static final IPC_IIL_ISIM_LOADED:I = 0x11

.field public static final IPC_IIL_PREFERENCE:I = 0x6

.field public static final IPC_IIL_REGISTRATION:I = 0x1

.field public static final IPC_IIL_RETRYOVER:I = 0xc

.field public static final IPC_IIL_SET_DEREGISTRATION:I = 0xb

.field public static final IPC_IIL_SIP_SUSPEND:I = 0x16

.field public static final IPC_IIL_SSAC_INFO:I = 0xe

.field public static final IPC_IMS_ERR_403_FORBIDDEN:I = 0x8501

.field public static final IPC_IMS_ERR_MAX_RANGE:I = 0x85ff

.field public static final IPC_SS_ERR_MISTYPED_PARAM:I = 0x8212

.field private static final LOG_TAG:Ljava/lang/String; = "IpcMessage"

.field public static final MAX_IPC_HEADER:I = 0x13


# instance fields
.field protected mAsequence:I

.field protected mCmdType:I

.field protected mDir:I

.field protected mIpcBody:[B

.field protected mIpcData:[B

.field protected mIpcHeader:[B

.field protected mLength:I

.field protected mMainCmd:I

.field protected mNetworkType:I

.field protected mSequence:I

.field protected mSubCmd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    .line 103
    iput p2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    .line 104
    iput p3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    return-void
.end method

.method public static parseIpc([BI)Lcom/sec/internal/ims/core/iil/IpcMessage;
    .locals 6

    const-string v0, "IpcMessage"

    .line 279
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 280
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 288
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 289
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    const/16 v5, 0x70

    if-eq v4, v5, :cond_0

    move-object v5, v1

    goto :goto_0

    .line 292
    :cond_0
    new-instance v5, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>()V

    :goto_0
    if-eqz v5, :cond_3

    .line 299
    iput v2, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSequence:I

    .line 300
    iput v3, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mAsequence:I

    .line 301
    iput v4, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    .line 302
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    .line 303
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput v2, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    .line 304
    iput p1, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mLength:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-le p1, v2, :cond_2

    sub-int/2addr p1, v2

    .line 307
    new-array v2, p1, [B

    iput-object v2, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 308
    invoke-virtual {p0, v2, v3, p1}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    const-string p1, "parseIpc: ipcMsg.mIpcBody - the end of the stream has been reached."

    .line 310
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_1
    iget-object p1, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    aget-byte p1, p1, v3

    iput p1, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mNetworkType:I

    .line 315
    :cond_2
    iput v3, v5, Lcom/sec/internal/ims/core/iil/IpcMessage;->mDir:I

    .line 318
    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private subGenCmdStr()Ljava/lang/String;
    .locals 2

    .line 259
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "IPC_GEN_PHONE_RES"

    return-object p0
.end method

.method private subIilCmdStr()Ljava/lang/String;
    .locals 2

    .line 230
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "IPC_IIL_IIL_CONNECTED"

    return-object p0

    :pswitch_1
    const-string p0, "IPC_IIL_ISIM_LOADED"

    return-object p0

    :pswitch_2
    const-string p0, "IPC_IIL_IMS_SUPPORT_STATE"

    return-object p0

    :cond_0
    const-string p0, "IPC_IIL_SIP_SUSPEND"

    return-object p0

    :cond_1
    const-string p0, "IPC_IIL_CHANGE_PREFERRED_NETWORK_TYPE"

    return-object p0

    :cond_2
    const-string p0, "IPC_IIL_RETRYOVER"

    return-object p0

    :cond_3
    const-string p0, "IPC_IIL_SET_DEREGISTRATION"

    return-object p0

    :cond_4
    const-string p0, "IPC_IIL_EMC_ATTACH_AUTH"

    return-object p0

    :cond_5
    const-string p0, "IPC_IIL_SSAC_INFO"

    return-object p0

    :cond_6
    const-string p0, "IPC_IIL_PREFERENCE"

    return-object p0

    :cond_7
    const-string p0, "IPC_IIL_REGISTRATION"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createIpcMessage()[B
    .locals 5

    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 130
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 132
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    const/4 v3, 0x7

    if-eqz v2, :cond_0

    .line 133
    array-length v2, v2

    add-int/2addr v3, v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->makeHeader()Z

    .line 139
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    shr-int/lit8 v2, v3, 0x8

    .line 140
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 141
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcHeader:[B

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 142
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    if-eqz v2, :cond_1

    .line 143
    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcData:[B

    .line 146
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed in createIpcMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IpcMessage"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public encode()[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public encodeGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 337
    iget v1, p2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 338
    iget v1, p2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 339
    iget p2, p2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    int-to-byte p2, p2

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    const p2, 0x8000

    if-lt p1, p2, :cond_0

    const p2, 0x800e

    if-le p1, p2, :cond_2

    :cond_0
    const p2, 0x8501

    if-lt p1, p2, :cond_1

    const p2, 0x85ff

    if-le p1, p2, :cond_2

    :cond_1
    const p2, 0x8212

    if-eq p1, p2, :cond_2

    .line 344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodeGeneralResponse(): ipcErrorCause is out of range with value ( "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%04X "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ), but keep going. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IpcMessage"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x8005

    :cond_2
    const/4 p2, 0x3

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    const/4 p2, 0x4

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    .line 351
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 352
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return v3
.end method

.method public getBody()[B
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    return-object p0
.end method

.method public getCmdType()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    return p0
.end method

.method public getData()[B
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcData:[B

    return-object p0
.end method

.method public getLength()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mLength:I

    return p0
.end method

.method public getMainCmd()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    return p0
.end method

.method public getNetworkType()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mNetworkType:I

    return p0
.end method

.method public getSubCmd()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    return p0
.end method

.method public mainCmdStr()Ljava/lang/String;
    .locals 2

    .line 218
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "IPC_GEN_CMD"

    return-object p0

    :cond_1
    const-string p0, "IPC_IIL_CMD"

    return-object p0
.end method

.method public makeHeader()Z
    .locals 4

    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 109
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 112
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 113
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 114
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 115
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 116
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 117
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcHeader:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed in makeHeader() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IpcMessage"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public setDir(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mDir:I

    return-void
.end method

.method public subCmdStr()Ljava/lang/String;
    .locals 2

    .line 268
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subIilCmdStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subGenCmdStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeStr()Ljava/lang/String;
    .locals 6

    .line 188
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mDir:I

    const-string v1, ")"

    const-string v2, "UNKNOWN("

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_5

    .line 189
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EVENT"

    return-object p0

    :cond_1
    const-string p0, "CFRM"

    return-object p0

    :cond_2
    const-string p0, "SET"

    return-object p0

    :cond_3
    const-string p0, "GET"

    return-object p0

    :cond_4
    const-string p0, "EXEC"

    return-object p0

    .line 204
    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "NOTI"

    return-object p0

    :cond_7
    const-string p0, "RESP"

    return-object p0

    :cond_8
    const-string p0, "INDI"

    return-object p0
.end method
