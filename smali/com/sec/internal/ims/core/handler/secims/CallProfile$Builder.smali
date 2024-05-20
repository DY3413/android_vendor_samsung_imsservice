.class public Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
.super Ljava/lang/Object;
.source "CallProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/CallProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field amrBeMaxRed:I

.field amrBeWbMaxRed:I

.field amrMode:Ljava/lang/String;

.field amrOaMaxRed:I

.field amrOaPayloadType:I

.field amrOaWbMaxRed:I

.field amrOpenPayloadType:I

.field amrPayloadType:I

.field amrWbMode:Ljava/lang/String;

.field amrWbOaPayloadType:I

.field amrWbPayloadType:I

.field audioAs:I

.field audioAvpf:Z

.field audioCodec:Ljava/lang/String;

.field audioDscp:I

.field audioPort:I

.field audioRr:I

.field audioRs:I

.field audioRtcpXr:Z

.field audioSrtp:Z

.field displayFormat:Ljava/lang/String;

.field displayFormatHevc:Ljava/lang/String;

.field dtmfMode:I

.field dtmfPayloadType:I

.field dtmfWbPayloadType:I

.field enableAvSync:Z

.field enableEvsCodec:Z

.field enableRtcpOnActiveCall:Z

.field enableScr:Z

.field evs2ndPayload:I

.field evsBandwidthReceive:Ljava/lang/String;

.field evsBandwidthReceiveExt:Ljava/lang/String;

.field evsBandwidthSend:Ljava/lang/String;

.field evsBandwidthSendExt:Ljava/lang/String;

.field evsBitRateReceive:Ljava/lang/String;

.field evsBitRateReceiveExt:Ljava/lang/String;

.field evsBitRateSend:Ljava/lang/String;

.field evsBitRateSendExt:Ljava/lang/String;

.field evsChannelAwareReceive:Ljava/lang/String;

.field evsChannelRecv:Ljava/lang/String;

.field evsChannelSend:Ljava/lang/String;

.field evsCodecModeRequest:Ljava/lang/String;

.field evsDefaultBandwidth:Ljava/lang/String;

.field evsDefaultBitrate:Ljava/lang/String;

.field evsDiscontinuousTransmission:Ljava/lang/String;

.field evsDtxRecv:Ljava/lang/String;

.field evsHeaderFull:Ljava/lang/String;

.field evsLimitedCodec:Ljava/lang/String;

.field evsMaxRed:I

.field evsModeSwitch:Ljava/lang/String;

.field evsPayload:I

.field evsPayloadExt:I

.field evsUseDefaultRtcpBw:Z

.field frameRate:I

.field h263QcifPayloadType:I

.field h264720pLPayloadType:I

.field h264720pPayloadType:I

.field h264CifLPayloadType:I

.field h264CifPayloadType:I

.field h264QvgaLPayloadType:I

.field h264QvgaPayloadType:I

.field h264VgaLPayloadType:I

.field h264VgaPayloadType:I

.field h265Hd720pLPayloadType:I

.field h265Hd720pPayloadType:I

.field h265QvgaLPayloadType:I

.field h265QvgaPayloadType:I

.field h265VgaLPayloadType:I

.field h265VgaPayloadType:I

.field ignoreRtcpTimeoutOnHoldCall:Z

.field maxPTime:I

.field pTime:I

.field packetizationMode:Ljava/lang/String;

.field rtcpTimeout:I

.field rtpTimeout:I

.field textAs:I

.field textAvpf:Z

.field textPort:I

.field textRr:I

.field textRs:I

.field textSrtp:Z

.field useSpsForH264Hd:Z

.field videoAs:I

.field videoAvpf:Z

.field videoCapabilities:Z

.field videoCodec:Ljava/lang/String;

.field videoPort:I

.field videoRr:I

.field videoRs:I

.field videoRtcpXr:Z

.field videoSrtp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 238
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    const/16 v0, 0xf0

    .line 239
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 1

    .line 312
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 1

    .line 316
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;)V

    return-object v0
.end method

.method public setAmrBeMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 375
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeMaxRed:I

    return-object p0
.end method

.method public setAmrBeWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 385
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeWbMaxRed:I

    return-object p0
.end method

.method public setAmrMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrMode:Ljava/lang/String;

    return-object p0
.end method

.method public setAmrOaMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 370
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaMaxRed:I

    return-object p0
.end method

.method public setAmrOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 340
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaPayloadType:I

    return-object p0
.end method

.method public setAmrOaWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 380
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaWbMaxRed:I

    return-object p0
.end method

.method public setAmrOpenPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 355
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOpenPayloadType:I

    return-object p0
.end method

.method public setAmrPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 335
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrPayloadType:I

    return-object p0
.end method

.method public setAmrWbMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbMode:Ljava/lang/String;

    return-object p0
.end method

.method public setAmrWbOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 350
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbOaPayloadType:I

    return-object p0
.end method

.method public setAmrWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 345
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbPayloadType:I

    return-object p0
.end method

.method public setAudioAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 405
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAs:I

    return-object p0
.end method

.method public setAudioAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAvpf:Z

    return-object p0
.end method

.method public setAudioCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioCodec:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioDscp(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 330
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioDscp:I

    return-object p0
.end method

.method public setAudioPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 325
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioPort:I

    return-object p0
.end method

.method public setAudioRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 415
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRr:I

    return-object p0
.end method

.method public setAudioRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 410
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRs:I

    return-object p0
.end method

.method public setAudioRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 640
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRtcpXr:Z

    return-object p0
.end method

.method public setAudioSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 560
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioSrtp:Z

    return-object p0
.end method

.method public setDisplayFormat(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayFormatHevc(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormatHevc:Ljava/lang/String;

    return-object p0
.end method

.method public setDtmfMode(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 650
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfMode:I

    return-object p0
.end method

.method public setDtmfPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 365
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfPayloadType:I

    return-object p0
.end method

.method public setDtmfWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 360
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfWbPayloadType:I

    return-object p0
.end method

.method public setEnableAvSync(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 630
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableAvSync:Z

    return-object p0
.end method

.method public setEnableEvsCodec(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableEvsCodec:Z

    return-object p0
.end method

.method public setEnableRtcpOnActiveCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 625
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableRtcpOnActiveCall:Z

    return-object p0
.end method

.method public setEnableScr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 635
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableScr:Z

    return-object p0
.end method

.method public setEvs2ndPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 725
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evs2ndPayload:I

    return-object p0
.end method

.method public setEvsBandwidthReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceive:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBandwidthReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceiveExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBandwidthSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSend:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBandwidthSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSendExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceive:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceiveExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSend:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSendExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsChannelAwareReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelAwareReceive:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsChannelRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelRecv:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsChannelSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelSend:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsCodecModeRequest(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsCodecModeRequest:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDefaultBandwidth(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBandwidth:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDefaultBitrate(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBitrate:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDiscontinuousTransmission(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDiscontinuousTransmission:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDtxRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDtxRecv:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsHeaderFull(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsHeaderFull:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsLimitedCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsLimitedCodec:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 390
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsMaxRed:I

    return-object p0
.end method

.method public setEvsModeSwitch(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsModeSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 720
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayload:I

    return-object p0
.end method

.method public setEvsPayloadExt(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 740
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayloadExt:I

    return-object p0
.end method

.method public setEvsUseDefaultRtcpBw(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 770
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsUseDefaultRtcpBw:Z

    return-object p0
.end method

.method public setFrameRate(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 440
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->frameRate:I

    return-object p0
.end method

.method public setH263QcifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 530
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h263QcifPayloadType:I

    return-object p0
.end method

.method public setH264720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 495
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pLPayloadType:I

    return-object p0
.end method

.method public setH264720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 490
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pPayloadType:I

    return-object p0
.end method

.method public setH264CifLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 525
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifLPayloadType:I

    return-object p0
.end method

.method public setH264CifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 520
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifPayloadType:I

    return-object p0
.end method

.method public setH264QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 515
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaLPayloadType:I

    return-object p0
.end method

.method public setH264QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 510
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaPayloadType:I

    return-object p0
.end method

.method public setH264VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 505
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaLPayloadType:I

    return-object p0
.end method

.method public setH264VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 500
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaPayloadType:I

    return-object p0
.end method

.method public setH265Hd720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 485
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pLPayloadType:I

    return-object p0
.end method

.method public setH265Hd720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 480
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pPayloadType:I

    return-object p0
.end method

.method public setH265QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 465
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaLPayloadType:I

    return-object p0
.end method

.method public setH265QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 460
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaPayloadType:I

    return-object p0
.end method

.method public setH265VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 475
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaLPayloadType:I

    return-object p0
.end method

.method public setH265VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 470
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaPayloadType:I

    return-object p0
.end method

.method public setIgnoreRtcpTimeoutOnHoldCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 620
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->ignoreRtcpTimeoutOnHoldCall:Z

    return-object p0
.end method

.method public setMaxPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 425
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    return-object p0
.end method

.method public setPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 420
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    return-object p0
.end method

.method public setPacketizationMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->packetizationMode:Ljava/lang/String;

    return-object p0
.end method

.method public setRtcpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 615
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtcpTimeout:I

    return-object p0
.end method

.method public setRtpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 610
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtpTimeout:I

    return-object p0
.end method

.method public setTextAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 590
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAs:I

    return-object p0
.end method

.method public setTextAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAvpf:Z

    return-object p0
.end method

.method public setTextPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 605
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textPort:I

    return-object p0
.end method

.method public setTextRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 600
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRr:I

    return-object p0
.end method

.method public setTextRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 595
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRs:I

    return-object p0
.end method

.method public setTextSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 580
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textSrtp:Z

    return-object p0
.end method

.method public setUseSpsForH264Hd(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 535
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->useSpsForH264Hd:Z

    return-object p0
.end method

.method public setVideoAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 540
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAs:I

    return-object p0
.end method

.method public setVideoAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAvpf:Z

    return-object p0
.end method

.method public setVideoCapabilities(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 585
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCapabilities:Z

    return-object p0
.end method

.method public setVideoCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCodec:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 435
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoPort:I

    return-object p0
.end method

.method public setVideoRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 550
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRr:I

    return-object p0
.end method

.method public setVideoRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 545
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRs:I

    return-object p0
.end method

.method public setVideoRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 645
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRtcpXr:Z

    return-object p0
.end method

.method public setVideoSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 570
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoSrtp:Z

    return-object p0
.end method
