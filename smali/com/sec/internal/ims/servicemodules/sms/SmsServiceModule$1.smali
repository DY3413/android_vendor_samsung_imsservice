.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_1
    const/4 v4, 0x7

    const-string v5, "mBroadcastReceiver.onReceive: "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 151
    :pswitch_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fputmStorageAvailable(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)V

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 156
    :pswitch_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fputmStorageAvailable(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)V

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    const-string/jumbo v0, "subscription"

    .line 176
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "state"

    .line 177
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq v0, v2, :cond_5

    goto/16 :goto_3

    :cond_5
    if-nez p2, :cond_6

    .line 184
    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newCallState: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p1

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmCallState(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 190
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_7

    .line 191
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p1

    aput-boolean v3, p1, v3

    .line 193
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIntForHandler(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/Integer;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SCBM timer was removed by E911 Call"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmCallState(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;

    move-result-object p0

    aput-object p2, p0, v3

    goto :goto_3

    :pswitch_3
    const-string v0, "phone"

    .line 162
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmMaxPhoneCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v1

    if-ge v0, v1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v3

    :goto_2
    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 164
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ecmState: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", phoneId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    .line 166
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_9

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p1

    aput-boolean v3, p1, v0

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIntForHandler(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/Integer;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    :cond_9
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72d34001 -> :sswitch_4
        -0x633bdce1 -> :sswitch_3
        -0x4f0a83a5 -> :sswitch_2
        0x4b3e2663 -> :sswitch_1
        0x79808857 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
