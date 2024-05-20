.class public Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;
.super Ljava/lang/Object;
.source "RegistrationRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Utility class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addMediaParameters(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I
    .locals 32

    move-object/from16 v0, p0

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCallProfile()Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v1

    .line 423
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioCodec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 424
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 425
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbMode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 426
    iget v5, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioAs:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 427
    iget v6, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRs:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 428
    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRr:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 429
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoCodec:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 430
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->displayFormat:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 431
    iget-object v10, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->packetizationMode:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 432
    iget-object v11, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDiscontinuousTransmission:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 433
    iget-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDtxRecv:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 434
    iget-object v13, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsHeaderFull:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 435
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsModeSwitch:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 436
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelSend:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 p1, v15

    .line 437
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelRecv:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v16, v15

    .line 438
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelAwareReceive:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v17, v15

    .line 439
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsCodecModeRequest:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v18, v15

    .line 440
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateSend:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v19, v15

    .line 441
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateReceive:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v20, v15

    .line 442
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthSend:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v21, v15

    .line 443
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthReceive:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v22, v15

    .line 444
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDefaultBandwidth:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v23, v15

    .line 445
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDefaultBitrate:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v24, v15

    .line 446
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->displayFormatHevc:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v25, v14

    .line 447
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateSendExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    move/from16 v26, v14

    .line 448
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateReceiveExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    move/from16 v27, v14

    .line 449
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthSendExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    move/from16 v28, v14

    .line 450
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthReceiveExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    move/from16 v29, v14

    .line 451
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsLimitedCodec:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 453
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->startMediaConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 454
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 455
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioPort:I

    move/from16 v30, v13

    move/from16 v31, v14

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 456
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioDscp:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioDscp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 457
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 458
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbePayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 459
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbOaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrWbPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 460
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbeWbPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 461
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOpenPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrOpenPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 462
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDtmfPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 463
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfWbPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDtmfWbPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 464
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 465
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrBeMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbeMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 466
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaWbMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrWbMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 467
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrBeWbMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbeWbMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 468
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 469
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 470
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrWbMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 471
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioAs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 472
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioRs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 473
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioRr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 474
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->pTime:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addPTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 475
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->maxPTime:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addMaxTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 476
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 477
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoPort:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 478
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->frameRate:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addFrameRate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 479
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDisplayFormat(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 480
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDisplayFormatHevc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 481
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addPacketizationMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 482
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265QvgaPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265QvgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 483
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265QvgaLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265QvgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 484
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265VgaPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265VgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 485
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265VgaLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265VgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 486
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265Hd720pPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265Hd720pPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 487
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265Hd720pLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265Hd720plPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 488
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720pPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 489
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720plPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 490
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264VgaPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264VgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 491
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264VgaLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264VgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 492
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264QvgaPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264QvgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 493
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264QvgaLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264QvgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 494
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264CifPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264CifPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 495
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264CifLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264CiflPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 496
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoAs:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoAs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 497
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRs:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoRs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 498
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRr:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoRr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 499
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textAs:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextAs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 500
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textRs:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextRs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 501
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textRr:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextRr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 502
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textPort:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 503
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioAvpf:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioAvpf(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 504
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioSrtp:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioSrtp(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 505
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoAvpf:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoAvpf(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 506
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoSrtp:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoSrtp(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 507
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textAvpf:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextAvpf(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 508
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textSrtp:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextSrtp(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 509
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoCapabilities:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 510
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableScr:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableScr(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 511
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->rtpTimeout:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addRtpTimeout(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 512
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->rtcpTimeout:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addRtcpTimeout(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 513
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h263QcifPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH263QcifPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 514
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->useSpsForH264Hd:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addUseSpsForH264Hd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 515
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRtcpXr:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioRtcpXr(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 516
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRtcpXr:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoRtcpXr(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 517
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfMode:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDtmfMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 518
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableEvsCodec:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableEvsCodec(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 519
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDiscontinuousTransmission(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 520
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDtxRecv(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v30

    .line 521
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsHeaderFull(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v25

    .line 522
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsModeSwitch(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, p1

    .line 523
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsChannelSend(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v16

    .line 524
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsChannelRecv(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v17

    .line 525
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsChannelAwareReceive(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v18

    .line 526
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsCodecModeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v19

    .line 527
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateSend(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v20

    .line 528
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateReceive(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v21

    .line 529
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthSend(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v22

    .line 530
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthReceive(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 531
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsPayload:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 532
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evs2ndPayload:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvs2ndPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v2, v23

    .line 533
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDefaultBandwidth(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v24

    .line 534
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDefaultBitrate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 535
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableRtcpOnActiveCall:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableRtcpOnActiveCall(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 536
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableAvSync:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableAvSync(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 537
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDisplayFormatHevc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 538
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720pPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 539
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720plPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 540
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->ignoreRtcpTimeoutOnHoldCall:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addIgnoreRtcpTimeoutOnHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 541
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsPayloadExt:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsPayloadExt(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v2, v26

    .line 542
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateSendExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v27

    .line 543
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateReceiveExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v28

    .line 544
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthSendExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v29

    .line 545
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthReceiveExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v2, v31

    .line 546
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsLimitedCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 547
    iget-boolean v1, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsUseDefaultRtcpBw:Z

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsUseDefaultRtcpBw(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 549
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->endMediaConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method private static addUaCreationReq(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 103
    invoke-static/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->addMediaParameters(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I

    move-result v2

    .line 104
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 105
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 106
    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 107
    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 108
    iget-object v7, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 109
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    const-string v9, ""

    .line 110
    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 111
    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 112
    iget-object v11, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 113
    iget-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRemoteuritype()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/util/ImsUri$UriType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 115
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 116
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v16, v2

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCurPani()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v17, v2

    .line 118
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->msrpTransType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v18, v2

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPrivacyHeaderRestricted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v19, v2

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v20, v2

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOipFromPreferred()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v21, v2

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSelectTransportAfterTcpReset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v22, v2

    .line 123
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mvno:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move/from16 v23, v2

    .line 126
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    move/from16 v24, v15

    if-nez v2, :cond_0

    .line 127
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 131
    :goto_0
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 132
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v25, v15

    goto :goto_1

    :cond_1
    const/16 v25, -0x1

    .line 136
    :goto_1
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionRefresher:Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 137
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v26, v15

    goto :goto_2

    :cond_2
    const/16 v26, -0x1

    .line 142
    :goto_2
    iget-boolean v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    if-eqz v15, :cond_3

    .line 143
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v27, v15

    .line 144
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v28, v15

    goto :goto_3

    :cond_3
    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 148
    :goto_3
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 149
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v29, v15

    goto :goto_4

    :cond_4
    const/16 v29, -0x1

    .line 153
    :goto_4
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->displayName:Ljava/lang/String;

    if-eqz v15, :cond_5

    .line 154
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v30, v15

    goto :goto_5

    :cond_5
    const/16 v30, -0x1

    .line 158
    :goto_5
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 159
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v31, v15

    goto :goto_6

    :cond_6
    const/16 v31, -0x1

    .line 163
    :goto_6
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->contactDisplayName:Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 164
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v32, v15

    goto :goto_7

    :cond_7
    const/16 v32, -0x1

    .line 168
    :goto_7
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->realm:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 169
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v33, v15

    goto :goto_8

    :cond_8
    const/16 v33, -0x1

    .line 173
    :goto_8
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 174
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v34, v15

    goto :goto_9

    :cond_9
    const/16 v34, -0x1

    .line 178
    :goto_9
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcRelayType:Ljava/lang/String;

    if-eqz v15, :cond_a

    .line 179
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v35, v15

    goto :goto_a

    :cond_a
    const/16 v35, -0x1

    .line 183
    :goto_a
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcEmergencyNumbers:Ljava/lang/String;

    if-eqz v15, :cond_b

    .line 184
    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move/from16 v36, v15

    goto :goto_b

    :cond_b
    const/16 v36, -0x1

    .line 189
    :goto_b
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    move/from16 v37, v2

    if-eqz v15, :cond_c

    .line 190
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v0, v15, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v2

    .line 191
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createServiceListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, -0x1

    .line 195
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v15

    move/from16 v38, v2

    .line 197
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/16 v39, 0x0

    .line 199
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    add-int/lit8 v41, v39, 0x1

    .line 200
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v40

    aput v40, v2, v39

    move/from16 v39, v41

    goto :goto_d

    .line 202
    :cond_d
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createFeatureTagListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_e

    :cond_e
    move/from16 v38, v2

    const/4 v2, -0x1

    .line 205
    :goto_e
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    move/from16 v39, v2

    .line 206
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v15, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v2

    .line 205
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createAcbVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 208
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->startRequestUACreation(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getProfileId()I

    move-result v15

    move/from16 v40, v14

    int-to-long v14, v15

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addProfileId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 210
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addInterfaceNw(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getNetId()J

    move-result-wide v14

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNetId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 212
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 213
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImpi(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 214
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 215
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addDomain(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 216
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSipOutbound(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 217
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addQParam(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getControlDscp()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addControlDscp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 219
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTransType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 220
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEmergencySupport(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 221
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsIpsec(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 222
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEncrAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 223
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAuthAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 224
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRegisterAlgo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 225
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPrefId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 226
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRemoteUriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 227
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsPrecondEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 228
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondInitialSendrecv:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsPrecondInitialSendrecv(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 229
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addWifiPreConditionEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 230
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSipCompactHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 231
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionExpires:I

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSessionExpires(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 232
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->minSe:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMinse(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v3, v40

    .line 233
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUserAgent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v3, v24

    .line 234
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addInstanceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 235
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSoftphoneEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSoftphoneEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 236
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isCdmalessEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsCdmalessEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 237
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRingbackTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 238
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRingingTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimer1()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimer1(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimer2()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimer2(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimer4()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimer4(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerA()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerA(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerD()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerD(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerB()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerB(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerC()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerC(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerE()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerE(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerF()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerF(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerG()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerG(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerH()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerH(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerI()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerI(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerJ()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerJ(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerK()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerK(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerTS()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerTs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMssSize()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMssSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSipMobility()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSipMobility(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsEnableGruu()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEnableGruu(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsEnableVcid()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEnableVcid(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsEnableSessionId()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEnableSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAudioEngineType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAudioEngineType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTextMode()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v3, v17

    .line 261
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addCurPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 262
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isVceConfigEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsVceConfigEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 263
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isGcfConfigEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsGcfConfigEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 264
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isNsdsServiceEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsNsdsServiceEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 265
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isMsrpBearerUsed:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsMsrpBearerUsed(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 266
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->subscriberTimer:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSubscriberTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 267
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSubscribeReg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 268
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useKeepAlive:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseKeepAlive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 269
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selfPort:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSelfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 270
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->scmVersion:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addScmVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 271
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->activeDataPhoneId:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addActiveDataPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v3, v18

    .line 272
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMsrpTransType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 273
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isFullCodecOfferRequired:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsFullCodecOfferRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 274
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isRcsTelephonyFeatureTagRequired:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsRcsTelephonyFeatureTagRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 275
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsXqEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRcsProfile()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRcsProfile(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsTransportNeeded()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNeedTransportInContact(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRat()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getDbrTimer()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addDbrTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsTcpGracefulShutdownEnabled()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsTcpGracefulShutdownEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTcpRstUacErrorcode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTcpRstUacErrorcode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTcpRstUasErrorcode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTcpRstUasErrorcode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v3, v19

    .line 283
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPrivacyHeaderRestricted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUsePemHeader()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUsePemHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPhoneId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportEct()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportEct(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getEarlyMediaRtpTimeoutTimer()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEarlyMediaRtpTimeoutTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAddHistinfo()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAddHistinfo(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportedGeolocationPhase()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportedGeolocationPhase(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getNeedPidfSipMsg()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNeedPidfSipMsg(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getNeedPidfRat()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNeedPidfRat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUseProvisionalResponse100rel()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseProvisionalResponse100rel(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUse183OnProgressIncoming()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUse183OnProgressIncoming(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUseQ850causeOn480()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseQ850causeOn480(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupport183ForIr92v9Precondition()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupport183ForIr92v9Precondition(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportImsNotAvailable()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportImsNotAvailable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportLtePreferred()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportLtePreferred(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUseSubcontactWhenResub()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseSubcontactWhenResub(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportUpgradePrecondition()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportUpgradePrecondition(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportReplaceMerge()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportReplaceMerge(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isServerHeaderEnabled()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsServerHeaderEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 302
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportAccessType(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v3, v20

    .line 303
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addLastPaniHeader(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v3, v21

    .line 304
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addOipFromPreferred(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v3, v22

    .line 305
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSelectTransportAfterTcpReset(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSrvccVersion()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSrvccVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 307
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportSubscribeDialogEvent:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportSubscribeDialogEvent(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 308
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSimMobility(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCmcType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportDualSimCmc()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportDualSimCmc(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getVideoCrbtSupportType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addVideoCrbtSupportType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRetryInviteOnTcpReset()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRetryInviteOnTcpReset(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getEnableVerstat()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEnableVerstat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegRetryBaseTime()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRegRetryBaseTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegRetryMaxTime()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRegRetryMaxTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportDualRcs()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportDualRcs(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsPttSupported()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsPttSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTryReregisterFromKeepalive()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTryReregisterFromKeepalive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSslType()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSslType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getHashAlgoTypeType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addHashAlgoType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupport199ProvisionalResponse()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupport199ProvisionalResponse(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSend18xReliably()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSend18xReliably(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportNetworkInitUssi()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportNetworkInitUssi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSendByeForUssi()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSendByeForUssi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportRfc6337ForDelayedOffer()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportRfc6337ForDelayedOffer(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUse200offerWhenRemoteNotSupport100rel()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUse200offerWhenRemoteNotSupport100rel(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportVowifiDisable5gsa()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportVowifiDisable5gsa(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportVowifiDeprioritizeNr5g()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportVowifiDeprioritizeNr5g(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getExcludePaniVowifiInitialRegi()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addExcludePaniVowifiInitialRegi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSingleRegiEnabled()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSingleRegiEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getNeedCheckAllowedMethodForRefresh()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNeedCheckAllowedMethodForRefresh(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsAddMmtelCallComposerTag()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAddMmtelCallcomposerTag(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getKeepAliveSyncEnabled()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addKeepAliveSyncEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getKeepAliveFactor()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addKeepAliveFactor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getEncrNullRoaming()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEncrNullRoaming(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v15, v37

    const/4 v3, -0x1

    if-eq v15, v3, :cond_f

    .line 338
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImsibasedimpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    move/from16 v15, v25

    if-eq v15, v3, :cond_10

    .line 342
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addHostname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move/from16 v15, v26

    if-eq v15, v3, :cond_11

    .line 346
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSessionRefresher(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 349
    :cond_11
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    if-eqz v4, :cond_13

    .line 350
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsIpsec(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v4, v27

    if-eq v4, v3, :cond_12

    .line 352
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAuthAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_12
    move/from16 v15, v28

    if-eq v15, v3, :cond_13

    .line 356
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEncrAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_13
    move/from16 v15, v29

    if-eq v15, v3, :cond_14

    .line 361
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPassword(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 364
    :cond_14
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    if-eqz v3, :cond_15

    .line 365
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMno(Lcom/sec/internal/constants/Mno;)I

    move-result v3

    if-eqz v3, :cond_15

    .line 367
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "translateMno: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMno(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_15
    move/from16 v3, v23

    .line 371
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMvno(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v15, v30

    const/4 v3, -0x1

    if-eq v15, v3, :cond_16

    .line 374
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_16
    move/from16 v15, v31

    if-eq v15, v3, :cond_17

    .line 378
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUuid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_17
    move/from16 v15, v32

    if-eq v15, v3, :cond_18

    .line 382
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addContactDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_18
    move/from16 v15, v33

    if-eq v15, v3, :cond_19

    .line 386
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRealm(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_19
    move/from16 v15, v34

    if-eq v15, v3, :cond_1a

    .line 390
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImMsgTech(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1a
    move/from16 v15, v35

    if-eq v15, v3, :cond_1b

    .line 394
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addCmcRelayType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1b
    move/from16 v15, v36

    if-eq v15, v3, :cond_1c

    .line 398
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addCmcEmergencyNumbers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1c
    move/from16 v4, v38

    if-eq v4, v3, :cond_1d

    .line 402
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addServiceList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1d
    move/from16 v4, v39

    if-eq v4, v3, :cond_1e

    .line 406
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addFeatureTagList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 409
    :cond_1e
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateConfigDualIms()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addConfigDualIms(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v4, v16

    .line 410
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMediaConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v3, :cond_1f

    .line 413
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAcb(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 416
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isDisplayNameIgnored()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIgnoreDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 418
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->endRequestUACreation(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method private static akaAuthInfoReq(Lcom/google/flatbuffers/FlatBufferBuilder;JILjava/lang/String;)I
    .locals 0

    .line 712
    invoke-virtual {p0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    .line 714
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->startRequestUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 715
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p3

    .line 716
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->addRecvMng(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 717
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->addAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 718
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->endRequestUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private static deleteUaReq(Lcom/google/flatbuffers/FlatBufferBuilder;J)I
    .locals 0

    .line 570
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUADeletion;->startRequestUADeletion(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 571
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUADeletion;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 572
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUADeletion;->endRequestUADeletion(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private static imeiReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;)I
    .locals 2

    .line 1067
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1068
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RegiConfig;->startRegiConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1069
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RegiConfig;->addImei(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1070
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RegiConfig;->endRegiConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 1071
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v0, 0x1

    .line 1072
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1073
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long v0, p0

    .line 1074
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1075
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method static makeConfigCall(IZZZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 1097
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1099
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->startCallConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1100
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->addTtySessionRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1101
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->addAutomaticMode(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1102
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->addRttSessionRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1103
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->endCallConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1105
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 p2, 0x3

    .line 1106
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1107
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 1108
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1110
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1112
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x65

    .line 1113
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x1

    .line 1114
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1115
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1117
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1119
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeConfigRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 8

    .line 999
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1001
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getConfUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1002
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getDownloadsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1003
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getExploderUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1004
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getEndUserConfReqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1005
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getSupportBotVersions()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1007
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->startRcsConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1008
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getFtChunkSize()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addRcsFtChunkSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1009
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getIshChunkSize()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addRcsIshChunkSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1010
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addConfUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1011
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isMsrpCema()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsMsrpCema(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1012
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addDownloadsPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1013
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isConfSubscribeEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsConfSubscribeEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1014
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addExploderUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1015
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getPagerModeLimit()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addPagerModeSizeLimit(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1016
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isUseMsrpDiscardPort()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addUseMsrpDiscardPort(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1017
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isAggrImdnSupported()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsAggrImdnSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1018
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isPrivacyDisable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsCbPrivacyDisable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1019
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getCbMsgTech()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addCbMsgTech(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1020
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addEndUserConfReqId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1021
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addSupportedBotVersions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1022
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getSupportCancelMessage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addSupportCancelMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1023
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getSupportRealtimeUserAlias()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addSupportRealtimeUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1024
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->endRcsConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1026
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x4

    .line 1027
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1028
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 1029
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1030
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1032
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x65

    .line 1033
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x1

    .line 1034
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1035
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1037
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1039
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeConfigRegistration(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 1080
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1082
    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->imeiReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;)I

    move-result p0

    .line 1084
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x65

    .line 1085
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x1

    .line 1087
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1088
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1090
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1092
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeConfigSrvcc(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 66
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 68
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->startRequestUpdateSrvccVersion(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 69
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 70
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 71
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->endRequestUpdateSrvccVersion(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 74
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x71

    .line 75
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0xa

    .line 76
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 77
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 78
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 80
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeCreateUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 554
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 556
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->addUaCreationReq(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I

    move-result p0

    .line 558
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x66

    .line 559
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v1, 0x2

    .line 561
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 562
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 564
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 566
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeDeleteUA(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 577
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p0

    .line 579
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->deleteUaReq(Lcom/google/flatbuffers/FlatBufferBuilder;J)I

    move-result p0

    .line 581
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x67

    .line 582
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v1, 0x3

    .line 584
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 585
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 587
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 589
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeNetworkSuspended(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 847
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p0

    .line 852
    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->networkSuspendReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I

    move-result p0

    .line 854
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x6c

    .line 855
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x7

    .line 857
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 858
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 860
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 862
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeRegister(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 694
    new-instance v14, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    .line 696
    invoke-static/range {v0 .. v13}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->registrationReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v0

    .line 699
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x68

    .line 700
    invoke-static {v14, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v1, 0x4

    .line 702
    invoke-static {v14, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 703
    invoke-static {v14, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 706
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 708
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v14, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeRequestUpdateFeatureTag(IJ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 866
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestUpdateFeatureTag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 871
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object p1

    .line 872
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array v2, p2, [I

    :goto_0
    if-ge v1, p2, :cond_0

    .line 874
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_0
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->createFeatureTagListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p1

    .line 879
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->startRequestUpdateFeatureTag(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 880
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->addFeatureTagList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 881
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 882
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->endRequestUpdateFeatureTag(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 885
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x6d

    .line 886
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0xc

    .line 887
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 888
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 889
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 891
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendAuthResponse(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 722
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAuthResponse: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p0

    .line 728
    invoke-static {v0, v1, v2, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->akaAuthInfoReq(Lcom/google/flatbuffers/FlatBufferBuilder;JILjava/lang/String;)I

    move-result p0

    .line 730
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x69

    .line 731
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x5

    .line 733
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 734
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 736
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 738
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendDmState(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 85
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 87
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDmState;->startRequestSendDmState(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 88
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDmState;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 89
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDmState;->addIsOn(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 90
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDmState;->endRequestSendDmState(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 93
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x74

    .line 94
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x77

    .line 95
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 96
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 97
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 99
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 743
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 746
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 747
    invoke-virtual {v0, p6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p6

    goto :goto_0

    :cond_0
    move p6, v3

    .line 751
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 752
    invoke-virtual {v0, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    goto :goto_1

    :cond_1
    move p5, v3

    .line 756
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 757
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_2

    :cond_2
    move p4, v3

    .line 761
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 762
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_3

    :cond_3
    move p2, v3

    .line 766
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 767
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_4

    :cond_4
    move p1, v3

    .line 770
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [I

    :goto_5
    if-ge v1, v2, :cond_5

    .line 772
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 775
    :cond_5
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->createDnsServerListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p3

    .line 777
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->startRequestDnsQuery(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p6, v3, :cond_6

    .line 779
    invoke-static {v0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addFamily(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_6
    if-eq p5, v3, :cond_7

    .line 783
    invoke-static {v0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addTransport(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    if-eq p4, v3, :cond_8

    .line 787
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 790
    :cond_8
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addDnsServerList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p2, v3, :cond_9

    .line 793
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addHostname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq p1, v3, :cond_a

    .line 797
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addInterfaceNw(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    int-to-long p0, p0

    .line 800
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 801
    invoke-static {v0, p7, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addNetId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 802
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->endRequestDnsQuery(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 805
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x6a

    .line 806
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x45

    .line 807
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 808
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 809
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 811
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSetPreferredImpu(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 824
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p0

    .line 826
    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->preferredImpuReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;)I

    move-result p0

    .line 828
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x6b

    .line 829
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x6

    .line 831
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 832
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 834
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 836
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSetTextMode(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 917
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 919
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->startRequestSetTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 920
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->addTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 921
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 922
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->endRequestSetTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 925
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x70

    .line 926
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x9

    .line 927
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 928
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 929
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 931
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateScreenOnOff(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1044
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1046
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ScreenConfig;->startScreenConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1047
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ScreenConfig;->addOn(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1048
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ScreenConfig;->endScreenConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1050
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x6

    .line 1051
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1052
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 1053
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1054
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1056
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x65

    .line 1057
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x1

    .line 1058
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1059
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1061
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1063
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateServiceVersion(ILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateServiceVersion:phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    :cond_0
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 965
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p1

    .line 966
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 968
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    .line 969
    aput v3, v2, v1

    move v1, v4

    goto :goto_1

    .line 971
    :cond_1
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p1

    .line 973
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 974
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 975
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 977
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ServiceVersionConfig;->startServiceVersionConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 978
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ServiceVersionConfig;->addExtraHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 979
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ServiceVersionConfig;->endServiceVersionConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 981
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x5

    .line 982
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    int-to-long v1, p0

    .line 983
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 984
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 985
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 987
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x65

    .line 988
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p1, 0x1

    .line 989
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 990
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 992
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 994
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateVceConfig(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 895
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVceConfig: handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vceEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 900
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->startRequestUpdateVceConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 901
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 902
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->addVceConfig(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 903
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->endRequestUpdateVceConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 906
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x6e

    .line 907
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x64

    .line 908
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 909
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 910
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 912
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateXqEnable(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXqEnable():  enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 939
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->startRequestUpdateXqEnable(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 940
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 941
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->addEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 942
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->endRequestUpdateXqEnable(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 945
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x72

    .line 946
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0xb

    .line 947
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 948
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 949
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 951
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method private static networkSuspendReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I
    .locals 0

    .line 840
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->startRequestNetworkSuspended(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 841
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 842
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->addState(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 843
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->endRequestNetworkSuspended(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private static preferredImpuReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;)I
    .locals 0

    .line 815
    invoke-virtual {p0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    .line 816
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->startRequestSetPreferredImpu(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 817
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 818
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->addImpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 819
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->endRequestSetPreferredImpu(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private static registrationReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz p2, :cond_0

    .line 597
    invoke-virtual/range {p1 .. p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    const/4 v10, 0x1

    new-array v10, v10, [I

    aput v9, v10, v7

    .line 600
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createPcscfAddrListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-eqz v1, :cond_1

    .line 605
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v0, v1, v10}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v1

    .line 606
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createServiceListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    if-eqz v2, :cond_2

    .line 611
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v0, v2, v10}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v2

    .line 612
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createImpuListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    if-eqz v3, :cond_3

    .line 617
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v0, v3, v10}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v10

    .line 618
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createThirdpartyFeatureListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v10

    goto :goto_3

    :cond_3
    move v10, v8

    :goto_3
    if-eqz v4, :cond_4

    .line 623
    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    goto :goto_4

    :cond_4
    move v11, v8

    :goto_4
    if-eqz p7, :cond_6

    .line 628
    invoke-virtual/range {p7 .. p7}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v12

    .line 629
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [I

    .line 631
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v15, v7, 0x1

    .line 632
    aput v14, v13, v7

    move v7, v15

    goto :goto_5

    .line 634
    :cond_5
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createFeatureTagListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    goto :goto_6

    :cond_6
    move v7, v8

    :goto_6
    if-eqz v5, :cond_7

    .line 639
    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    goto :goto_7

    :cond_7
    move v12, v8

    :goto_7
    if-eqz v6, :cond_8

    .line 644
    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    goto :goto_8

    :cond_8
    move v13, v8

    .line 648
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->startRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move/from16 v14, p0

    int-to-long v14, v14

    .line 649
    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v14, p4

    int-to-long v14, v14

    .line 650
    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addRegExp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v7, v8, :cond_9

    .line 653
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addFeatureTagList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v9, v8, :cond_a

    .line 657
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfAddrList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v1, v8, :cond_b

    .line 661
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addServiceList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v2, v8, :cond_c

    .line 665
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addImpuList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eqz v3, :cond_d

    .line 669
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addThirdpartyFeatureList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eqz v4, :cond_e

    .line 673
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addAccessToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eqz v5, :cond_f

    .line 677
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addAuthServerUrl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eqz v6, :cond_10

    .line 681
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addImMsgTech(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move/from16 v1, p3

    int-to-long v1, v1

    .line 684
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v1, p11

    .line 685
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addSingleRegiEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v1, p13

    .line 686
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addAddMmtelCallcomposerTag(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 688
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->endRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method
