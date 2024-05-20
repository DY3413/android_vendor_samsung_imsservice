.class Lcom/sec/internal/google/ImsSmsImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsSmsImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsSmsImpl;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.internal.google.ImsSmsImpl.PduTest"

    .line 1490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "phoneId"

    .line 1491
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    const-string/jumbo v1, "type"

    .line 1492
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "hexString"

    .line 1494
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1495
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver.onReceive: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pduType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pduHexString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/google/ImsSmsImpl;)I

    move-result v1

    if-eq v1, p1, :cond_0

    return-void

    .line 1499
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 1501
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mIntentReceiver.onReceive: pdu is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, "3gpp"

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1514
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIntentReceiver.onReceive: unsupported pduType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1510
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {p2}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_CDMA_SMS_IMS"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "3gpp2"

    goto :goto_0

    .line 1506
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_GSM_SMS_IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl$2;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    const/16 v0, 0xff

    invoke-static {p0, v0, p2, p1}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$monSmsPduTestReceived(Lcom/sec/internal/google/ImsSmsImpl;ILjava/lang/String;[B)V

    :cond_4
    return-void
.end method
