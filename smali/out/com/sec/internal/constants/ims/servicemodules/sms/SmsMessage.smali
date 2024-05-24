.class public Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;
    }
.end annotation


# static fields
.field public static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CDMA_SMS_DIGIT_MODE_4_BIT:I = 0x0

.field private static final CDMA_SMS_DIGIT_MODE_8_BIT:I = 0x1

.field public static final DELIVER_MESSAGE_TYPE:I = 0x1

.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x4

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x8

.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_GSM_7BIT_ALPHABET:I = 0x9

.field public static final ENCODING_GSM_DCS:I = 0xa

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS91_EXTENDED_PROTOCOL:I = 0x1

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE_16:I = 0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final GSM_NETWORK_TYPE:I = 0x2

.field public static final IPC_ADDRESS:I = 0x3

.field public static final IPC_BEARER_DATA:I = 0x19

.field public static final IPC_BEARER_REPLY:I = 0x5

.field public static final IPC_SERVICE_CATEGORY:I = 0x2

.field public static final IPC_SMS_FORMAT_PP:I = 0x1

.field public static final IPC_SMS_FORMAT_SR:I = 0x2

.field public static final IPC_SUBADDRESS:I = 0x4

.field public static final IPC_TELESERVICE_ID:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final PARAM_ID_BEARER_DATA:I = 0x8

.field public static final PARAM_ID_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_ID_CAUSE_CODES:I = 0x7

.field public static final PARAM_ID_DESTINATION_ADDRESS:I = 0x4

.field public static final PARAM_ID_DESTINATION_SUB_ADDRESS:I = 0x5

.field public static final PARAM_ID_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ID_ORIGINATING_SUB_ADDRESS:I = 0x3

.field public static final PARAM_ID_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_ID_TELESERVICE:I = 0x0

.field public static final PARAM_LENGTH_TELESERVICE:I = 0x2

.field public static final STATUS_REPORT_MESSAGE_TYPE:I = 0x2

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field private mAddressByte:[B

.field private mBearerData:[B

.field private mBearerDataLength:I

.field private mBearerReplyOptionValue:I

.field private mCauseCode:I

.field private mContentType:I

.field private mCur:I

.field private mDestAddress:Ljava/lang/String;

.field private mDigitMode:I

.field private mErrorClass:I

.field private mMessageRef:I

.field private mMessageType:I

.field private mMsgId:I

.field private mMsgType:I

.field private mNetworktype:I

.field private mNoOfAddressDigit:I

.field private mNumberMode:I

.field private mNumberPlan:I

.field private mReplySeqNo:I

.field private mScAddress:Ljava/lang/String;

.field private mServiceCategory:I

.field private mStatusReportRequested:Z

.field private mTeleServiceid:I

.field private mTpdu:[B

.field private mUserDataHeader:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 195
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    const/4 v1, 0x0

    .line 196
    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    new-array v0, v0, [B

    .line 197
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    return-void
.end method

.method public static convertDtmfToAscii(B)B
    .registers 2

    .line 0
    const/16 v0, 0x30

    packed-switch p0, :pswitch_data_32

    const/16 v0, 0x20

    goto :goto_31

    :pswitch_8
    const/16 v0, 0x43

    goto :goto_31

    :pswitch_b
    const/16 v0, 0x42

    goto :goto_31

    :pswitch_e
    const/16 v0, 0x41

    goto :goto_31

    :pswitch_11
    const/16 v0, 0x23

    goto :goto_31

    :pswitch_14
    const/16 v0, 0x2a

    goto :goto_31

    :pswitch_17
    const/16 v0, 0x39

    goto :goto_31

    :pswitch_1a
    const/16 v0, 0x38

    goto :goto_31

    :pswitch_1d
    const/16 v0, 0x37

    goto :goto_31

    :pswitch_20
    const/16 v0, 0x36

    goto :goto_31

    :pswitch_23
    const/16 v0, 0x35

    goto :goto_31

    :pswitch_26
    const/16 v0, 0x34

    goto :goto_31

    :pswitch_29
    const/16 v0, 0x33

    goto :goto_31

    :pswitch_2c
    const/16 v0, 0x32

    goto :goto_31

    :pswitch_2f
    const/16 v0, 0x31

    :goto_31
    :pswitch_31
    return v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_31
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 831
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 833
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/16 v2, 0x18

    if-lt v1, v2, :cond_49

    add-int/lit8 v1, v1, -0x18

    const/4 v2, 0x4

    .line 839
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 840
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v0

    .line 841
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    or-int/2addr v0, v4

    .line 842
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 844
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    .line 845
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 846
    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mUserDataHeader:I

    if-lez v1, :cond_46

    .line 848
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MESSAGE_IDENTIFIER decode succeeded (extra bits = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmsMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_46
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_49
    return-void
.end method

.method private decodeReplyOption(Lcom/android/internal/util/BitwiseInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 857
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 858
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    if-ne v1, v0, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    .line 859
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 860
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    const/4 p0, 0x4

    .line 861
    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    return-void
.end method

.method private encodeCdmaAddress(I)[B
    .registers 6

    .line 690
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    const/16 v1, 0x8

    .line 693
    :try_start_9
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 694
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getAddressParameterLength()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 695
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 696
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 698
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne p1, v2, :cond_28

    .line 699
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 702
    :cond_28
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v3, 0x4

    if-ne p1, v2, :cond_36

    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez p1, :cond_36

    .line 703
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 706
    :cond_36
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 708
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez p1, :cond_40

    move v1, v3

    :cond_40
    const/4 p1, 0x0

    .line 714
    :goto_41
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge p1, v2, :cond_5d

    if-ne v1, v3, :cond_53

    .line 716
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v2, v2, p1

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseToDtmf(B)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_5a

    .line 718
    :cond_53
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_5a
    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    .line 721
    :cond_5d
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_61
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_9 .. :try_end_61} :catch_62

    return-object p0

    :catch_62
    move-exception p0

    const-string p1, "SmsMessage"

    const-string v0, "bitwise exception is thrown"

    .line 723
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p0}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getAddressParameterLength()I
    .registers 5

    .line 870
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v2, 0x5

    goto :goto_8

    :cond_7
    const/4 v2, 0x2

    :goto_8
    if-ne v0, v1, :cond_10

    .line 874
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez v3, :cond_10

    add-int/lit8 v2, v2, 0x4

    :cond_10
    const/16 v3, 0x8

    add-int/2addr v2, v3

    if-nez v0, :cond_17

    const/4 v0, 0x4

    goto :goto_18

    :cond_17
    move v0, v3

    .line 886
    :goto_18
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    array-length p0, p0

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    .line 888
    rem-int/lit8 p0, v2, 0x8

    if-nez p0, :cond_23

    .line 889
    div-int/2addr v2, v3

    goto :goto_25

    .line 891
    :cond_23
    div-int/2addr v2, v3

    add-int/2addr v2, v1

    :goto_25
    return v2
.end method

.method private getByte()I
    .registers 4

    .line 612
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private getGsmAddress()Ljava/lang/String;
    .registers 7

    .line 560
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    aget-byte v1, v0, p0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    .line 561
    div-int/2addr v2, v3

    add-int/2addr v2, v3

    .line 564
    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 565
    invoke-static {v0, p0, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    .line 567
    aget-byte v0, v4, p0

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x5

    if-ne v0, v5, :cond_24

    mul-int/lit8 v1, v1, 0x4

    .line 570
    div-int/lit8 v1, v1, 0x7

    .line 572
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto :goto_35

    :cond_24
    sub-int/2addr v2, p0

    .line 575
    aget-byte v0, v4, v2

    and-int/2addr v1, p0

    if-ne v1, p0, :cond_2f

    or-int/lit16 v1, v0, 0xf0

    int-to-byte v1, v1

    .line 578
    aput-byte v1, v4, v2

    .line 581
    :cond_2f
    invoke-static {v4, p0, v2, p0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object p0

    .line 584
    aput-byte v0, v4, v2

    :goto_35
    return-object p0
.end method

.method private getSCAddress()Ljava/lang/String;
    .registers 6

    .line 594
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_1a

    .line 600
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    const/4 v4, 0x1

    .line 601
    invoke-static {v2, v3, v0, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v2

    const-string v3, "SmsMessage"

    const-string v4, "invalid SC address: "

    .line 603
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    :goto_1a
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    return-object v1
.end method

.method private parseCdmaAddress([B)V
    .registers 8

    .line 649
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/4 p1, 0x1

    .line 653
    :try_start_6
    invoke-virtual {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    .line 654
    invoke-virtual {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    .line 656
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-nez v1, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    if-ne v1, p1, :cond_25

    const/4 v1, 0x3

    .line 663
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    .line 666
    :cond_25
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v1, p1, :cond_33

    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez p1, :cond_33

    .line 667
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    .line 670
    :cond_33
    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    .line 671
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    const/4 p1, 0x0

    .line 673
    :goto_3e
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge p1, v1, :cond_70

    .line 674
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v1, :cond_5d

    .line 675
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 676
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v2, v1, p1

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_66

    .line 677
    aput-byte v3, v1, p1

    goto :goto_66

    .line 680
    :cond_5d
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, p1
    :try_end_66
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_6 .. :try_end_66} :catch_69

    :cond_66
    :goto_66
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :catch_69
    const-string p0, "SmsMessage"

    const-string p1, "bitwiseinputstream exception is thrown"

    .line 684
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void
.end method

.method private static parseToDtmf(B)I
    .registers 3

    .line 0
    const/16 v0, 0x31

    const/16 v1, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    sub-int/2addr p0, v1

    goto :goto_1e

    :cond_c
    if-ne p0, v1, :cond_11

    const/16 p0, 0xa

    goto :goto_1e

    :cond_11
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_18

    const/16 p0, 0xb

    goto :goto_1e

    :cond_18
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1f

    const/16 p0, 0xc

    :goto_1e
    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public convertToFrameworkSmsFormat([B)[B
    .registers 4

    .line 267
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseCdmaDeliverPdu([B)V

    .line 268
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x12c

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 269
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 271
    :try_start_f
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 272
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 273
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 274
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 275
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 276
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 277
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 278
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 279
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 280
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerReplyOptionValue:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 281
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mReplySeqNo:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 282
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 283
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 284
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 288
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_61} :catch_62

    return-object p0

    :catch_62
    move-exception p0

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 292
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    return-object p0

    :catch_7e
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method

.method public decodeBearerData([B)V
    .registers 14

    const-string v0, "BearerData decode failed: "

    const-string v1, "SmsMessage"

    .line 750
    :try_start_4
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/4 p1, 0x0

    move v3, p1

    move v4, v3

    .line 754
    :cond_c
    :goto_c
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_93

    const/16 v5, 0x8

    .line 755
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 756
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    shl-int v9, v6, v7

    .line 760
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "subparamId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int v10, v3, v9

    const/16 v11, 0x17

    if-eqz v10, :cond_63

    if-ltz v7, :cond_63

    if-le v7, v11, :cond_47

    goto :goto_63

    .line 764
    :cond_47
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal duplicate subparameter ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    :goto_63
    if-eqz v7, :cond_83

    if-eq v7, v6, :cond_78

    const/16 v6, 0xa

    if-eq v7, v6, :cond_74

    move v6, p1

    :goto_6c
    if-ge v6, v8, :cond_8c

    .line 798
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 778
    :cond_74
    invoke-direct {p0, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeReplyOption(Lcom/android/internal/util/BitwiseInputStream;)V

    goto :goto_8c

    :cond_78
    move v4, p1

    :goto_79
    if-ge v4, v8, :cond_81

    .line 775
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    :cond_81
    move v4, v8

    goto :goto_8c

    :cond_83
    move v6, p1

    :goto_84
    if-ge v6, v8, :cond_8c

    .line 770
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    :cond_8c
    :goto_8c
    if-ltz v7, :cond_c

    if-gt v7, v11, :cond_c

    or-int/2addr v3, v9

    goto/16 :goto_c

    :cond_93
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_a3

    if-eqz v4, :cond_d2

    .line 811
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mUserDataHeader:I

    if-ne p0, v6, :cond_d2

    const-string p0, "UserData has header"

    .line 812
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 809
    :cond_a3
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;

    const-string p1, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ab
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_4 .. :try_end_ab} :catch_bf
    .catch Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException; {:try_start_4 .. :try_end_ab} :catch_ab

    :catch_ab
    move-exception p0

    .line 817
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    :catch_bf
    move-exception p0

    .line 815
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    return-void
.end method

.method public getAddressBytes()[B
    .registers 1

    .line 902
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    return-object p0
.end method

.method public getContentType()I
    .registers 1

    .line 910
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mContentType:I

    return p0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .registers 1

    .line 898
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCause()I
    .registers 1

    .line 918
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    return p0
.end method

.method public getErrorClass()I
    .registers 1

    .line 922
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    return p0
.end method

.method public getMessageRef()I
    .registers 1

    .line 556
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    return p0
.end method

.method public getMessageType()I
    .registers 1

    .line 506
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    return p0
.end method

.method public getMsgID()I
    .registers 1

    .line 906
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    return p0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusReportRequested()Z
    .registers 1

    .line 510
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    return p0
.end method

.method public getTpdu()[B
    .registers 1

    .line 914
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    return-object p0
.end method

.method public parseCdmaDeliverPdu([B)V
    .registers 10

    const-string v0, "SmsMessage"

    .line 301
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 302
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 306
    :try_start_c
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageType:I

    .line 308
    :cond_12
    :goto_12
    :pswitch_12
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_fd

    .line 309
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 310
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 311
    new-array v4, v3, [B

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parameterId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_36} :catch_104

    const-string v5, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached."

    const/4 v6, 0x6

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_11a

    .line 390
    :try_start_3d
    new-instance p0, Ljava/lang/Exception;

    goto/16 :goto_e2

    .line 361
    :pswitch_41
    invoke-virtual {p1, v4, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_4a

    .line 363
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_4a
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    .line 366
    iput-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    if-eqz v3, :cond_12

    new-array v2, v6, [B

    .line 370
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 371
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 372
    invoke-virtual {v4, v2, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_69

    const-string v5, "parseCdmaDeliverPdu: messageId - the end of the stream has been reached."

    .line 374
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_69
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v5, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6e} :catch_104

    .line 380
    :try_start_6e
    invoke-direct {p0, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_71
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_6e .. :try_end_71} :catch_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_104

    goto :goto_76

    :catch_72
    move-exception v2

    .line 382
    :try_start_73
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->printStackTrace()V

    .line 384
    :goto_76
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 385
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    goto :goto_12

    .line 350
    :pswitch_7d
    invoke-virtual {p1, v4, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_86

    .line 352
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_86
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 355
    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    aget-byte v3, v3, v7

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mReplySeqNo:I

    const/4 v3, 0x2

    .line 356
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    aget-byte v3, v3, v7

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    if-eqz v3, :cond_12

    const/16 v3, 0x8

    .line 358
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v7

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    goto/16 :goto_12

    .line 342
    :pswitch_aa
    invoke-virtual {p1, v4, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_b3

    .line 344
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_b3
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 347
    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerReplyOptionValue:I

    goto/16 :goto_12

    .line 331
    :pswitch_c0
    new-array v2, v3, [B

    .line 332
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_cd

    const-string v3, "parseCdmaDeliverPdu: address - the end of the stream has been reached."

    .line 334
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_cd
    invoke-direct {p0, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseCdmaAddress([B)V

    goto/16 :goto_12

    .line 327
    :pswitch_d2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    goto/16 :goto_12

    .line 320
    :pswitch_da
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    goto/16 :goto_12

    .line 390
    :goto_e2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported parameterId ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_fd
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 394
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_103} :catch_104

    goto :goto_119

    :catch_104
    move-exception p0

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCdmaDeliverPdu: conversion from pdu to SmsMessage failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_119
    return-void

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_da
        :pswitch_d2
        :pswitch_c0
        :pswitch_12
        :pswitch_c0
        :pswitch_12
        :pswitch_aa
        :pswitch_7d
        :pswitch_41
    .end packed-switch
.end method

.method public parseDeliverPdu([BLjava/lang/String;)V
    .registers 5

    .line 513
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 514
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 517
    :try_start_c
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 518
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_45

    const-string p1, "3gpp"

    .line 529
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 530
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getSCAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 531
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result p1

    const/4 p2, 0x3

    and-int/2addr p1, p2

    if-eqz p1, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    if-eq p1, p2, :cond_3a

    goto :goto_44

    .line 541
    :cond_31
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 543
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    goto :goto_44

    :cond_3a
    const/4 p1, 0x1

    .line 538
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    goto :goto_44

    .line 550
    :cond_3e
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    :goto_44
    return-void

    :catch_45
    move-exception p0

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMessageType: conversion from byte array to object failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception p0

    .line 525
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public parseOutgoingCdmaSms([B)V
    .registers 11

    const-string v0, "SmsMessage"

    .line 403
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 404
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 405
    array-length p1, p1

    .line 408
    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    .line 409
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 410
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    .line 412
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    .line 413
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    .line 414
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    .line 415
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    .line 417
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3a} :catch_110
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3a} :catch_fa

    const-string v3, " > pdu len "

    if-gt v1, p1, :cond_db

    .line 425
    :try_start_3e
    new-array v4, p1, [B

    const/4 v5, 0x0

    .line 426
    invoke-virtual {v2, v4, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_110
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_fa

    const-string v6, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached."

    if-gez v1, :cond_4c

    .line 428
    :try_start_49
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_4c
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 432
    iget v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    new-array v7, v4, [B

    .line 433
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 436
    iget v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v4, :cond_76

    move v4, v5

    .line 438
    :goto_5e
    iget v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v4, v8, :cond_8c

    const/4 v8, 0x4

    .line 439
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 440
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    .line 443
    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_76
    const/4 v8, 0x1

    if-ne v4, v8, :cond_8c

    move v4, v5

    .line 447
    :goto_7a
    iget v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v4, v8, :cond_8c

    const/16 v8, 0x8

    .line 448
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 449
    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 452
    :cond_8c
    iput-object v7, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 453
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    .line 454
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 455
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 456
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 459
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    if-gt v1, p1, :cond_bc

    .line 467
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    .line 468
    invoke-virtual {v2, p1, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_b3

    .line 470
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_b3
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeBearerData([B)V

    .line 473
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_10f

    .line 463
    :cond_bc
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseOutgoingCdmaSms: Invalid pdu, bearerDataLength "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_db
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_fa} :catch_110
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_fa} :catch_fa

    :catch_fa
    move-exception p0

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseOutgoingCdmaSms2: conversion from byte array to object failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10f
    return-void

    :catch_110
    move-exception p0

    .line 475
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseOutgoingCdmaSms1: conversion from byte array to object failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parseOutgoingGsmSms()V
    .registers 5

    .line 485
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getSCAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseOutgoingGsmSms() : mScAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/16 v2, 0x20

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2c

    move v0, v3

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 489
    :goto_2d
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    if-eq v1, v3, :cond_32

    goto :goto_3d

    .line 492
    :cond_32
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 493
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getGsmAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    :goto_3d
    return-void
.end method

.method public parseSubmitPdu([BLjava/lang/String;)[B
    .registers 9

    const-string v0, "SmsMessage"

    .line 202
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 203
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_e
    const-string v3, "3gpp2"

    .line 206
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 207
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseOutgoingCdmaSms([B)V

    const/4 p1, 0x0

    .line 209
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 212
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write(I)V

    const/4 p2, 0x2

    .line 213
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 214
    iget p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/4 p2, 0x4

    .line 216
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->encodeCdmaAddress(I)[B

    move-result-object p2

    if-eqz p2, :cond_33

    .line 218
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_33
    const/16 p2, 0x8

    .line 222
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 223
    iget p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 224
    iget-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 226
    iget p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    if-eqz p2, :cond_70

    const/4 p2, 0x6

    new-array v3, p2, [B

    .line 228
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    invoke-virtual {v5, v3, p1, p2}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_60

    const-string p1, "parseSubmitPdu: messageId - the end of the stream has been reached."

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_60
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 235
    new-instance p1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_68} :catch_8e

    .line 238
    :try_start_68
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_6b
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_8e

    goto :goto_70

    :catch_6c
    move-exception p1

    .line 240
    :try_start_6d
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->printStackTrace()V

    .line 244
    :cond_70
    :goto_70
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeBearerData([B)V

    .line 245
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    goto :goto_88

    .line 247
    :cond_7c
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 248
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    .line 249
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseOutgoingGsmSms()V

    .line 252
    :goto_88
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 253
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_8d} :catch_8e

    return-object p0

    :catch_8e
    move-exception p0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 257
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    return-object p0

    :catch_a8
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method
