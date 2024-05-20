.class public Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
.super Ljava/lang/Object;
.source "VshTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VshTranslation"

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method static bridge synthetic -$$Nest$mrequestAcceptShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestCancelShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestChangeSurfaceOrientation(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestChangeSurfaceOrientation(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestNewShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestNewShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestToggleCamera(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestToggleCamera(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 53
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private requestAcceptShare(Landroid/content/Intent;)V
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 97
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 98
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->acceptShare(J)V

    return-void
.end method

.method private requestCancelShare(Landroid/content/Intent;)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->cancelShare(J)V

    return-void
.end method

.method private requestChangeSurfaceOrientation(Landroid/content/Intent;)V
    .locals 4

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 134
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSurfaceOrientation: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    .line 135
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.SURFACE_ORIENTATION"

    const/4 v3, -0x1

    .line 136
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->changeSurfaceOrientation(JI)V

    return-void
.end method

.method private requestNewShare(Landroid/content/Intent;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 85
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNewShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    const-string v2, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    .line 87
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private requestToggleCamera(Landroid/content/Intent;)V
    .locals 3

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 122
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestToggleCamera: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    .line 123
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->toggleCamera(J)V

    return-void
.end method


# virtual methods
.method public broadcastApproachingVsMaxDuration(JI)V
    .locals 2

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.APPROCHING_VS_MAX_DURATION"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 280
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.REMAINING_TIME"

    .line 281
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V
    .locals 2

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 183
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    .line 185
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_DIRECTION"

    .line 186
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCommunicationError()V
    .locals 2

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_LCOMMUNICATION_ERROR"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastConnected(JLcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 203
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCshCamError()V
    .locals 2

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_CAM_ERROR"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastCshServiceNotReady()V
    .locals 2

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 2

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    .line 158
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    const/4 p2, 0x2

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    .line 161
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastServiceNotReady()V
    .locals 2

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_SERVICE_NOT_READY"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastServiceReady()V
    .locals 2

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_SERVICE_READY"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    .line 303
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestNewShare(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    .line 305
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    .line 307
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    .line 309
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestToggleCamera(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    .line 311
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestChangeSurfaceOrientation(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
