.class public abstract Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;
.super Ljava/lang/Object;
.source "RcsBigDataProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCause(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Ljava/lang/String;
    .registers 4

    .line 296
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    .line 303
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_1c
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_2e
    return-object v1

    .line 298
    :cond_2f
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_41
    return-object v1
.end method

.method private getChatBotTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)Ljava/lang/String;
    .registers 2

    .line 308
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_26

    const/4 p1, 0x2

    if-eq p0, p1, :cond_23

    const/4 p1, 0x3

    if-eq p0, p1, :cond_20

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1a

    const-string p0, ""

    return-object p0

    :cond_1a
    const-string p0, "MPPR"

    return-object p0

    :cond_1d
    const-string p0, "MPSU"

    return-object p0

    :cond_20
    const-string p0, "MPPA"

    return-object p0

    :cond_23
    const-string p0, "MPAD"

    return-object p0

    :cond_26
    const-string p0, "MPNO"

    return-object p0
.end method

.method private getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;
    .registers 3

    .line 267
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    if-eqz p1, :cond_5

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_20

    if-eqz p2, :cond_1d

    const-string p0, "MOFT"

    goto :goto_1f

    :pswitch_15
    if-eqz p2, :cond_1a

    const-string p0, "MOFN"

    goto :goto_1c

    :cond_1a
    const-string p0, "ROFN"

    :goto_1c
    return-object p0

    :cond_1d
    const-string p0, "ROFT"

    :goto_1f
    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private getFileExtension(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;
    .registers 3

    .line 256
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    const/16 p1, 0x2e

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_16

    add-int/lit8 p1, p1, 0x1

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, ""

    return-object p0
.end method

.method private getMessageSize(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/lang/String;
    .registers 2

    .line 232
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p0, :cond_f

    .line 233
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    const-string p0, "0"

    return-object p0
.end method

.method private getOrst(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)Ljava/lang/String;
    .registers 2

    .line 281
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_21

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1e

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1b

    const/16 p1, 0x8

    if-eq p0, p1, :cond_18

    const-string p0, "5"

    return-object p0

    :cond_18
    const-string p0, "3"

    return-object p0

    :cond_1b
    const-string p0, "4"

    return-object p0

    :cond_1e
    const-string p0, "2"

    return-object p0

    :cond_21
    const-string p0, "1"

    return-object p0
.end method

.method private getPhoneIdByImsi(Ljava/lang/String;)I
    .registers 2

    .line 227
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_b

    .line 228
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    :cond_b
    return p0
.end method

.method private getRegiRat(I)Ljava/lang/String;
    .registers 2

    .line 245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 247
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, "-1"

    .line 249
    :goto_11
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->isWifiConnected()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_WIFI"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_28
    return-object p1
.end method

.method private prepareCommonKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "ORST"

    .line 95
    invoke-virtual {p2, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "MDIR"

    const-string v0, "0"

    .line 96
    invoke-virtual {p2, p5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p5

    if-eqz p5, :cond_14

    const-string v0, "1"

    :cond_14
    const-string p5, "MGRP"

    .line 97
    invoke-virtual {p2, p5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "MTYP"

    .line 99
    invoke-virtual {p2, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p5

    const-string p6, "MCID"

    invoke-virtual {p2, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "MIID"

    .line 101
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "MSIZ"

    .line 102
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getMessageSize(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "PTCN"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "MRAT"

    .line 104
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getRegiRat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareErrorKeysForRcsm(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_68

    goto :goto_47

    :pswitch_b
    const-string p0, "5"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, 0x5

    goto :goto_48

    :pswitch_15
    const-string p0, "4"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    move p0, v0

    goto :goto_48

    :pswitch_1f
    const-string p0, "3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, 0x4

    goto :goto_48

    :pswitch_29
    const-string p0, "2"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    move p0, v1

    goto :goto_48

    :pswitch_33
    const-string p0, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    move p0, v2

    goto :goto_48

    :pswitch_3d
    const-string p0, "0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 p0, -0x1

    :goto_48
    if-eqz p0, :cond_67

    if-eq p0, v2, :cond_62

    if-eq p0, v1, :cond_5c

    if-eq p0, v0, :cond_56

    const-string p0, "ITER"

    .line 128
    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_56
    const-string p0, "HTTP"

    .line 123
    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_5c
    const-string p0, "MSRP"

    .line 120
    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_62
    const-string p0, "SIPR"

    .line 117
    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x30
        :pswitch_3d
        :pswitch_33
        :pswitch_29
        :pswitch_1f
        :pswitch_15
        :pswitch_b
    .end packed-switch
.end method

.method private prepareFtSpecificKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .registers 4

    const-string v0, "FTYP"

    .line 108
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getFileExtension(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "FTRC"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareKeysForMoDrcs(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 14

    move-object v0, p0

    move-object v1, p7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareResultKeysForMoDrcs(Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 155
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const/4 p1, 0x1

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-ne p5, p0, :cond_17

    const-string p0, "SMFB"

    invoke-virtual {p7, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    const-string p0, "1"

    .line 158
    invoke-virtual {p0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "RCRP"

    .line 159
    invoke-virtual {p7, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_32

    :cond_25
    const-string p0, "2"

    .line 160
    invoke-virtual {p0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "RCRA"

    .line 161
    invoke-virtual {p7, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private prepareKeysForMtDrcs(ZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;Landroid/content/ContentValues;)V
    .registers 5

    const/4 v0, 0x1

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_d

    const-string p0, "RCMT"

    invoke-virtual {p3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1f

    .line 194
    :cond_d
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getChatBotTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 196
    invoke-virtual {p3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1a
    const-string p0, "MPMT"

    .line 198
    invoke-virtual {p3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1f
    return-void
.end method

.method private prepareKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .registers 9

    .line 86
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareCommonKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    instance-of p1, p3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_d

    .line 88
    move-object p1, p3

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareFtSpecificKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 90
    :cond_d
    invoke-direct {p0, p2, p5, p7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareErrorKeysForRcsm(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p2, p3, p8}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareOptionalKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-void
.end method

.method private prepareOptionalKeysForRcsm(Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .registers 4

    if-eqz p3, :cond_b

    const-string p0, "SRSC"

    .line 135
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_b
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string p0, "MRTY"

    .line 138
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1a
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    const-string p0, "MRVA"

    .line 141
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private prepareResultKeysForMoDrcs(Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V
    .registers 10

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_9e

    :goto_10
    move v1, v3

    goto :goto_51

    :pswitch_12
    const-string v0, "5"

    .line 166
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v1, 0x5

    goto :goto_51

    :pswitch_1d
    const-string v0, "4"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    goto :goto_10

    :cond_26
    const/4 v1, 0x4

    goto :goto_51

    :pswitch_28
    const-string v0, "3"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_31

    goto :goto_10

    :cond_31
    const/4 v1, 0x3

    goto :goto_51

    :pswitch_33
    const-string v0, "2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3c

    goto :goto_10

    :cond_3c
    const/4 v1, 0x2

    goto :goto_51

    :pswitch_3e
    const-string v0, "1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_51

    goto :goto_10

    :pswitch_47
    const-string v0, "0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_50

    goto :goto_10

    :cond_50
    const/4 v1, 0x0

    :cond_51
    :goto_51
    const-string p3, "MPOF"

    const-string v0, "RCOF"

    packed-switch v1, :pswitch_data_ae

    goto :goto_9d

    :pswitch_59
    if-eqz p2, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object p3, v0

    .line 182
    :goto_5d
    invoke-virtual {p1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-direct {p0, p5, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9d

    :pswitch_68
    if-eqz p2, :cond_6b

    goto :goto_6c

    :cond_6b
    move-object p3, v0

    .line 178
    :goto_6c
    invoke-virtual {p1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_74

    const-string p0, "MOFT"

    goto :goto_76

    :cond_74
    const-string p0, "ROFT"

    .line 179
    :goto_76
    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9d

    :pswitch_7a
    if-eqz p2, :cond_7d

    goto :goto_7e

    :cond_7d
    move-object p3, v0

    .line 174
    :goto_7e
    invoke-virtual {p1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_86

    const-string p0, "MOFN"

    goto :goto_88

    :cond_86
    const-string p0, "ROFN"

    .line 175
    :goto_88
    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9d

    :pswitch_8c
    if-eqz p2, :cond_91

    const-string p2, "MPOS"

    goto :goto_93

    :cond_91
    const-string p2, "RCOS"

    .line 168
    :goto_93
    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_9d
    return-void

    :pswitch_data_9e
    .packed-switch 0x30
        :pswitch_47
        :pswitch_3e
        :pswitch_33
        :pswitch_28
        :pswitch_1d
        :pswitch_12
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_7a
        :pswitch_7a
        :pswitch_68
        :pswitch_7a
        :pswitch_59
    .end packed-switch
.end method

.method private sendMoBigdata(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .registers 19

    move-object v8, p0

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-nez v5, :cond_c

    return-void

    .line 64
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getPhoneIdByImsi(Ljava/lang/String;)I

    move-result v9

    .line 65
    invoke-virtual {p0, v9, v5}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z

    move-result v10

    move-object v11, p1

    .line 66
    invoke-virtual {p0, p1, v10}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;

    move-result-object v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move v6, v9

    move-object v7, v12

    .line 68
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->sendRcsmInfoToHqmAgent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/ImSession;ILjava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v7

    move v1, v9

    move v2, v10

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeMoDrcsInfoToImsLogAgent(IZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;)V

    return-void
.end method

.method private sendRcsmInfoToHqmAgent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/ImSession;ILjava/lang/String;)V
    .registers 18

    .line 74
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-object v0, p0

    move/from16 v1, p6

    move-object v2, v9

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    move-object/from16 v6, p7

    move-object v7, p3

    move-object v8, p4

    .line 75
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareKeysForRcsm(ILandroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 76
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->mContext:Landroid/content/Context;

    const-string v1, "RCSM"

    move/from16 v2, p6

    invoke-static {v2, v0, v1, v9}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V
    .registers 5

    const/4 v0, 0x1

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "send_mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "overwrite_mode"

    .line 210
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->mContext:Landroid/content/Context;

    const-string v0, "DRCS"

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private storeMessageCancelInfoToImsLogAgent(II)V
    .registers 5

    .line 203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "RCCC"

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method

.method private storeMoDrcsInfoToImsLogAgent(IZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;)V
    .registers 17

    .line 147
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    .line 148
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareKeysForMoDrcs(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Ljava/lang/String;Landroid/content/ContentValues;)V

    move v1, p1

    .line 149
    invoke-direct {p0, p1, v8}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method

.method private storeMtDrcsInfoToImsLogAgent(IZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V
    .registers 5

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    invoke-direct {p0, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->prepareKeysForMtDrcs(ZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;Landroid/content/ContentValues;)V

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeDrcsInfoToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method protected abstract getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end method

.method protected abstract getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
.end method

.method protected abstract getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;
.end method

.method protected abstract getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z
.end method

.method protected abstract isWifiConnected()Z
.end method

.method public onMessageCancelSent(II)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeMessageCancelInfoToImsLogAgent(II)V

    return-void
.end method

.method public onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 4

    .line 48
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z

    move-result p3

    if-eqz p2, :cond_b

    .line 49
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->fromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object p2

    .line 48
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->storeMtDrcsInfoToImsLogAgent(IZLcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 4

    .line 43
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getPhoneIdByImsi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .registers 5

    .line 32
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getCause(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .registers 12

    .line 37
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->getOrst(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v5

    if-eqz p4, :cond_13

    .line 38
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    move-object v6, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->sendMoBigdata(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 8

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;->sendMoBigdata(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-void
.end method
