.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;
.super Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
.source "AndsfMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndsfMessage"


# instance fields
.field public messageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;->messageType:Ljava/lang/String;

    return-void
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "original message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->origMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "PNS: "

    return-object p0
.end method


# virtual methods
.method public broadcastFcmMessage(Landroid/content/Context;)V
    .locals 3

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;->messageType:Ljava/lang/String;

    const-string v2, "messageType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;->getNotificationContent()Ljava/lang/String;

    move-result-object p0

    const-string v1, "notification_content"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push notification broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object p0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public shouldBroadcast(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
