.class public Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;
.super Ljava/lang/Object;
.source "MnoStrategyCreator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MnoStrategyCreator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .registers 6

    .line 17
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 20
    sget-object v1, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 23
    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyTypeByRcsAs(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object p2

    goto :goto_25

    .line 24
    :cond_19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 25
    invoke-static {p2, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyTypeByRcsProfile(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object p2

    goto :goto_25

    :cond_24
    move-object p2, v1

    :goto_25
    if-ne p2, v1, :cond_2b

    .line 29
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyTypeByMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object p2

    .line 32
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPolicyType: phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " => "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MnoStrategyCreator"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static getPolicyTypeByMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .registers 3

    .line 89
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_9e

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_c

    goto/16 :goto_9e

    .line 91
    :cond_c
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 92
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 93
    :cond_15
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 94
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 95
    :cond_1e
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_25

    .line 96
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 97
    :cond_25
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_2c

    .line 98
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 99
    :cond_2c
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_33

    .line 100
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 101
    :cond_33
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_3a

    .line 102
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 103
    :cond_3a
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_41

    .line 104
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 105
    :cond_41
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_48

    .line 106
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 107
    :cond_48
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_4f

    .line 108
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 109
    :cond_4f
    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_56

    .line 110
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CTC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 111
    :cond_56
    sget-object v0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_5d

    .line 112
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CU:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 113
    :cond_5d
    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_64

    .line 114
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 115
    :cond_64
    sget-object v0, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_6b

    .line 116
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 117
    :cond_6b
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_72

    .line 118
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 119
    :cond_72
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 120
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 121
    :cond_83
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 122
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 123
    :cond_94
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_9b

    .line 124
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 127
    :cond_9b
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 90
    :cond_9e
    :goto_9e
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0
.end method

.method private static getPolicyTypeByRcsAs(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .registers 3

    const-string v0, "jibe"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 39
    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_28

    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_28

    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_28

    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_BELGIUM:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_19

    goto :goto_28

    .line 41
    :cond_19
    sget-object p0, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_25

    sget-object p0, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_22

    goto :goto_25

    .line 44
    :cond_22
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 42
    :cond_25
    :goto_25
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 40
    :cond_28
    :goto_28
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    :cond_2b
    const-string/jumbo v0, "sec"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 47
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_3b

    .line 48
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 50
    :cond_3b
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 53
    :cond_3e
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0
.end method

.method private static getPolicyTypeByRcsProfile(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .registers 3

    const-string v0, "UP"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 60
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_f

    .line 61
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 62
    :cond_f
    sget-object p0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_16

    .line 63
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 64
    :cond_16
    sget-object p0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_1d

    .line 65
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 66
    :cond_1d
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 67
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 68
    :cond_26
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p0

    if-nez p0, :cond_59

    sget-object p0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_31

    goto :goto_59

    .line 70
    :cond_31
    sget-object p0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_38

    .line 71
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 72
    :cond_38
    sget-object p0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_3f

    .line 73
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 74
    :cond_3f
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_46

    .line 75
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CTC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 76
    :cond_46
    sget-object p0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_4d

    .line 77
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CU:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 78
    :cond_4d
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p0

    if-eqz p0, :cond_56

    .line 79
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 81
    :cond_56
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 69
    :cond_59
    :goto_59
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 84
    :cond_5c
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0
.end method

.method public static makeInstance(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .registers 5

    .line 132
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object p0

    .line 134
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator$1;->$SwitchMap$com$sec$internal$ims$settings$RcsPolicySettings$RcsPolicyType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9e

    .line 219
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 220
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9a

    .line 215
    :pswitch_18
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9a

    .line 212
    :pswitch_1f
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9a

    .line 209
    :pswitch_26
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9a

    .line 206
    :pswitch_2d
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9a

    .line 197
    :pswitch_34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VodaUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VodaUPStrategy;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9a

    .line 194
    :pswitch_3b
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 191
    :pswitch_41
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 185
    :pswitch_47
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/TceStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/TceStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 182
    :pswitch_4d
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 179
    :pswitch_53
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 176
    :pswitch_59
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SprStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/SprStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 173
    :pswitch_5f
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 170
    :pswitch_65
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 167
    :pswitch_6b
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 164
    :pswitch_71
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 159
    :pswitch_77
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DTStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DTStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 156
    :pswitch_7d
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilUPStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilUPStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 153
    :pswitch_83
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 150
    :pswitch_89
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 145
    :pswitch_8f
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/UsccStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/UsccStrategy;-><init>(Landroid/content/Context;I)V

    goto :goto_9a

    .line 142
    :pswitch_95
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    invoke-direct {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 224
    :goto_9a
    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->setPolicyType(Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)V

    return-object v0

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_8f
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_83
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_41
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
        :pswitch_18
    .end packed-switch
.end method
