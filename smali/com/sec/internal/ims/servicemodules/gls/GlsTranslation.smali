.class public Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;
.super Ljava/lang/Object;
.source "GlsTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GlsTranslation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/gls/GlsModule;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    .line 40
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 41
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 381
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;Z)V
    .locals 3

    .line 385
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    .line 387
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private getRequiredAction(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)I
    .locals 1

    .line 485
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private requestAcceptLocationShare(Landroid/content/Intent;)V
    .locals 3

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_id"

    .line 150
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentUri"

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private requestCreateInCallLocationShare(Landroid/content/Intent;)V
    .locals 11

    .line 117
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestCreateInCallLocationShare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chat_id"

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "contactUri"

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "disposition_notification"

    .line 124
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "location"

    .line 125
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/location/Location;

    const-string v4, "label"

    .line 126
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "request_message_id"

    .line 128
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 127
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v4, "is_publicAccountMsg"

    const/4 v5, 0x0

    .line 131
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL"

    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_GC"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "sip:anonymous@anonymous.invalid"

    .line 139
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    const/4 v0, 0x1

    move-object v4, p1

    move v10, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    move v10, v5

    .line 142
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 143
    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    move-object v2, p0

    .line 142
    invoke-virtual/range {v2 .. v10}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;

    return-void
.end method

.method private requestRejectLocationShare(Landroid/content/Intent;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_id"

    .line 158
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->rejectLocationShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestShareLocationInChat(Landroid/content/Intent;)V
    .locals 13

    .line 72
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestShareLocationInChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chat_id"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "disposition_notification"

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    .line 78
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/location/Location;

    const-string v2, "label"

    .line 79
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_type"

    .line 80
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    const-string v2, "request_message_id"

    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v2, "locationLink"

    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "contactUri"

    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "maap_traffic_type"

    .line 89
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "sim_slot_id"

    .line 90
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT"

    .line 95
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    move-object v10, p1

    move v11, v3

    goto :goto_2

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_GC"

    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move v11, p1

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    move-object v10, v5

    :goto_2
    const/4 p1, -0x1

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 108
    :catch_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid slot id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    move v3, p1

    .line 111
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v2 .. v12}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.samsung.rcs.framework.geolocationshare.category.ACTION"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_GC"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_GC"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.ACCEPT_SHARE_LOCATION_INCALL"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestAcceptLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.REJECT_SHARE_LOCATION_INCALL"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestRejectLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.START_SHARE_LOCATION_INCALL"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestStartLocationShareInCall(Landroid/content/Intent;)V

    goto :goto_2

    .line 66
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 55
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestCreateInCallLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 50
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestShareLocationInChat(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onAcceptLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.ACCEPT_LOCATION_SHARE_INCALL_RESPONSE"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 259
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "message_imdn_id"

    .line 260
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "chat_id"

    .line 261
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCancelLocationShareInCallResponse(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V
    .locals 2

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CANCEL_LOCATION_SHARE_INCALL_RESPONSE"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 282
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "message_imdn_id"

    .line 283
    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message_direction"

    .line 284
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "chat_id"

    .line 285
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public onCreateInCallLocationShareResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_RESPONSE"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 247
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p3, :cond_0

    const-wide/16 p3, -0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :goto_0
    const-string v1, "request_message_id"

    .line 248
    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p3, "chat_id"

    .line 250
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message_imdn_id"

    .line 251
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeleteAllLocationShareResponse(Z)V
    .locals 2

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.DELETE_ALL_LOCATION_SHARE_INCALL_RESPONSE"

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 297
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0

    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 398
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferAttached: call onOutgoingTransferAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onOutgoingTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 404
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferReceived: call onIncomingTransferUndecided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onIncomingTransferUndecided(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    .line 432
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    .line 471
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_NOTIFICATION_STATUS"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    const-string v2, "message_notification_status"

    .line 372
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    const-string v1, "message_notification_status_received"

    .line 374
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_group_chat"

    .line 376
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 377
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onIncomingLoactionShareInCall(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.INCOMING_LOCATION_SHARE_INCALL_INVITATION"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    const-string v1, "is_bot"

    .line 320
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onLocationShareInCallCompleted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 340
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onLocationShareInCallCompleted: msg is null, skip"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_1

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SENT_LOCATION_SHARE_MESSAGE"

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 352
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "message_imdn_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p2

    const-string v1, "message_direction"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    const-string p2, "request_message_id"

    .line 355
    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "maap_traffic_type"

    .line 361
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x1

    .line 363
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onLocationShareInCallCompleted(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V
    .locals 2

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 330
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "message_imdn_id"

    .line 331
    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p1

    const-string p2, "message_direction"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "chat_id"

    .line 333
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 335
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 448
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 442
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 8

    .line 459
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v7, p3

    .line 459
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 8

    .line 453
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 453
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-void
.end method

.method public onReceiveShareLocationInChatMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_group_chat"

    .line 216
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p2

    const-string v1, "message_direction"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSuggestion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 222
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "persistent"

    .line 223
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v1, "extra_suggestion_text"

    .line 228
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, "maap_traffic_type"

    .line 233
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    const-string p1, "is_bot"

    .line 237
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 3

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_SHARE_LOCATION_IN_CHAT_RESPONSE"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 187
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string p2, "request_message_id"

    .line 188
    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "chat_id"

    .line 190
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message_imdn_id"

    .line 191
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_2

    .line 194
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->getRequiredAction(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)I

    move-result p1

    const-string p2, "required_action"

    .line 193
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p1, p2, :cond_1

    .line 196
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p1, p2, :cond_2

    .line 197
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 198
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_reason"

    .line 197
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 203
    invoke-interface {p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDisplayWarnText()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 204
    invoke-virtual {p7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "warn_text"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x1

    .line 207
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onRejectLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.REJECT_LOCATION_SHARE_INCALL_RESPONSE"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 269
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "message_imdn_id"

    .line 270
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "chat_id"

    .line 271
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_RESPONSE"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 173
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string p2, "request_message_id"

    .line 174
    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "chat_id"

    .line 176
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message_imdn_id"

    .line 177
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 179
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onStartLocationShareInCallResponse(Ljava/lang/String;Z)V
    .locals 2

    .line 303
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.START_SHARE_LOCATION_INCALL_RESPONSE"

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    .line 306
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "message_imdn_id"

    .line 307
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 425
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTransferCanceled: call onTransferCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 419
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTransferCompleted: call onTransferCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public requestStartLocationShareInCall(Landroid/content/Intent;)V
    .locals 1

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->startLocationShareInCall(Ljava/lang/String;)V

    return-void
.end method
