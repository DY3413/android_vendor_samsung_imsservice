.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsStubActionReceiver"
.end annotation


# static fields
.field protected static final ACTION_MOCK_NETWORK_EVENT:Ljava/lang/String; = "com.sec.ims.MOCK_IMS_EVENT"

.field protected static final EXTRA_EVENT:Ljava/lang/String; = "event"

.field protected static final EXTRA_NETWORK:Ljava/lang/String; = "network"

.field protected static final EXTRA_OOS:Ljava/lang/String; = "oos"

.field protected static final EXTRA_PHONEID:Ljava/lang/String; = "phoneid"

.field protected static final EXTRA_VOPS:Ljava/lang/String; = "vops"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: Intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiMgr-Handler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "event"

    .line 203
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network"

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 206
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "vops"

    .line 207
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oos"

    .line 208
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "phoneid"

    .line 209
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImsStub: network event - network="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " VoPS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " OutOfSvc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    invoke-static {v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    if-nez v6, :cond_7f

    const-string p0, "onReceive, mNetworkEvent is not exist. Return.."

    .line 215
    invoke-static {v0, v5, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 219
    :cond_7f
    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v0, v6}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    const-string v6, "nr"

    .line 220
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    const/16 p1, 0x14

    .line 221
    iput p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_d0

    :cond_91
    const-string v6, "lte"

    .line 222
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9e

    const/16 p1, 0xd

    .line 223
    iput p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_d0

    :cond_9e
    const-string v6, "hspa"

    .line 224
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/16 p1, 0xa

    .line 225
    iput p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_d0

    :cond_ab
    const-string v6, "ehrpd"

    .line 226
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b8

    const/16 p1, 0xe

    .line 227
    iput p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_d0

    :cond_b8
    const-string v6, "cdma"

    .line 228
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c4

    const/4 p1, 0x7

    .line 229
    iput p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_d0

    :cond_c4
    const-string v6, "iwlan"

    .line 230
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d0

    const/16 p1, 0x12

    .line 231
    iput p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 234
    :cond_d0
    :goto_d0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 235
    invoke-static {v2}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 238
    :cond_dc
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ee

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ee

    .line 239
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 241
    :cond_ee
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p1, 0x2bd

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v5, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_fa
    return-void
.end method
