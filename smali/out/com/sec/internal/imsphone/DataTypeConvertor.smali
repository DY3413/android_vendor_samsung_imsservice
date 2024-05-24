.class public Lcom/sec/internal/imsphone/DataTypeConvertor;
.super Ljava/lang/Object;
.source "DataTypeConvertor.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DataTypeConvertor"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallEndReasonFromFW(I)I
    .registers 2

    .line 0
    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_13

    const/16 v0, 0xfa3

    if-eq p0, v0, :cond_10

    const/16 v0, 0xfa5

    if-eq p0, v0, :cond_d

    goto :goto_14

    :cond_d
    const/16 p0, 0x1a

    goto :goto_14

    :cond_10
    const/16 p0, 0x14

    goto :goto_14

    :cond_13
    const/4 p0, 0x5

    :goto_14
    return p0
.end method

.method public static convertCallErrorReasonToFw(I)I
    .registers 2

    .line 0
    const/16 v0, 0x17d

    if-eq p0, v0, :cond_9a

    const/16 v0, 0x17e

    if-eq p0, v0, :cond_9a

    const/16 v0, 0x457

    if-eq p0, v0, :cond_97

    const/16 v0, 0x458

    if-eq p0, v0, :cond_97

    const/16 v0, 0xbc1

    if-eq p0, v0, :cond_94

    const/16 v0, 0xbc2

    if-eq p0, v0, :cond_91

    sparse-switch p0, :sswitch_data_9e

    packed-switch p0, :pswitch_data_f4

    packed-switch p0, :pswitch_data_100

    packed-switch p0, :pswitch_data_10a

    packed-switch p0, :pswitch_data_11a

    packed-switch p0, :pswitch_data_124

    packed-switch p0, :pswitch_data_12e

    goto/16 :goto_9c

    :pswitch_2f
    const/16 p0, 0x92

    goto/16 :goto_9c

    :pswitch_33
    const/16 p0, 0xfa5

    goto/16 :goto_9c

    :pswitch_37
    const/16 p0, 0xf3

    goto/16 :goto_9c

    :pswitch_3b
    const/16 p0, 0x16c

    goto/16 :goto_9c

    :pswitch_3f
    const/16 p0, 0x3f8

    goto/16 :goto_9c

    :pswitch_43
    const/16 p0, 0x161

    goto/16 :goto_9c

    :pswitch_47
    const/16 p0, 0x15f

    goto/16 :goto_9c

    :pswitch_4b
    const/16 p0, 0x153

    goto/16 :goto_9c

    :pswitch_4f
    const/16 p0, 0x156

    goto :goto_9c

    :pswitch_52
    const/16 p0, 0x5eb

    goto :goto_9c

    :pswitch_55
    const/16 p0, 0x14c

    goto :goto_9c

    :sswitch_58
    const/16 p0, 0x7a

    goto :goto_9c

    :sswitch_5b
    const/16 p0, 0xca

    goto :goto_9c

    :sswitch_5e
    const/16 p0, 0x57f

    goto :goto_9c

    :sswitch_61
    const/16 p0, 0x644

    goto :goto_9c

    :pswitch_64
    :sswitch_64
    const/16 p0, 0x160

    goto :goto_9c

    :sswitch_67
    const/16 p0, 0x192

    goto :goto_9c

    :sswitch_6a
    const/16 p0, 0x64d

    goto :goto_9c

    :sswitch_6d
    const/16 p0, 0xc2b

    goto :goto_9c

    :pswitch_70
    :sswitch_70
    const/16 p0, 0x154

    goto :goto_9c

    :sswitch_73
    const/16 p0, 0x169

    goto :goto_9c

    :pswitch_76
    :sswitch_76
    const/16 p0, 0x152

    goto :goto_9c

    :pswitch_79
    :sswitch_79
    const/16 p0, 0x162

    goto :goto_9c

    :sswitch_7c
    const/16 p0, 0x151

    goto :goto_9c

    :sswitch_7f
    const/16 p0, 0x1f8

    goto :goto_9c

    :sswitch_82
    const/16 p0, 0x14e

    goto :goto_9c

    :sswitch_85
    const/16 p0, 0x14f

    goto :goto_9c

    :sswitch_88
    const/16 p0, 0x14b

    goto :goto_9c

    :sswitch_8b
    const/16 p0, 0x1fe

    goto :goto_9c

    :sswitch_8e
    const/16 p0, 0x1f5

    goto :goto_9c

    :cond_91
    :pswitch_91
    :sswitch_91
    const/16 p0, 0x3f6

    goto :goto_9c

    :cond_94
    :pswitch_94
    const/16 p0, 0x57c

    goto :goto_9c

    :cond_97
    const/16 p0, 0x4b1

    goto :goto_9c

    :cond_9a
    const/16 p0, 0x2328

    :goto_9c
    return p0

    nop

    :sswitch_data_9e
    .sparse-switch
        0xc8 -> :sswitch_8e
        0xd2 -> :sswitch_8b
        0xdc -> :sswitch_8e
        0x190 -> :sswitch_88
        0x198 -> :sswitch_85
        0x19f -> :sswitch_82
        0x1e0 -> :sswitch_7f
        0x1e4 -> :sswitch_7c
        0x244 -> :sswitch_79
        0x258 -> :sswitch_76
        0x25b -> :sswitch_73
        0x25e -> :sswitch_70
        0x451 -> :sswitch_6d
        0x4b1 -> :sswitch_6a
        0x579 -> :sswitch_67
        0x5e3 -> :sswitch_64
        0x641 -> :sswitch_61
        0x6a7 -> :sswitch_5e
        0x70a -> :sswitch_5b
        0x9cf -> :sswitch_58
        0xbb9 -> :sswitch_91
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x193
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_70
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x1e6
        :pswitch_76
        :pswitch_4b
        :pswitch_70
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x1f4
        :pswitch_47
        :pswitch_47
        :pswitch_79
        :pswitch_64
        :pswitch_43
        :pswitch_79
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x9c8
        :pswitch_91
        :pswitch_94
        :pswitch_3f
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0xa88
        :pswitch_3b
        :pswitch_3b
        :pswitch_37
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x1777
        :pswitch_91
        :pswitch_91
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method

.method public static convertCallRejectReasonFromFW(I)I
    .registers 2

    .line 0
    const/16 v0, 0x70

    if-eq p0, v0, :cond_39

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_37

    const/16 v0, 0x90

    if-eq p0, v0, :cond_34

    const/16 v0, 0x152

    if-eq p0, v0, :cond_32

    const/16 v0, 0x154

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x16d

    if-eq p0, v0, :cond_2c

    const/16 v0, 0xfa7

    if-eq p0, v0, :cond_29

    packed-switch p0, :pswitch_data_3c

    const/4 p0, -0x1

    goto :goto_3a

    :pswitch_21
    const/16 p0, 0xc

    goto :goto_3a

    :pswitch_24
    const/4 p0, 0x3

    goto :goto_3a

    :pswitch_26
    const/16 p0, 0xd

    goto :goto_3a

    :cond_29
    const/16 p0, 0xf

    goto :goto_3a

    :cond_2c
    const/16 p0, 0x10

    goto :goto_3a

    :cond_2f
    const/16 p0, 0x9

    goto :goto_3a

    :cond_32
    const/4 p0, 0x2

    goto :goto_3a

    :cond_34
    const/16 p0, 0x8

    goto :goto_3a

    :cond_37
    const/4 p0, 0x7

    goto :goto_3a

    :cond_39
    :pswitch_39
    const/4 p0, 0x6

    :goto_3a
    return p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1f6
        :pswitch_26
        :pswitch_26
        :pswitch_24
        :pswitch_39
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public static convertEccCatToURN(I)Ljava/lang/String;
    .registers 4

    .line 67
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 68
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/16 v1, 0xfe

    if-ne p0, v1, :cond_10

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_10
    const/16 v1, 0x10

    if-ne p0, v1, :cond_18

    const-string/jumbo p0, "urn:service:sos.mountain"

    return-object p0

    :cond_18
    const/16 v1, 0x8

    if-ne p0, v1, :cond_20

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_20
    const/4 v1, 0x4

    const-string/jumbo v2, "urn:service:sos.fire"

    if-ne p0, v1, :cond_27

    return-object v2

    :cond_27
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2e

    const-string/jumbo p0, "urn:service:sos.ambulance"

    return-object p0

    :cond_2e
    const/4 v1, 0x1

    if-ne p0, v1, :cond_35

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_35
    const/16 v1, 0x14

    if-ne p0, v1, :cond_3d

    const-string/jumbo p0, "urn:service:sos.traffic"

    return-object p0

    .line 85
    :cond_3d
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x6

    if-ne p0, v0, :cond_47

    return-object v2

    :cond_47
    const-string/jumbo p0, "urn:service:sos"

    return-object p0
.end method

.method public static convertEccCatToURNSpecificKor(I)Ljava/lang/String;
    .registers 3

    .line 0
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_8
    const/16 v0, 0x8

    if-ne p0, v0, :cond_10

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_10
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const-string/jumbo p0, "urn:service:sos.fire"

    return-object p0

    :cond_17
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1e

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_1e
    const/4 v0, 0x6

    const-string/jumbo v1, "urn:service:sos.country-specific.kr.111"

    if-ne p0, v0, :cond_25

    return-object v1

    :cond_25
    const/4 v0, 0x7

    if-ne p0, v0, :cond_29

    return-object v1

    :cond_29
    const/4 v0, 0x3

    if-ne p0, v0, :cond_30

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.113"

    return-object p0

    :cond_30
    const/16 v0, 0x12

    if-ne p0, v0, :cond_38

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.117"

    return-object p0

    :cond_38
    const/16 v0, 0x13

    if-ne p0, v0, :cond_40

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.118"

    return-object p0

    :cond_40
    const/16 v0, 0x9

    if-ne p0, v0, :cond_48

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.125"

    return-object p0

    :cond_48
    const-string/jumbo p0, "urn:service:sos"

    return-object p0
.end method

.method public static convertToClirPrefix(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    goto :goto_14

    :cond_b
    const-string/jumbo p0, "unknown"

    goto :goto_14

    :cond_f
    const-string p0, "*31#"

    goto :goto_14

    :cond_12
    const-string p0, "#31#"

    :goto_14
    return-object p0
.end method

.method public static convertToGoogleCallType(I)I
    .registers 2

    .line 0
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_c

    :pswitch_4
    goto :goto_a

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_a

    :pswitch_7
    const/4 v0, 0x5

    goto :goto_a

    :pswitch_9
    const/4 v0, 0x4

    :goto_a
    :pswitch_a
    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method public static convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;
    .registers 4

    .line 36
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0
.end method

.method public static convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .registers 8

    .line 279
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 283
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1a

    const/16 v5, 0xf

    if-eq v1, v5, :cond_28

    const/16 v5, 0xc

    if-eq v1, v5, :cond_26

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1c

    :cond_1a
    move v1, v4

    goto :goto_33

    .line 291
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v1

    if-ne v1, v3, :cond_24

    move v1, v2

    goto :goto_33

    :cond_24
    const/4 v1, 0x4

    goto :goto_33

    :cond_26
    move v1, v3

    goto :goto_33

    .line 298
    :cond_28
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v1

    if-ne v1, v3, :cond_31

    const/16 v1, 0x8

    goto :goto_33

    :cond_31
    const/16 v1, 0x10

    .line 310
    :goto_33
    sget-object v5, Lcom/sec/internal/imsphone/DataTypeConvertor$1;->$SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType:[I

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_68

    :pswitch_42
    move v2, v3

    goto :goto_4f

    :pswitch_44
    const/16 v2, 0x14

    goto :goto_4f

    :pswitch_47
    const/16 v2, 0x13

    goto :goto_4f

    :pswitch_4a
    const/16 v2, 0x12

    goto :goto_4f

    :pswitch_4d
    const/16 v2, 0x11

    .line 335
    :goto_4f
    :pswitch_4f
    iput v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 336
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/4 v1, 0x3

    .line 337
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 338
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 339
    iput v4, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_61

    .line 341
    :cond_5f
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 343
    :goto_61
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result p0

    iput p0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_42
        :pswitch_42
        :pswitch_4f
        :pswitch_4d
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
    .end packed-switch
.end method

.method public static convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;
    .registers 13

    .line 594
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 595
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setPhoneId(I)V

    if-nez p1, :cond_b

    return-object v0

    .line 599
    :cond_b
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 600
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v2

    const-string v3, "android.telephony.ims.extra.CONFERENCE"

    const/4 v4, 0x0

    .line 605
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v1, :cond_5d

    const-string v5, "imsEmergencyRat"

    .line 608
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DisplayText"

    .line 609
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.telephony.extra.ALERT_INFO"

    .line 610
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.ims.extra.ECHO_CALL_ID"

    .line 611
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 612
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 613
    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 615
    :cond_41
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 616
    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    .line 618
    :cond_4a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 619
    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCallId(Ljava/lang/String;)V

    :cond_53
    const-string v6, "isECallConvertedToNormal"

    .line 621
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setECallConvertedToNormal(Z)V

    goto :goto_5f

    :cond_5d
    const-string v5, ""

    :goto_5f
    const-string v1, "e_call"

    .line 624
    invoke-virtual {p1, v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v6, 0x2

    if-nez v1, :cond_96

    iget v1, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    if-ne v1, v6, :cond_6d

    goto :goto_96

    :cond_6d
    const-string p0, "dialstring"

    .line 650
    invoke-virtual {p1, p0, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_7c

    const/16 p0, 0xc

    .line 652
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto/16 :goto_117

    .line 654
    :cond_7c
    iget p0, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {p0, v1, p2, v3}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    const-string p0, "oir"

    .line 655
    invoke-virtual {p1, p0, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToClirPrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 626
    :cond_96
    :goto_96
    iget v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v6, v1, p2, v3}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 627
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setEmergencyRat(Ljava/lang/String;)V

    const-string p2, "VoWIFI"

    .line 629
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    if-eqz p2, :cond_b2

    const/16 p2, 0x12

    .line 630
    invoke-virtual {p1, v1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_b7

    :cond_b2
    const/16 p2, 0xd

    .line 632
    invoke-virtual {p1, v1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 635
    :goto_b7
    invoke-static {p0, v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->isRequiredKorSpecificURN(II)Z

    move-result p0

    if-eqz p0, :cond_c5

    .line 636
    invoke-static {v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertEccCatToURNSpecificKor(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_cc

    .line 638
    :cond_c5
    invoke-static {v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertEccCatToURN(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 641
    :goto_cc
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_117

    .line 642
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 643
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_117

    .line 644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 645
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendedEmergencyUrn = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DataTypeConvertor"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    :cond_117
    :goto_117
    if-eqz v3, :cond_11c

    .line 660
    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 662
    :cond_11c
    iget-object p0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {p0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 663
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static convertToSecCallType(I)I
    .registers 2

    const/4 v0, 0x0

    .line 144
    invoke-static {v0, p0, v0, v0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result p0

    return p0
.end method

.method public static convertToSecCallType(IIZZ)I
    .registers 7

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x7

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_28

    :pswitch_6
    goto :goto_26

    :pswitch_7
    if-ne p0, v2, :cond_27

    goto :goto_1b

    :pswitch_a
    const/4 v0, 0x4

    goto :goto_27

    :pswitch_c
    const/4 v0, 0x3

    goto :goto_27

    :pswitch_e
    if-ne p0, v2, :cond_13

    const/16 v0, 0x8

    goto :goto_27

    :cond_13
    if-eqz p3, :cond_17

    const/4 v0, 0x6

    goto :goto_27

    :cond_17
    move v0, v2

    goto :goto_27

    :pswitch_19
    if-ne p0, v2, :cond_1d

    :goto_1b
    move v0, v1

    goto :goto_27

    :cond_1d
    if-eqz p2, :cond_22

    const/16 v0, 0x9

    goto :goto_27

    :cond_22
    if-eqz p3, :cond_27

    const/4 v0, 0x5

    goto :goto_27

    :goto_26
    const/4 v0, 0x0

    :cond_27
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_19
        :pswitch_6
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method public static convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;
    .registers 9

    .line 227
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 232
    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_31

    if-eq v1, v3, :cond_2e

    const/16 v5, 0xd

    if-eq v1, v2, :cond_2b

    const/4 v6, 0x4

    if-eq v1, v6, :cond_29

    const/16 v5, 0x8

    const/16 v6, 0xf

    if-eq v1, v5, :cond_26

    const/16 v5, 0x10

    if-eq v1, v5, :cond_24

    const/4 v1, -0x1

    :goto_20
    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_32

    :cond_24
    move v1, v4

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    move v4, v6

    goto :goto_32

    :cond_29
    move v1, v4

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    move v4, v5

    goto :goto_32

    :cond_2e
    const/16 v1, 0xc

    goto :goto_20

    :cond_31
    move v1, v4

    .line 257
    :goto_32
    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 259
    iget v6, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq v6, v3, :cond_3e

    if-eq v6, v2, :cond_3b

    goto :goto_40

    .line 264
    :cond_3b
    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_40

    .line 261
    :cond_3e
    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 270
    :goto_40
    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 271
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoOrientation(I)V

    .line 272
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    .line 273
    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    return-object v0
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .registers 4

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string/jumbo v0, "urn:service:unspecified"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xfe

    if-eqz v0, :cond_14

    return v2

    :cond_14
    const-string/jumbo v0, "urn:service:sos.mountain"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 p0, 0x10

    return p0

    :cond_20
    const-string/jumbo v0, "urn:service:sos.marine"

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 p0, 0x8

    return p0

    :cond_2c
    const-string/jumbo v0, "urn:service:sos.fire"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 p0, 0x4

    return p0

    :cond_37
    const-string/jumbo v0, "urn:service:sos.ambulance"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 p0, 0x2

    return p0

    :cond_42
    const-string/jumbo v0, "urn:service:sos.police"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 p0, 0x1

    return p0

    :cond_4d
    const-string/jumbo v0, "urn:service:sos.traffic"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/16 p0, 0x14

    return p0

    :cond_59
    const-string/jumbo v0, "urn:service:sos"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_63

    return v1

    :cond_63
    return v2
.end method

.method public static convertUtErrorReasonToFw(I)I
    .registers 2

    .line 0
    const/16 v0, 0x193

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x194

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x198

    if-eq p0, v0, :cond_19

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x1389

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    goto :goto_21

    :cond_16
    const/16 p0, 0x325

    goto :goto_21

    :cond_19
    const/16 p0, 0x324

    goto :goto_21

    :cond_1c
    const/16 p0, 0x321

    goto :goto_21

    :cond_1f
    const/16 p0, 0x92

    :goto_21
    return p0
.end method

.method public static getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .registers 4

    const-string/jumbo v0, "unknown"

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "RESTRICTED"

    .line 545
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_40

    :cond_22
    const-string v0, "Coin line/payphone"

    .line 548
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p0, 0x4

    return p0

    :cond_2c
    const-string v0, "Interaction with other service"

    .line 550
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "Unavailable"

    .line 551
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p0, 0x2

    return p0

    :cond_3f
    :goto_3f
    return v1

    :cond_40
    :goto_40
    const/4 p0, 0x1

    return p0
.end method

.method public static getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I
    .registers 3

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "Anonymous"

    .line 560
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string v0, "Coin line/payphone"

    .line 562
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x4

    return p0

    .line 564
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_24

    const/4 p0, 0x3

    return p0

    :cond_24
    return v1
.end method

.method private static isRequiredKorSpecificURN(II)Z
    .registers 6

    .line 717
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 718
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMnoAsNwPlmn(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    const-string v1, "persist.omc.sales_code"

    const-string v2, ""

    .line 719
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v1, "ro.csc.sales_code"

    .line 721
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    :cond_1d
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4f

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_31

    const-string v0, "KTC"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_4f

    .line 728
    :cond_31
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_4d

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4c

    const/4 p0, 0x7

    if-eq p1, p0, :cond_4c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4c

    const/16 p0, 0x12

    if-eq p1, p0, :cond_4c

    const/16 p0, 0x13

    if-eq p1, p0, :cond_4c

    const/16 p0, 0x9

    if-ne p1, p0, :cond_4d

    :cond_4c
    return v3

    :cond_4d
    const/4 p0, 0x0

    return p0

    :cond_4f
    :goto_4f
    return v3
.end method

.method private static processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;
    .registers 5

    .line 674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_99

    .line 676
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    .line 677
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-eqz p0, :cond_99

    .line 679
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "EXTRA_CALL_IMPORTANCE"

    .line 680
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "importance"

    .line 681
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2e
    const-string v1, "EXTRA_CALL_SUBJECT"

    .line 686
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string/jumbo v2, "subject"

    .line 688
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    const-string v1, "EXTRA_CALL_IMAGE"

    .line 692
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "image"

    .line 694
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    const-string v1, "EXTRA_CALL_LATITUDE"

    .line 698
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string v2, "EXTRA_CALL_LONGITUDE"

    .line 700
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string v3, "longitude"

    .line 702
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "latitude"

    .line 704
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA_CALL_RADIUS"

    .line 706
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string/jumbo v2, "radius"

    .line 708
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 707
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    return-object v0
.end method
