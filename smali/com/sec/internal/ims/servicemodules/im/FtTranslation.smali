.class public Lcom/sec/internal/ims/servicemodules/im/FtTranslation;
.super Lcom/sec/internal/ims/servicemodules/im/TranslationBase;
.source "FtTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FtTranslation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 54
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 55
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 56
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isBMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method private handleFileResizeResponse(Landroid/content/Intent;)V
    .locals 3

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_result"

    .line 266
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "contentUri"

    .line 267
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->handleFileResizeResponse(Ljava/lang/String;ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private requestAcceptFileTransfer(Landroid/content/Intent;)V
    .locals 4

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message_direction"

    .line 198
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    const-string v2, "chatId"

    .line 199
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentUri"

    .line 200
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private requestAttachFileToGroupChat(Landroid/content/Intent;)V
    .locals 15

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requestAttachFileToGroupChat()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chatId"

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "fileName"

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "contentUri"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/net/Uri;

    const-string v1, "is_resizable"

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "disposition_notification"

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "request_message_id"

    .line 173
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v6, "is_broadcast_msg"

    .line 174
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v6, "ismassfiletransfer"

    .line 175
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v6, "isftsms"

    .line 176
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 177
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v2

    const-string v6, "file_disposition"

    move-object/from16 v8, p1

    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v14

    const-string v2, "ft_contenttype"

    .line 178
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_0

    move-object v0, p0

    .line 181
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private requestAttachFileToSingleChat(Landroid/content/Intent;)V
    .locals 18

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fileName"

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "contentUri"

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/net/Uri;

    const-string v1, "contactUri"

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "is_resizable"

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v2, "disposition_notification"

    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v6

    const-string v7, "file_disposition"

    move-object/from16 v8, p1

    invoke-virtual {v8, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v15

    const-string v6, "request_message_id"

    .line 131
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v6, "is_publicAccountMsg"

    .line 132
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v6, "ismassfiletransfer"

    .line 133
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v6, "isftsms"

    .line 134
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v6, "sim_slot_id"

    .line 135
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ft_contenttype"

    .line 136
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "is_token_used"

    .line 137
    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v7, "is_token_link"

    .line 138
    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v10, :cond_0

    const-string v7, "publicAccount_Send_Domain"

    .line 141
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/sec/internal/helper/PublicAccountUri;->setPublicAccountDomain(Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v6, :cond_1

    .line 149
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    goto :goto_0

    .line 151
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid slot id : "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestAttachFileToSingleChat() phoneId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    .line 156
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    const/4 v14, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v17}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 160
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal arguments from message app: contentUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disposition: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "requestMessageId: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private requestCancelFileTransfer(Landroid/content/Intent;)V
    .locals 3

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message_direction"

    .line 241
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    const-string v2, "chatId"

    .line 242
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method private requestDeclineFileTransfer(Landroid/content/Intent;)V
    .locals 3

    .line 206
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message_direction"

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    const-string v2, "chatId"

    .line 210
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method private requestResumeReceivingFileTransfer(Landroid/content/Intent;)V
    .locals 3

    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatId"

    .line 231
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentUri"

    .line 232
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 234
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private requestResumeSendingFileTransfer(Landroid/content/Intent;)V
    .locals 5

    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_resizable"

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "contentUri"

    .line 220
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 222
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestResumeSendingFileTransfer isResizable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method private requestSendFile(Landroid/content/Intent;)V
    .locals 1

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_imdn_id"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(Ljava/lang/String;)V

    return-void
.end method

.method private requestSetAutoAcceptFt(Landroid/content/Intent;)V
    .locals 4

    .line 248
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "sim_slot_id"

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoAcceptState"

    .line 250
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid slot id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_DECLINE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.RESUME_SENDING_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "com.samsung.rcs.framework.filetransfer.response.RESPONSE_FILE_RESIZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.SET_AUTO_ACCEPT_FT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.RESUME_INCOMING_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_CANCEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_ACCEPT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.ATTACH_FILE_TO_GROUP_CHAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "com.samsung.rcs.framework.filetransfer.action.SEND_FILE_TO_GROUP_CHAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected intent received. acition="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestAttachFileToSingleChat(Landroid/content/Intent;)V

    goto :goto_1

    .line 92
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestDeclineFileTransfer(Landroid/content/Intent;)V

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestResumeSendingFileTransfer(Landroid/content/Intent;)V

    goto :goto_1

    .line 113
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->handleFileResizeResponse(Landroid/content/Intent;)V

    goto :goto_1

    .line 109
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestSetAutoAcceptFt(Landroid/content/Intent;)V

    goto :goto_1

    .line 100
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestResumeReceivingFileTransfer(Landroid/content/Intent;)V

    goto :goto_1

    .line 88
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestCancelFileTransfer(Landroid/content/Intent;)V

    goto :goto_1

    .line 84
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestAcceptFileTransfer(Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestAttachFileToGroupChat(Landroid/content/Intent;)V

    goto :goto_1

    .line 105
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->requestSendFile(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x712572de -> :sswitch_a
        -0x6fae053b -> :sswitch_9
        -0x6dac5312 -> :sswitch_8
        -0x6a59d9a0 -> :sswitch_7
        -0x4425e06f -> :sswitch_6
        -0x435e999b -> :sswitch_5
        -0x239263e0 -> :sswitch_4
        0x3eb76d5c -> :sswitch_3
        0x536b7645 -> :sswitch_2
        0x5a4167b0 -> :sswitch_1
        0x6f801d48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 491
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCancelRequestFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.REQUEST_FAILED"

    .line 495
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string v2, "message_direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "chatId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "invokingAction"

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.TRANSFER_CANCEL"

    .line 499
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 4

    .line 475
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestLargeMessageModeFileResize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "msg is null"

    .line 476
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 479
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.request.REQUEST_FILE_RESIZE"

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 483
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "chatId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "resize_limit"

    .line 484
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 486
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 294
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferAttached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "msg is null"

    .line 295
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_ATTACHED"

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesTotal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferMech()I

    move-result p1

    const-string v1, "ft_mech"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 276
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "msg is null"

    .line 277
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CREATED"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "contentUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string v1, "bytesTotal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5

    .line 369
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFileTransferReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    const-string v3, "bytesTotal"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 381
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    const-string/jumbo v2, "thumbnailData"

    .line 385
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 386
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 390
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTimeDuration()I

    move-result v1

    const-string/jumbo v2, "timeDuration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "outgoing_request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_expire"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v1

    const-string v2, "is_standalone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v1

    const-string v2, "message_type"

    .line 397
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    if-nez v1, :cond_2

    .line 401
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 403
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v2

    const-string v4, "file_disposition"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    if-ne v1, v2, :cond_3

    .line 405
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getPlayingLength()I

    move-result v1

    const-string v2, "playing_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string v2, "message_direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isRoutingMsg()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 411
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isRoutingMsg()Z

    move-result v1

    const-string v2, "is_routingMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-eq v1, v2, :cond_4

    .line 413
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->getId()I

    move-result v1

    const-string v2, "routing_msg_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    :cond_4
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_5

    const/high16 v1, 0x10000000

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 420
    :cond_5
    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsAutoDownload:Z

    const-string v2, "ft_autodownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_7

    .line 424
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferMech()I

    move-result v1

    const-string v2, "ft_mech"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v1, v2, :cond_8

    const-string v1, "is_bot"

    .line 429
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;->putMaapExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Landroid/content/Intent;)V

    .line 434
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsTrafficType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 436
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcsTrafficType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rcs_traffic_type"

    .line 437
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    :cond_9
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 2

    .line 468
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImdnNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;->createImdnNotificationReceivedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 2

    .line 505
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "message is null"

    .line 506
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;->createMessageSendingFailedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Landroid/content/Intent;

    move-result-object p2

    .line 510
    instance-of p3, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    const-string v0, "is_ft"

    .line 511
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    :cond_0
    instance-of p3, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz p3, :cond_1

    .line 514
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDataUrl()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ftsms_dataurl"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileBrandedUrl()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ftsms_brandedurl"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 446
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTransferCanceled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne v0, v1, :cond_0

    return-void

    .line 451
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 452
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CANCELED"

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 456
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string v2, "message_direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->hasChatbotParticipant(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 460
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    :goto_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v1

    const-string v2, "reason"

    .line 459
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getResumableOptionCode()I

    move-result v1

    const-string v2, "resumable_option_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "error_notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 334
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTransferCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 340
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string v2, "message_direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesTotal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    const-string v2, "notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    const-string v2, "file_expire"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "contentUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    if-nez v1, :cond_2

    .line 352
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 354
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v2

    const-string v3, "file_disposition"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    if-ne v1, v2, :cond_3

    .line 356
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getPlayingLength()I

    move-result v1

    const-string v2, "playing_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDataUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ftsms_dataurl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isFtSms()Z

    move-result v1

    const-string v2, "isftsms"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isFtSms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileBrandedUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ftsms_brandedurl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 312
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTransferProgressReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_PROGRESS"

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    const-string v2, "message_direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "bytesDone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const-string v1, "bytesTotal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method
