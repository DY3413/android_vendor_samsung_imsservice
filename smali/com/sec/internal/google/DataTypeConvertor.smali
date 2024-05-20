.class public Lcom/sec/internal/google/DataTypeConvertor;
.super Ljava/lang/Object;
.source "DataTypeConvertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallEndReasonFromFW(I)I
    .locals 1

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xfa3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfa5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1a

    goto :goto_0

    :cond_1
    const/16 p0, 0x14

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public static convertCallErrorReasonToFw(I)I
    .locals 1

    const/16 v0, 0x17d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x17e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x457

    if-eq p0, v0, :cond_2

    const/16 v0, 0x458

    if-eq p0, v0, :cond_2

    const/16 v0, 0xbc1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbc2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_0
    const/16 p0, 0x92

    goto/16 :goto_0

    :pswitch_1
    const/16 p0, 0xfa5

    goto/16 :goto_0

    :pswitch_2
    const/16 p0, 0xf3

    goto/16 :goto_0

    :pswitch_3
    const/16 p0, 0x16c

    goto/16 :goto_0

    :pswitch_4
    const/16 p0, 0x3f8

    goto/16 :goto_0

    :pswitch_5
    const/16 p0, 0x161

    goto/16 :goto_0

    :pswitch_6
    const/16 p0, 0x160

    goto/16 :goto_0

    :pswitch_7
    const/16 p0, 0x15f

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x153

    goto :goto_0

    :pswitch_9
    const/16 p0, 0x156

    goto :goto_0

    :pswitch_a
    const/16 p0, 0x5eb

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x14c

    goto :goto_0

    :sswitch_0
    const/16 p0, 0x7a

    goto :goto_0

    :sswitch_1
    const/16 p0, 0xca

    goto :goto_0

    :sswitch_2
    const/16 p0, 0x57f

    goto :goto_0

    :sswitch_3
    const/16 p0, 0x192

    goto :goto_0

    :sswitch_4
    const/16 p0, 0x64d

    goto :goto_0

    :sswitch_5
    const/16 p0, 0xc2b

    goto :goto_0

    :pswitch_c
    :sswitch_6
    const/16 p0, 0x154

    goto :goto_0

    :sswitch_7
    const/16 p0, 0x169

    goto :goto_0

    :pswitch_d
    :sswitch_8
    const/16 p0, 0x152

    goto :goto_0

    :pswitch_e
    :sswitch_9
    const/16 p0, 0x162

    goto :goto_0

    :sswitch_a
    const/16 p0, 0x151

    goto :goto_0

    :sswitch_b
    const/16 p0, 0x1f8

    goto :goto_0

    :sswitch_c
    const/16 p0, 0x14e

    goto :goto_0

    :sswitch_d
    const/16 p0, 0x14f

    goto :goto_0

    :sswitch_e
    const/16 p0, 0x14b

    goto :goto_0

    :sswitch_f
    const/16 p0, 0x1fe

    goto :goto_0

    :sswitch_10
    const/16 p0, 0x1f5

    goto :goto_0

    :cond_0
    :pswitch_f
    :sswitch_11
    const/16 p0, 0x3f6

    goto :goto_0

    :cond_1
    :pswitch_10
    const/16 p0, 0x57c

    goto :goto_0

    :cond_2
    const/16 p0, 0x4b1

    goto :goto_0

    :cond_3
    const/16 p0, 0x2328

    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_10
        0xd2 -> :sswitch_f
        0xdc -> :sswitch_10
        0x190 -> :sswitch_e
        0x198 -> :sswitch_d
        0x19f -> :sswitch_c
        0x1e0 -> :sswitch_b
        0x1e4 -> :sswitch_a
        0x244 -> :sswitch_9
        0x258 -> :sswitch_8
        0x25b -> :sswitch_7
        0x25e -> :sswitch_6
        0x451 -> :sswitch_5
        0x4b1 -> :sswitch_4
        0x579 -> :sswitch_3
        0x6a7 -> :sswitch_2
        0x70a -> :sswitch_1
        0x9cf -> :sswitch_0
        0xbb9 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e6
        :pswitch_d
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f4
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9c8
        :pswitch_f
        :pswitch_10
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa88
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1777
        :pswitch_f
        :pswitch_f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertCallRejectReasonFromFW(I)I
    .locals 1

    const/16 v0, 0x70

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_5

    const/16 v0, 0x90

    if-eq p0, v0, :cond_4

    const/16 v0, 0x152

    if-eq p0, v0, :cond_3

    const/16 v0, 0x154

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfa7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :pswitch_0
    const/16 p0, 0xc

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    goto :goto_0

    :cond_2
    const/16 p0, 0x9

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    goto :goto_0

    :cond_5
    const/4 p0, 0x7

    goto :goto_0

    :cond_6
    :pswitch_3
    const/4 p0, 0x6

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static convertEccCatToURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 64
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 65
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "urn:service:sos"

    if-eqz v1, :cond_0

    return-object v2

    .line 70
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0xfe

    if-ne p0, v1, :cond_1

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_1
    const/16 v1, 0x10

    if-ne p0, v1, :cond_2

    const-string/jumbo p0, "urn:service:sos.mountain"

    return-object p0

    :cond_2
    const/16 v1, 0x8

    if-ne p0, v1, :cond_3

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_3
    const/4 v1, 0x4

    const-string/jumbo v3, "urn:service:sos.fire"

    if-ne p0, v1, :cond_4

    return-object v3

    :cond_4
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    const-string/jumbo p0, "urn:service:sos.ambulance"

    return-object p0

    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_6

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_6
    const/16 v1, 0x14

    if-ne p0, v1, :cond_7

    const-string/jumbo p0, "urn:service:sos.traffic"

    return-object p0

    .line 86
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    return-object v3

    :cond_8
    return-object v2
.end method

.method public static convertEccCatToURNSpecificKor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "urn:service:sos"

    if-eqz v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xfe

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "urn:service:sos.fire"

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    const-string/jumbo v2, "urn:service:sos.country-specific.kr.111"

    if-ne p0, v0, :cond_5

    return-object v2

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    return-object v2

    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.113"

    return-object p0

    :cond_7
    const/16 v0, 0x12

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.117"

    return-object p0

    :cond_8
    const/16 v0, 0x13

    if-ne p0, v0, :cond_9

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.118"

    return-object p0

    :cond_9
    const/16 v0, 0x9

    if-ne p0, v0, :cond_a

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.125"

    return-object p0

    :cond_a
    return-object v1
.end method

.method public static convertToClirPrefix(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown"

    goto :goto_0

    :cond_1
    const-string p0, "*31#"

    goto :goto_0

    :cond_2
    const-string p0, "#31#"

    :goto_0
    return-object p0
.end method

.method public static convertToGoogleCallType(I)I
    .locals 1

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    :goto_0
    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 3

    .line 33
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0
.end method

.method public static convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 7

    .line 284
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 288
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/16 v5, 0xf

    if-eq v1, v5, :cond_4

    const/16 v5, 0xc

    if-eq v1, v5, :cond_3

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    .line 303
    :cond_4
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v1

    if-ne v1, v4, :cond_5

    const/16 v1, 0x8

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    .line 315
    :goto_0
    sget-object v5, Lcom/sec/internal/google/DataTypeConvertor$1;->$SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType:[I

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v2, v4

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x14

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x13

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x12

    goto :goto_1

    :pswitch_4
    const/16 v2, 0x11

    .line 340
    :goto_1
    :pswitch_5
    iput v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 341
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/4 v1, 0x3

    .line 342
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 343
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 344
    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 346
    :cond_6
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 348
    :goto_2
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result p0

    iput p0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 10

    .line 594
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 595
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setPhoneId(I)V

    .line 596
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v4, "EccCat"

    .line 605
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "imsEmergencyRat"

    .line 606
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DisplayText"

    .line 607
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.telephony.extra.ALERT_INFO"

    .line 608
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.ims.extra.ECHO_CALL_ID"

    .line 609
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 610
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 611
    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 613
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 614
    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    .line 616
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 618
    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCallId(Ljava/lang/String;)V

    :cond_2
    const-string v6, "com.samsung.telephony.extra.DIAL_CONFERENCE_CALL"

    .line 620
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v4

    move v1, v3

    :goto_0
    const-string v6, "e_call"

    .line 623
    invoke-virtual {p1, v6, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_6

    iget v6, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "dialstring"

    .line 646
    invoke-virtual {p1, p0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v7, :cond_5

    const/16 p0, 0xc

    .line 648
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_3

    .line 650
    :cond_5
    iget p0, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v2, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {p0, v2, p2, v1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    const-string p0, "oir"

    .line 651
    invoke-virtual {p1, p0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/google/DataTypeConvertor;->convertToClirPrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    goto :goto_3

    .line 625
    :cond_6
    :goto_1
    iget v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v7, v3, p2, v1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 626
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setEmergencyRat(Ljava/lang/String;)V

    const-string p2, "VoWIFI"

    .line 628
    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, "CallRadioTech"

    if-eqz p2, :cond_7

    const/16 p2, 0x12

    .line 629
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/16 p2, 0xe

    .line 631
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_2
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    const-string p2, "persist.omc.sales_code"

    .line 635
    invoke-static {p2, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 636
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "ro.csc.sales_code"

    .line 637
    invoke-static {p2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    :cond_8
    invoke-static {p0, v4}, Lcom/sec/internal/google/DataTypeConvertor;->isRequiredKorSpecificURN(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 641
    invoke-static {v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertEccCatToURNSpecificKor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_3

    .line 643
    :cond_9
    invoke-static {v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertEccCatToURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    :goto_3
    if-eqz v1, :cond_a

    .line 656
    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 658
    :cond_a
    iget-object p0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {p0}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 659
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static convertToSecCallType(I)I
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-static {v0, p0, v0, v0}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result p0

    return p0
.end method

.method public static convertToSecCallType(IIZZ)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x7

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    if-ne p0, v2, :cond_4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_4
    if-ne p0, v2, :cond_0

    const/16 v0, 0x8

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x6

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_2

    :pswitch_5
    if-ne p0, v2, :cond_2

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    const/16 v0, 0x9

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;
    .locals 8

    .line 232
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 237
    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/16 v2, 0xf

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_1

    const/4 v7, 0x4

    if-eq v1, v7, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    const/16 v2, 0xc

    goto :goto_0

    :cond_4
    move v2, v5

    .line 262
    :cond_5
    :goto_0
    sget-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 264
    iget v3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq v3, v6, :cond_7

    if-eq v3, v4, :cond_6

    goto :goto_1

    .line 269
    :cond_6
    sget-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_1

    .line 266
    :cond_7
    sget-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 275
    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 276
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoOrientation(I)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    .line 278
    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    return-object v0
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .locals 3

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "urn:service:unspecified"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xfe

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "urn:service:sos.mountain"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x10

    return p0

    :cond_2
    const-string/jumbo v0, "urn:service:sos.marine"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const-string/jumbo v0, "urn:service:sos.fire"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string/jumbo v0, "urn:service:sos.ambulance"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const-string/jumbo v0, "urn:service:sos.police"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const-string/jumbo v0, "urn:service:sos.traffic"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x14

    return p0

    :cond_7
    const-string/jumbo v0, "urn:service:sos"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public static convertUtErrorReasonToFw(I)I
    .locals 1

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x198

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1389

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x325

    goto :goto_0

    :cond_1
    const/16 p0, 0x324

    goto :goto_0

    :cond_2
    const/16 p0, 0x321

    goto :goto_0

    :cond_3
    const/16 p0, 0x92

    :goto_0
    return p0
.end method

.method public static getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "unknown"

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "RESTRICTED"

    .line 545
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Coin line/payphone"

    .line 548
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "Interaction with other service"

    .line 550
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Unavailable"

    .line 551
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I
    .locals 2

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Anonymous"

    .line 560
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "Coin line/payphone"

    .line 562
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 564
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v1
.end method

.method private static isRequiredKorSpecificURN(ILjava/lang/String;)Z
    .locals 4

    .line 713
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 714
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMnoAsNwPlmn(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    const-string v1, "persist.omc.sales_code"

    const-string v2, ""

    .line 715
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ro.csc.sales_code"

    .line 718
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    const-string v0, "KTC"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 725
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 726
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 729
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    if-eq p1, p0, :cond_3

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/16 p0, 0x12

    if-eq p1, p0, :cond_3

    const/16 p0, 0x13

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-ne p1, p0, :cond_4

    :cond_3
    return v3

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v3
.end method

.method private static processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;
    .locals 4

    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_4

    .line 672
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    .line 673
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 675
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EXTRA_CALL_IMPORTANCE"

    .line 676
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "importance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v1, "EXTRA_CALL_SUBJECT"

    .line 682
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 684
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subject"

    .line 683
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "EXTRA_CALL_IMAGE"

    .line 688
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 690
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    .line 689
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "EXTRA_CALL_LATITUDE"

    .line 694
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "EXTRA_CALL_LONGITUDE"

    .line 696
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 698
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "longitude"

    .line 697
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "latitude"

    .line 699
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA_CALL_RADIUS"

    .line 702
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 704
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "radius"

    .line 703
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method
