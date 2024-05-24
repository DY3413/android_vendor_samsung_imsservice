.class Lcom/sec/internal/imsphone/ImsSmsImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/ImsSmsImpl;)V
    .registers 2

    .line 1292
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.internal.google.ImsSmsImpl.PduTest"

    .line 1296
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    const-string p1, "phoneId"

    const/4 v0, 0x0

    .line 1297
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "type"

    const/4 v1, -0x1

    .line 1298
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "hexString"

    .line 1300
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1301
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

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

    .line 1302
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/imsphone/ImsSmsImpl;)I

    move-result v1

    if-eq v1, p1, :cond_54

    return-void

    .line 1305
    :cond_54
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_66

    .line 1307
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mIntentReceiver.onReceive: pdu is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_66
    const-string p2, "3gpp"

    if-eqz v0, :cond_87

    const/4 v1, 0x1

    if-eq v0, v1, :cond_79

    .line 1320
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIntentReceiver.onReceive: unsupported pduType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1316
    :cond_79
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_CDMA_SMS_IMS"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "3gpp2"

    goto :goto_92

    .line 1312
    :cond_87
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_GSM_SMS_IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :goto_92
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$2;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    const/16 v0, 0xff

    invoke-static {p0, v0, p2, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$monSmsPduTestReceived(Lcom/sec/internal/imsphone/ImsSmsImpl;ILjava/lang/String;[B)V

    :cond_99
    return-void
.end method
