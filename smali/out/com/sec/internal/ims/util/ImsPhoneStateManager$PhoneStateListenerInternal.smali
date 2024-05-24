.class Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "ImsPhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ImsPhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mSimSlot:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/util/ImsPhoneStateManager;II)V
    .registers 4

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 132
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 133
    iput p3, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    .line 134
    iput p2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return-void
.end method


# virtual methods
.method public getSimSlot()I
    .registers 1

    .line 138
    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    return p0
.end method

.method public getSubId()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return p0
.end method

.method public onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 151
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 160
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 169
    :cond_15
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 178
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public onDataActivity(I)V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 197
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 5

    .line 213
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_20

    return-void

    .line 218
    :cond_20
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s) X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 6

    .line 202
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s, n) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_20

    return-void

    .line 207
    :cond_20
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s, n) X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 228
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 266
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    .line 233
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onServiceStateChanged E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_20

    return-void

    .line 238
    :cond_20
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onServiceStateChanged X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 248
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public onSrvccStateChanged(I)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_15

    return-void

    .line 257
    :cond_15
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    return-void
.end method
