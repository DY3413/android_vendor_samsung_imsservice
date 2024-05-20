.class public Lcom/sec/internal/helper/ImsCallUtil;
.super Ljava/lang/Object;
.source "ImsCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;,
        Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;,
        Lcom/sec/internal/helper/ImsCallUtil$NOTIFY_CALL_END_MODE;
    }
.end annotation


# static fields
.field public static final ECC_SERVICE_URN_DEFAULT:Ljava/lang/String; = "urn:service:sos"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallUtil"

.field public static final NOT_ALLOWED:Ljava/lang/String; = "NotAllowed"


# direct methods
.method public static synthetic $r8$lambda$U39oHb4EqfzuLJ6wtqdxgr3lZ_8(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->lambda$getVerstat$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tB4CfY_aeqEgJc_SvoYjlx0WOgM(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->lambda$getVerstat$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallEndReasonToFramework(II)I
    .locals 3

    const/16 v0, 0xc8

    const/16 v1, 0xb

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    const/4 p0, 0x7

    if-eq p1, p0, :cond_2

    if-eq p1, v1, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x70a

    return p0

    :cond_1
    const/16 p0, 0x1e6

    return p0

    :cond_2
    const/16 p0, 0x454

    return p0

    :cond_3
    const/4 p0, 0x4

    if-eq p1, p0, :cond_c

    if-eq p1, v1, :cond_b

    const/16 p0, 0xc

    if-eq p1, p0, :cond_a

    const/16 p0, 0xe

    if-eq p1, p0, :cond_9

    const/16 p0, 0xf

    if-eq p1, p0, :cond_8

    const/16 p0, 0x14

    if-eq p1, p0, :cond_7

    const/16 p0, 0x15

    if-eq p1, p0, :cond_6

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_5

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_4

    return v0

    :cond_4
    const/16 p0, 0x1778

    return p0

    :cond_5
    const/16 p0, 0x1779

    return p0

    :cond_6
    const/16 p0, 0x6a7

    return p0

    :cond_7
    const/16 p0, 0x1777

    return p0

    :cond_8
    const/16 p0, 0x6a5

    return p0

    :cond_9
    const/16 p0, 0x45b

    return p0

    :cond_a
    const/16 p0, 0x9c7

    return p0

    :cond_b
    const/16 p0, 0x4b1

    return p0

    :cond_c
    const/16 p0, 0x453

    return p0
.end method

.method public static convertCsCallStateToDialogState(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDeregiReason(I)I
    .locals 1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const/16 p0, 0xe

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static convertEccCatToUrn(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "urn:service:sos.ambulance"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "urn:service:sos.fire"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "urn:service:sos.mountain"

    return-object p0

    :cond_4
    const/16 v0, 0x14

    if-ne p0, v0, :cond_5

    const-string/jumbo p0, "urn:service:sos.traffic"

    return-object p0

    :cond_5
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_6

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_6
    const-string/jumbo p0, "urn:service:sos"

    return-object p0
.end method

.method public static convertEccCatToUrnSpecificKor(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "urn:service:sos.fire"

    return-object p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_2
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_3
    const/16 v0, 0x12

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.117"

    return-object p0

    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.113"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    const-string/jumbo v1, "urn:service:sos.country-specific.kr.111"

    if-ne p0, v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    return-object v1

    :cond_7
    const/16 v0, 0x13

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.118"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.125"

    return-object p0

    :cond_9
    const-string/jumbo p0, "urn:service:sos"

    return-object p0
.end method

.method public static convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I
    .locals 3

    .line 865
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x641

    return p0

    .line 867
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x64a

    return p0

    .line 869
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x644

    if-eqz v0, :cond_2

    return v1

    .line 871
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x648

    return p0

    .line 873
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x655

    return p0

    .line 875
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 877
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 879
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x64f

    return p0

    .line 881
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 883
    :cond_8
    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 885
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 887
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    .line 889
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x5e8

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 1

    .line 532
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    :goto_0
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static convertRecordEventForCmcInfo(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v1, 0x2bd

    if-eq p0, v1, :cond_4

    const/16 v0, 0x2be

    if-eq p0, v0, :cond_2

    const/16 v0, 0x320

    if-eq p0, v0, :cond_1

    const/16 v0, 0x321

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    :cond_4
    :goto_0
    return v0
.end method

.method public static convertSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "%23"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    .line 239
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "urn:service:sos.police"

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "urn:service:sos.ambulance"

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string/jumbo v0, "urn:service:sos.fire"

    .line 431
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string/jumbo v0, "urn:service:sos.marine"

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const-string/jumbo v0, "urn:service:sos.mountain"

    .line 435
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x10

    return p0

    :cond_4
    const-string/jumbo v0, "urn:service:sos.traffic"

    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x14

    return p0

    :cond_5
    const-string/jumbo v0, "urn:service:sos"

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/16 p0, 0xfe

    return p0
.end method

.method public static getAudioCodec(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    if-nez p0, :cond_0

    .line 794
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_0
    const-string v0, "AMR-WB"

    .line 795
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_1
    const-string v0, "AMR-NB"

    .line 797
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_2
    const-string v0, "EVS-FB"

    .line 799
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 800
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_3
    const-string v0, "EVS-SWB"

    .line 801
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 802
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_4
    const-string v0, "EVS-WB"

    .line 803
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 804
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_5
    const-string v0, "EVS-NB"

    .line 805
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 806
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_6
    const-string v0, "EVS"

    .line 807
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 808
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 810
    :cond_7
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    :goto_0
    return-object p0
.end method

.method public static getAudioMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "AUTO"

    goto :goto_0

    :cond_0
    const-string p0, "DELAYED_MEDIA_CMC"

    goto :goto_0

    :cond_1
    const-string p0, "DELAYED_MEDIA"

    goto :goto_0

    :cond_2
    const-string p0, "CMC_CS_RELAY"

    goto :goto_0

    :cond_3
    const-string p0, "CMC_AUTO"

    goto :goto_0

    :cond_4
    const-string p0, "STOP"

    goto :goto_0

    :cond_5
    const-string p0, "CPVE"

    goto :goto_0

    :cond_6
    const-string p0, "SAE"

    :goto_0
    return-object p0
.end method

.method public static getCallTypeForRtt(IZ)I
    .locals 12

    const/16 v0, 0x11

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/16 v5, 0x13

    const/4 v6, 0x5

    const/16 v7, 0x12

    const/4 v8, 0x2

    const/16 v9, 0xf

    const/4 v10, 0x1

    const/16 v11, 0xe

    if-eqz p1, :cond_b

    if-ne p0, v10, :cond_0

    return v11

    :cond_0
    if-ne p0, v8, :cond_1

    return v9

    :cond_1
    if-ne p0, v6, :cond_2

    return v2

    :cond_2
    if-ne p0, v3, :cond_3

    return v0

    :cond_3
    if-ne p0, v4, :cond_4

    return v7

    :cond_4
    if-ne p0, v1, :cond_5

    return v5

    :cond_5
    if-ne p0, v7, :cond_6

    return v4

    :cond_6
    if-ne p0, v11, :cond_7

    return v10

    :cond_7
    if-ne p0, v9, :cond_8

    return v8

    :cond_8
    if-ne p0, v0, :cond_9

    return v3

    :cond_9
    if-ne p0, v2, :cond_a

    return v6

    :cond_a
    if-ne p0, v5, :cond_11

    return v1

    :cond_b
    if-ne p0, v11, :cond_c

    return v10

    :cond_c
    if-ne p0, v9, :cond_d

    return v8

    :cond_d
    if-ne p0, v7, :cond_e

    return v4

    :cond_e
    if-ne p0, v5, :cond_f

    return v1

    :cond_f
    if-ne p0, v2, :cond_10

    return v6

    :cond_10
    if-ne p0, v0, :cond_11

    return v3

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static getConferenceUri(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 756
    :try_start_0
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :try_start_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    .line 759
    :goto_0
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 761
    :goto_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUri()Ljava/lang/String;

    move-result-object p2

    .line 762
    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConferenceUri, confUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUriMccmncType()I

    move-result v3

    const-string v4, "ims.mncXXX.mccXXX.3gppnetwork.org"

    .line 766
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    if-ne v3, p0, :cond_1

    .line 769
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p0, 0x2

    if-eqz v3, :cond_2

    if-ne v3, p0, :cond_3

    .line 773
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p0, :cond_3

    .line 774
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mnc"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mncXXX"

    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mcc"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mccXXX"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 778
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p4, p1, :cond_8

    .line 779
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "313"

    .line 780
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const-string p0, "312"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "670"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_6
    const-string/jumbo p2, "sip:n-way_voice@firstnet.com"

    goto :goto_2

    .line 783
    :cond_7
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isLLA(I)Z

    move-result p0

    if-nez p0, :cond_8

    .line 784
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sip:n-way_voice@"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 785
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ATT confUri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-object p2
.end method

.method public static getIdForString(Ljava/lang/String;)I
    .locals 0

    .line 855
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 860
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static getPEmergencyInfo(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p3

    .line 702
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 704
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 707
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->isCSpire(I)Z

    move-result v2

    const/4 v3, 0x4

    const-string v4, "0000:0000:0000:0000"

    const-string v5, "IEEE-802.11;i-wlan-node-id="

    if-eqz v2, :cond_1

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 709
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->isDSH(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v5, "WSS-WIFI-KEY;generic-key="

    goto/16 :goto_6

    .line 713
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUriByImpi(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 716
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "E911AID"

    .line 717
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 718
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current address e911aid:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 715
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v4, :cond_9

    .line 722
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "0000000000000000"

    goto/16 :goto_6

    .line 727
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "1"

    .line 729
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id"

    const-string v12, "msisdn"

    const-string v13, "location_status"

    const-string/jumbo v14, "tc_status"

    const-string v15, "e911_address_id"

    const-string v16, "e911_aid_expiration"

    const-string v17, "e911_server_data"

    const-string v18, "e911_server_url"

    const-string/jumbo v19, "type"

    .line 730
    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v8

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->LINES_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v9, "is_native = ?"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 736
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 737
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "temp e911Aid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v4, v0

    .line 742
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final e911Aid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 744
    :cond_7
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    if-eqz v1, :cond_9

    .line 746
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_8

    .line 734
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v2

    :cond_9
    :goto_5
    move-object v0, v4

    .line 749
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhraseByMno(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "phrase"

    const-string/jumbo v3, "xml"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 939
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "can not find matched phrase.xml"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 943
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    .line 944
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v2, "phrases"

    .line 947
    invoke-static {p0, v2}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 949
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    .line 955
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    const-string v5, "mnoname"

    .line 956
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 957
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v5, "missed_call_sms"

    .line 958
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 959
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 962
    :cond_4
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 965
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 967
    :cond_5
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 278
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 283
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_2

    .line 284
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v0, p2

    .line 289
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 291
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p2

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p2, v0, :cond_3

    .line 293
    sget-object p1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getRemoteCallerId: dialing number for Urn from display name"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 296
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELKOM_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_4

    .line 298
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p0

    sget-object p1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p0, p1, :cond_4

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_4
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 308
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getRemoteCallerId: indefinite."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "anonymous"

    .line 312
    :cond_5
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->convertSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVerstat(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)Ljava/lang/String;
    .locals 3

    .line 991
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVerstat()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVerstat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[<>:;@]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 993
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 994
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 995
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 996
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verstat "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public static isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 641
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCSFBbySIPErrorCode(I)Z
    .locals 3

    .line 316
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCSFBbySIPErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_0
        0x190 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x195 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_0
        0x19f -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_0
        0x1e8 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x25b -> :sswitch_0
        0x25c -> :sswitch_0
        0x25e -> :sswitch_0
        0x458 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isCameraUsingCall(I)Z
    .locals 1

    .line 190
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isClientError(Lcom/sec/ims/util/SipError;)Z
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isCmcPrimaryType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isCmcSecondaryType(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isDataPreferredModeDuringCalling(Landroid/content/Context;)Z
    .locals 2

    .line 1006
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_preferred_mode_during_calling"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 614
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 619
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isE911Call(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmergencyAudioCall(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmergencyVideoCall(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 631
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 636
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 140
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Forbidden"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Registered"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isImsOutageError(Lcom/sec/ims/util/SipError;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 130
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->IMS_OUTAGE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Outage"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isMultiPdnRat(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNrAvailable(J)Z
    .locals 2

    const-wide/32 v0, 0x80000

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOneWayVideoCall(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOngoingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 610
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isP2pPrimaryType(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isRttCall(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isRttEmergencyCall(I)Z
    .locals 1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSrvccAvailable(ILcom/sec/internal/constants/Mno;ZLcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 672
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SRVCC during EPDG connected, ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 676
    :cond_0
    sget-object p2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SRVCC ver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return v0

    .line 681
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/16 p1, 0x8

    if-eq p0, p1, :cond_5

    const/16 p1, 0x9

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    if-ne p0, p1, :cond_6

    .line 690
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p3, p0, :cond_4

    move v0, p2

    :cond_4
    return v0

    .line 686
    :cond_5
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p3, p0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_1

    :cond_6
    return p2

    :cond_7
    :goto_1
    return v0
.end method

.method public static isTPhoneMode(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "telecom"

    .line 646
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 647
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.skt.prod.dialer"

    .line 648
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTPhoneRelaxMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 652
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isTPhoneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.skt.prod.dialer.sktincallscreen.provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "get_relaxation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 662
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 663
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 661
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 665
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-ne p1, v0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static isTimerVzwExpiredError(Lcom/sec/ims/util/SipError;)Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 v0, 0x9c5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTtyCall(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUpgradeCall(II)Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, v3, :cond_a

    const/16 v5, 0x9

    if-eq p0, v5, :cond_a

    const/16 v5, 0xa

    if-eq p0, v5, :cond_a

    const/16 v5, 0xb

    if-ne p0, v5, :cond_0

    goto :goto_4

    :cond_0
    if-ne p0, v2, :cond_1

    return v4

    :cond_1
    if-ne p0, v1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    return v3

    :cond_3
    if-ne p0, v0, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const/16 p0, 0x8

    if-ne p1, p0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    return v3

    :cond_7
    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x6

    if-ne p1, p0, :cond_8

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    return v3

    :cond_9
    return v4

    :cond_a
    :goto_4
    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_c

    if-ne p1, v0, :cond_b

    goto :goto_5

    :cond_b
    move v3, v4

    :cond_c
    :goto_5
    return v3
.end method

.method public static isVideoCall(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getVerstat$0(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "verstat"

    .line 993
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVerstat$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "="

    .line 994
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onConvertSipErrorReason(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)Lcom/sec/ims/util/SipError;
    .locals 7

    .line 816
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 823
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 824
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceType()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceReason()Ljava/lang/String;

    move-result-object v2

    .line 826
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object v3

    .line 828
    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceUrn : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 831
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "serviceUrn is Empty"

    .line 832
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object p0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne p0, v1, :cond_0

    .line 835
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    const-string/jumbo p0, "urn:service:sos"

    .line 836
    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "action is Empty"

    .line 838
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne p0, v0, :cond_2

    .line 842
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY_CSFB:Lcom/sec/ims/util/SipError;

    .line 843
    invoke-virtual {v0, v3}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    .line 846
    invoke-virtual {v0, v3}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static participantStatus(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "pending"

    return-object p0

    :pswitch_0
    const-string p0, "muted-via-focus"

    return-object p0

    :pswitch_1
    const-string p0, "alerting"

    return-object p0

    :pswitch_2
    const-string p0, "disconnected"

    return-object p0

    :pswitch_3
    const-string p0, "disconnecting"

    return-object p0

    :pswitch_4
    const-string p0, "connected"

    return-object p0

    :pswitch_5
    const-string p0, "dialing-out"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p3, :cond_1

    .line 265
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 267
    :cond_1
    sget-object p2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeUriPlusPrefix : ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] -> : ["

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p1
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 252
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    :cond_1
    sget-object p1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUriPlusPrefix : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] -> : ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public static validatePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 53
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneNumber: phonenumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method
