.class public Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
.super Ljava/lang/Object;
.source "IshTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IshTranslation"

.field private static final mCranePackage:Ljava/lang/String; = "com.samsung.crane"

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;


# direct methods
.method static bridge synthetic -$$Nest$mrequestAcceptShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestCancelShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestNewShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestNewShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 48
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;I)V
    .registers 6

    .line 228
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/sec/internal/helper/os/TelephonyUtilsWrapper;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 232
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_35

    .line 234
    :cond_2e
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_35
    return-void
.end method

.method private requestAcceptShare(Landroid/content/Intent;)V
    .registers 5

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestAcceptShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    .line 79
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->acceptShare(J)V

    return-void
.end method

.method private requestCancelShare(Landroid/content/Intent;)V
    .registers 5

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 86
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCancelShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    .line 87
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->cancelShare(J)V

    return-void
.end method

.method private requestNewShare(Landroid/content/Intent;)V
    .registers 5

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNewShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V
    .registers 9

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.callcomposer.receiver.SessionInvitationReceiver"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 149
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    .line 151
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_DIRECTION"

    .line 152
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCommunicationError()V
    .registers 3

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMMUNICATION_ERROR"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCompleted(JLcom/sec/ims/util/ImsUri;)V
    .registers 7

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.receiver.CSNotificationReceiver"

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 137
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastConnected(JLcom/sec/ims/util/ImsUri;)V
    .registers 7

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.receiver.CSNotificationReceiver"

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 162
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 163
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCshServiceNotReady()V
    .registers 3

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V
    .registers 10

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.callcomposer.receiver.SessionInvitationReceiver"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 110
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    const/4 p2, 0x1

    .line 111
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 112
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public broadcastInvalidDataPath(Ljava/lang/String;)V
    .registers 4

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_FILE_PATH_ERROR"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 190
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastLimitExceeded(JLcom/sec/ims/util/ImsUri;)V
    .registers 6

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_LIMIT_EXCEEDED"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 172
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastOutgoingSucceeded(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .registers 7

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CREATED"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 98
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 99
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastProgress(JLcom/sec/ims/util/ImsUri;JJ)V
    .registers 11

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.receiver.CSNotificationReceiver"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 124
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 125
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_DONE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastServiceNotReady()V
    .registers 3

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_SERVICE_NOT_READY"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastServiceReady()V
    .registers 3

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_SERVICE_READY"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastSystemRefresh(Ljava/lang/String;)V
    .registers 4

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 6

    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    .line 241
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 242
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestNewShare(Landroid/content/Intent;)V

    goto :goto_3d

    :cond_26
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    .line 243
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 244
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    goto :goto_3d

    :cond_32
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    .line 245
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 246
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    :cond_3d
    :goto_3d
    return-void
.end method
