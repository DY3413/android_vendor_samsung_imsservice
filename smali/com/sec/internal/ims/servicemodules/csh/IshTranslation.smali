.class public Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
.super Ljava/lang/Object;
.source "IshTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IshTranslation"

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;


# direct methods
.method static bridge synthetic -$$Nest$mrequestAcceptShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestCancelShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestNewShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestNewShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 44
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestAcceptShare(Landroid/content/Intent;)V
    .locals 3

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAcceptShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->acceptShare(J)V

    return-void
.end method

.method private requestCancelShare(Landroid/content/Intent;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCancelShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->cancelShare(J)V

    return-void
.end method

.method private requestNewShare(Landroid/content/Intent;)V
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNewShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
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
    .locals 2

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 141
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    .line 143
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_DIRECTION"

    .line 144
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCommunicationError()V
    .locals 2

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMMUNICATION_ERROR"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCompleted(JLcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 130
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastConnected(JLcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 153
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCshServiceNotReady()V
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 105
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    const/4 p2, 0x1

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 107
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 214
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

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public broadcastInvalidDataPath(Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_FILE_PATH_ERROR"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 181
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastLimitExceeded(JLcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_LIMIT_EXCEEDED"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 163
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastOutgoingSucceeded(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CREATED"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 94
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 95
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastProgress(JLcom/sec/ims/util/ImsUri;JJ)V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 118
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_DONE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastServiceNotReady()V
    .locals 2

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_SERVICE_NOT_READY"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastServiceReady()V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_SERVICE_READY"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastSystemRefresh(Ljava/lang/String;)V
    .locals 3

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
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

    .line 221
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestNewShare(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    .line 223
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    .line 225
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
