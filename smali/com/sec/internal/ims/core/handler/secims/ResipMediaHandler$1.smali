.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;
.super Lcom/sec/sve/IImsMediaEventListener$Stub;
.source "ResipMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-direct {p0}, Lcom/sec/sve/IImsMediaEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInjectionEnded(JJ)V
    .locals 0

    return-void
.end method

.method public onAudioRtpRtcpTimeout(II)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRtpRtcpTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 122
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 123
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onDtmfEvent(II)V
    .locals 2

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDtmfEvent dtmfKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setDtmfEvent(I)V

    .line 307
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setDtmfKey(I)V

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecordEvent(II)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordEvent errCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 315
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 317
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 319
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 321
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecordingStopped(JJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRtpLossRate(IIFFI)V
    .locals 1

    .line 131
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 133
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    const/16 p1, 0x4e

    .line 134
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 136
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;-><init>(IFFI)V

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRtpLossRate(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRtpStats(IIIIII)V
    .locals 9

    .line 143
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 144
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 145
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    const/16 v1, 0x20

    .line 146
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 148
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;-><init>(IIIIII)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextReceive(IILjava/lang/String;II)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$800(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 281
    invoke-virtual {v0, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setTextEvent(I)V

    .line 282
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 283
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 284
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 285
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRttText(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRttTextLen(I)V

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextRtpRtcpTimeout(II)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextRtpRtcpTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 295
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setTextEvent(I)V

    .line 296
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 297
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoEvent(IIIII)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 158
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid Video Event"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x3ef

    if-lt p3, p1, :cond_1

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignore PTT Video Event in legacy VoLTE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_1
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 169
    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/16 p3, 0x50

    if-eq p2, p3, :cond_5

    const/16 p3, 0x51

    if-eq p2, p3, :cond_4

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_3

    const/16 p3, 0x75

    if-eq p2, p3, :cond_2

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 259
    :pswitch_0
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 256
    :pswitch_1
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 253
    :pswitch_2
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 250
    :pswitch_3
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 247
    :pswitch_4
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 208
    :pswitch_5
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 205
    :pswitch_6
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 202
    :pswitch_7
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 199
    :pswitch_8
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 196
    :pswitch_9
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 186
    :pswitch_a
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTCP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 187
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto/16 :goto_0

    .line 182
    :pswitch_b
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 183
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto/16 :goto_0

    .line 179
    :pswitch_c
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto/16 :goto_0

    .line 243
    :pswitch_d
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 244
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto/16 :goto_0

    .line 238
    :pswitch_e
    invoke-virtual {p1, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 239
    invoke-virtual {p1, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 240
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 230
    :pswitch_f
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 193
    :pswitch_10
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 190
    :pswitch_11
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 217
    :pswitch_12
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 173
    :pswitch_13
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 211
    :pswitch_14
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 214
    :pswitch_15
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 176
    :pswitch_16
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 227
    :pswitch_17
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 222
    :pswitch_18
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 235
    :cond_2
    :pswitch_19
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto :goto_0

    .line 270
    :cond_3
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VCID_GENERAL_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 271
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto :goto_0

    .line 266
    :cond_4
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->IMS_GENERAL_EVENT_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 267
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto :goto_0

    .line 262
    :cond_5
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->IMS_GENERAL_EVENT_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 263
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    .line 274
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_17
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_b
        :pswitch_a
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
