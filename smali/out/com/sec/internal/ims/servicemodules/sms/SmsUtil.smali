.class public Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_ID_BASE:I = 0x3e8

.field private static mIncommingMagId:I

.field private static mRPMsgRef:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 42
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static broadcastDcnNumber(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "omadm/./3GPP_IMS/DCN_NUMBER"

    const-string v1, ""

    .line 201
    invoke-static {p0, v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 206
    :cond_f
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDcnNumber : value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.dm.DM_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "item"

    const-string v3, "DCN_NUMBER"

    .line 208
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "value"

    .line 209
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "phoneId"

    .line 210
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected static broadcastSCBMState(Landroid/content/Context;ZI)V
    .registers 6

    .line 215
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastSCBMState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phoneInSCBMState"

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "phoneId"

    .line 219
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected static getIncommingMagId()I
    .registers 1

    .line 156
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    return v0
.end method

.method protected static getIncreasedRPRef()I
    .registers 2

    .line 101
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    .line 103
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    .line 105
    :cond_d
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return v0
.end method

.method private static getIsmoResultBySipErrorCode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 0
    const/16 v0, 0x198

    if-eq p1, v0, :cond_14

    const/16 v0, 0x2c4

    if-ne p1, v0, :cond_9

    goto :goto_14

    :cond_9
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_16

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_16

    const-string p0, "0"

    goto :goto_16

    :cond_14
    :goto_14
    const-string p0, "3"

    :cond_16
    :goto_16
    return-object p0
.end method

.method protected static getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 86
    :cond_5
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    .line 87
    :cond_d
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 89
    :goto_11
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 90
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_47

    .line 91
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 92
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 93
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_25

    :cond_47
    if-nez v1, :cond_4a

    goto :goto_4e

    .line 97
    :cond_4a
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    return-object v0
.end method

.method protected static getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 114
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 118
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method

.method protected static getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;[B)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_47

    .line 127
    array-length v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    goto :goto_47

    .line 130
    :cond_8
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 133
    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 137
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    if-ne p1, v3, :cond_14

    const/16 v3, 0x64

    .line 138
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v4

    if-gt v3, v4, :cond_14

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v1

    const/16 v3, 0x66

    if-gt v1, v3, :cond_14

    return v2

    :cond_47
    :goto_47
    return v0
.end method

.method protected static getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "sip:"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_9a

    :cond_14
    const/4 v1, 0x0

    if-nez p0, :cond_18

    return-object v1

    .line 52
    :cond_18
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-eqz p2, :cond_80

    .line 57
    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, p2, :cond_7b

    .line 58
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object p0

    const-string p2, "+"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_67

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    goto :goto_67

    .line 64
    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_9e

    .line 61
    :cond_67
    :goto_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_9e

    .line 68
    :cond_7b
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_9e

    .line 71
    :cond_80
    sget-object p0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    filled-new-array {p0, p2, v0}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_95

    .line 72
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_9e

    .line 74
    :cond_95
    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_9e

    .line 48
    :cond_9a
    :goto_9a
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 78
    :goto_9e
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getNewMsgId()I
    .registers 2

    .line 147
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    const v1, 0xffff

    if-ne v0, v1, :cond_c

    const/16 v0, 0x3e8

    .line 148
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    goto :goto_10

    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 150
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    .line 152
    :goto_10
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    return v0
.end method

.method protected static getRPMsgRef()I
    .registers 1

    .line 109
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return v0
.end method

.method private static getRgSt(Z)Ljava/lang/String;
    .registers 3

    const-string v0, "gsm.operator.isroaming"

    const/4 v1, 0x0

    .line 298
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "6"

    goto :goto_13

    :cond_c
    if-eqz p0, :cond_11

    const-string p0, "2"

    goto :goto_13

    :cond_11
    const-string p0, "1"

    :goto_13
    return-object p0
.end method

.method private static isKORMnoName(I)Z
    .registers 2

    .line 160
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 161
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method protected static isProhibited(Lcom/sec/ims/ImsRegistration;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationList()Ljava/util/Map;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-nez v2, :cond_12

    return v0

    .line 191
    :cond_12
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_2e

    .line 193
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 194
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result p0

    return p0

    :cond_2e
    return v0
.end method

.method protected static isServiceAvailable(Landroid/telephony/TelephonyManager;IZ)Z
    .registers 6

    .line 165
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 166
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result p0

    .line 167
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_20

    if-eqz p2, :cond_14

    goto :goto_20

    .line 175
    :cond_14
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isKORMnoName(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 176
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    return p0

    :cond_1f
    return v2

    .line 169
    :cond_20
    :goto_20
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_27

    return v2

    .line 173
    :cond_27
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-nez p1, :cond_33

    const/16 p1, 0x12

    if-ne p0, p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :cond_33
    :goto_33
    return v2
.end method

.method protected static onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V
    .registers 4

    .line 224
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 227
    new-instance v0, Lcom/sec/ims/util/SipError;

    invoke-direct {v0, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string/jumbo p1, "smsip"

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_19
    return-void
.end method

.method private static prepareSmsCommonKeys(Landroid/content/Context;ZLandroid/content/ContentValues;)V
    .registers 4

    const-string v0, "RgSt"

    .line 258
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getRgSt(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string p1, "CSDA"

    .line 261
    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private static sendIsmoInfoToHqm(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 7

    .line 246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 247
    invoke-static {p0, p5, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->prepareSmsCommonKeys(Landroid/content/Context;ZLandroid/content/ContentValues;)V

    const-string p5, "ORST"

    .line 248
    invoke-virtual {v0, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_19

    const-string p2, "OSIP"

    .line 250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_20

    :cond_19
    if-eqz p4, :cond_20

    const-string p2, "ORPC"

    .line 252
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    const-string p2, "ISMO"

    .line 254
    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method protected static sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 12

    .line 232
    invoke-static {p2, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIsmoResultBySipErrorCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqm(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 234
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method protected static sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    invoke-static {p0, p4, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->prepareSmsCommonKeys(Landroid/content/Context;ZLandroid/content/ContentValues;)V

    const-string p4, "MOMT"

    .line 240
    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ITER"

    .line 241
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SMOT"

    .line 242
    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static storeDrcsInfoToImsLogAgent(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .registers 5

    const/4 v0, 0x1

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "send_mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "overwrite_mode"

    .line 283
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "DRCS"

    .line 284
    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static storeMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "0"

    .line 267
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_18

    const-string p2, "SOIS"

    .line 268
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d

    :cond_18
    const-string p2, "SOIF"

    .line 270
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    :goto_1d
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeDrcsInfoToImsLogAgent(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method protected static storeMtSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;I)V
    .registers 5

    .line 276
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMTI"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeDrcsInfoToImsLogAgent(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method
