.class Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mSimSlot:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;II)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    .line 103
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 104
    iput p3, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    .line 105
    iput p2, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return-void
.end method

.method private isImsSlot()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getSimSlot()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return p0
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 138
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 166
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 187
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s) X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s, n) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 176
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s, n) X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 197
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 235
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 205
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onServiceStateChanged E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 207
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onServiceStateChanged X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 217
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSrvccStateChanged(I)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 226
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method
