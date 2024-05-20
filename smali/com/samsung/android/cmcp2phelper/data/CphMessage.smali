.class public Lcom/samsung/android/cmcp2phelper/data/CphMessage;
.super Ljava/lang/Object;
.source "CphMessage.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCmcVersion:D

.field mDeviceId:Ljava/lang/String;

.field mLineId:Ljava/lang/String;

.field mMessageUniqueNum:I

.field mMsgType:I

.field mResponderIP:Ljava/lang/String;

.field mResponderPort:I

.field message:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 99
    iput-wide p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 100
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    const-string p1, ""

    .line 102
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 104
    iput p6, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->makeJsonObject()V

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 86
    iput-wide p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 87
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 90
    iput p7, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 91
    iput p8, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->makeJsonObject()V

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 114
    sget-object p1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new cphMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json cphMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->parseFromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private makeJsonObject()V
    .locals 4

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "cph_message_id"

    .line 163
    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_message_type"

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_version"

    iget-wide v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_device_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_line_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_resp_ip"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_0
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    if-eqz v0, :cond_1

    .line 172
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_resp_port"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseFromJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "cph_cmc_resp_port"

    const-string v1, "cph_cmc_resp_ip"

    const-string v2, "cph_message_id"

    .line 130
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    :cond_0
    const-string v2, "cph_message_type"

    .line 133
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    const-string v2, "cph_cmc_version"

    .line 134
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    const-string v2, "cph_cmc_device_id"

    .line 135
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    const-string v2, "cph_cmc_line_id"

    .line 136
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 138
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 140
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getByte()[B
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    return p0
.end method

.method public getMsgType()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    return p0
.end method

.method public getResponderIP()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    return-object p0
.end method

.method public getResponderPort()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cph_cmc_line_id"

    const-string/jumbo v2, "xxx"

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method
