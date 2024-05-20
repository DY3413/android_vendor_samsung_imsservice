.class public Lcom/sec/internal/ims/servicemodules/im/ImTranslation;
.super Lcom/sec/internal/ims/servicemodules/im/TranslationBase;
.source "ImTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImTranslation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private final mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;-><init>()V

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Create ImTranslation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 72
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    .line 73
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 74
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 75
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 76
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1208
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;Z)V
    .locals 3

    .line 1212
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

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

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    .line 1214
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1217
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isBMode(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1220
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method private getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "extras is null"

    .line 468
    invoke-static {p1, p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key is null"

    .line 469
    invoke-static {p2, p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 473
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 475
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private reportChatbotAsSpam(Landroid/content/Intent;)V
    .locals 9

    .line 447
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chatbot_uri"

    .line 448
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_id"

    .line 449
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "sim_slot_id"

    .line 450
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatbot_spam_type"

    .line 451
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "chatbot_free_text"

    .line 452
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "messages_id_list"

    .line 453
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 458
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid slot id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v3, p1

    .line 463
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportChatbotAsSpam() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->reportChatbotAsSpam(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestAcceptChat(Landroid/content/Intent;)V
    .locals 4

    .line 365
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_accept"

    .line 367
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "reason"

    const/4 v3, 0x0

    .line 368
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 369
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->acceptChat(Ljava/lang/String;ZI)V

    return-void
.end method

.method private requestAddParticipantsToChat(Landroid/content/Intent;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestAddParticipantsToChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "participants_list"

    .line 121
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 124
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    return-void
.end method

.method private requestAnswerGcChats(Landroid/content/Intent;)V
    .locals 2

    .line 387
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invitation_answer"

    .line 389
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 390
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->answerGcSession(Ljava/lang/String;Z)V

    return-void
.end method

.method private requestCancelMessage(Landroid/content/Intent;)V
    .locals 2

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "messages_imdn_id_list"

    .line 266
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->cancelMessages(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private requestChangeGroupAlias(Landroid/content/Intent;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestChangeGroupAlias()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_alias"

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestChangeGroupChatIcon(Landroid/content/Intent;)V
    .locals 3

    .line 156
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestChangeGroupChatIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupchat_icon_name"

    .line 159
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupchat_icon_uri"

    .line 160
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private requestChangeGroupChatLeader(Landroid/content/Intent;)V
    .locals 2

    .line 140
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestChangeGroupChatLeader()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "participants_list"

    .line 143
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private requestChangeGroupChatSubject(Landroid/content/Intent;)V
    .locals 2

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestChangeGroupChatSubject()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subject"

    .line 151
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestChatbotAnonymize(Landroid/content/Intent;)V
    .locals 6

    .line 429
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chatbot_anonymize_uri"

    .line 430
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatbot_anonymize_action"

    .line 431
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatbot_command_id"

    .line 432
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sim_slot_id"

    .line 433
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid slot id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 442
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestChatbotAnonymize() phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->requestChatbotAnonymize(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestCloseChat(Landroid/content/Intent;)V
    .locals 3

    .line 380
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chats_list"

    .line 381
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "is_dismissGroupChat"

    const/4 v2, 0x0

    .line 382
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChat(Ljava/util/List;ZZ)V

    return-void
.end method

.method private requestCreateChat(Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "participants_list"

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "subject"

    .line 82
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "content_type"

    .line 83
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "request_thread_id"

    const/4 v4, -0x1

    .line 84
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v3, "request_message_id"

    .line 85
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v3, "is_broadcast_msg"

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v3, "is_closed_group_chat"

    .line 87
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v3, "is_token_used"

    .line 88
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v3, "is_token_link"

    .line 89
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v3, "sim_slot_id"

    .line 90
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "groupchat_icon_name"

    .line 91
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "groupchat_icon_uri"

    .line 92
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/net/Uri;

    const-string v5, "conversation_id"

    .line 93
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "contribution_id"

    .line 94
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "session_uri"

    .line 95
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v3

    goto :goto_0

    .line 102
    :catch_0
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid slot id : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    .line 105
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCreateChat() phoneId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    .line 107
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v0, v5, v9, v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static {v2}, Lcom/sec/internal/helper/UriUtil;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :goto_1
    move-object/from16 v19, v0

    .line 111
    invoke-virtual/range {v4 .. v19}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private requestDeleteAllChats()V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteAllChats()Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private requestDeleteAllMessages(Landroid/content/Intent;)V
    .locals 3

    .line 401
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chats_list"

    .line 402
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "isLocalWipeOut"

    const/4 v2, 0x0

    .line 403
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteAllMessages(Ljava/util/List;Z)V

    return-void
.end method

.method private requestDeleteChats(Landroid/content/Intent;)V
    .locals 3

    .line 394
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chats_list"

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "isLocalWipeOut"

    const/4 v2, 0x0

    .line 396
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private requestDeleteGroupChatIcon(Landroid/content/Intent;)V
    .locals 2

    .line 165
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestDeleteGroupChatIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private requestDeleteMessages(Landroid/content/Intent;)V
    .locals 4

    .line 408
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "messages_imdn_dir_map"

    .line 409
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "chat_id"

    .line 410
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isLocalWipeOut"

    const/4 v3, 0x0

    .line 411
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 412
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->deleteMessagesByImdnId(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private requestDeliveryTimeout(Landroid/content/Intent;)V
    .locals 3

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDeliveryTimeout() chatId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->receiveDeliveryTimeout(Ljava/lang/String;)V

    return-void
.end method

.method private requestIgnoreIncomingMsgSet(Landroid/content/Intent;)V
    .locals 3

    .line 206
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestIgnoreIncomingMsgSet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_ignore_incoming_msg"

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->ignoreIncomingMsgSet(Ljava/lang/String;Z)V

    return-void
.end method

.method private requestMessageRevocation(Landroid/content/Intent;)V
    .locals 4

    .line 416
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 417
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMessageRevocation(): chatId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "user_select_result"

    .line 421
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "user_select_message_type"

    const/4 v3, 0x3

    .line 422
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "message_imdn_id"

    .line 423
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    if-eqz p1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->revokeMessage(Ljava/lang/String;Ljava/util/List;ZI)V

    return-void
.end method

.method private requestOpenChat(Landroid/content/Intent;)V
    .locals 3

    .line 373
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 374
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invitation_ui"

    const/4 v2, 0x0

    .line 375
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->openChat(Ljava/lang/String;Z)V

    return-void
.end method

.method private requestReadMessage(Landroid/content/Intent;)V
    .locals 4

    .line 256
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "messages_imdn_id_list"

    .line 258
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "update_only_mstore"

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private requestRemoveGroupChatParticipants(Landroid/content/Intent;)V
    .locals 2

    .line 132
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestRemoveGroupChatParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "participants_list"

    .line 135
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private requestReportMessage(Landroid/content/Intent;)V
    .locals 2

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestReportMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "messages_imdn_id_list"

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "chat_id"

    .line 184
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->reportMessages(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private requestSendComposingNotification(Landroid/content/Intent;)V
    .locals 3

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interval"

    .line 273
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "is_typing"

    .line 274
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->sendComposingNotification(Ljava/lang/String;IZ)V

    return-void
.end method

.method private requestSendMessage(Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    .line 224
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requestSendMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "chat_id"

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "message_body"

    .line 228
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "disposition_notification"

    .line 229
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_type"

    const-string/jumbo v7, "text/plain"

    .line 230
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "request_message_id"

    .line 231
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v4, "message_number"

    .line 232
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "is_broadcast_msg"

    const/4 v7, 0x0

    .line 233
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v4, "is_publicAccountMsg"

    .line 234
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v4, "publicAccount_Send_Domain"

    .line 236
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-static {v4}, Lcom/sec/internal/helper/PublicAccountUri;->setPublicAccountDomain(Ljava/lang/String;)V

    :cond_0
    const-string v4, "group_ccuser_list"

    .line 239
    invoke-direct {v0, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v13, "is_temporary"

    .line 240
    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v7, "maap_traffic_type"

    .line 241
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "reference_message_imdn_id"

    .line 242
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v7, "reference_message_type"

    .line 243
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v7, "reference_message_value"

    .line 244
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v14, :cond_1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestSendMessage, maapTrafficType = ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    const/4 v13, 0x0

    .line 251
    invoke-static {v4}, Lcom/sec/internal/helper/UriUtil;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v4, v0

    move-object v0, v14

    move-object v14, v1

    move-object/from16 v16, v0

    .line 250
    invoke-virtual/range {v4 .. v19}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1085
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1086
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.REMOVE_PARTICIPANTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.GET_LAST_MESSAGES_SENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.OPEN_CHAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_REVOKE_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.DELIVERY_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.ACCEPT_CHAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.DELETE_GROUPCHAT_ICON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUP_ALIAS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.IGNORE_INCOMING_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.ANSWER_GC_CHAT_INVITATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.GET_IS_COMPOSING_ACTIVE_URIS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "com.samsung.rcs.framework.chatbot.action.CHATBOT_ANONYMIZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUPCHAT_LEADER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "com.samsung.rcs.framework.chatbot.action.REPORT_CHATBOT_AS_SPAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_15
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.READ_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_16
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_CHATS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_17
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_18
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.REPORT_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_19
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.SET_GROUPCHAT_ICON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1a
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1b
    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.CANCEL_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected intent received. acition="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1149
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestRemoveGroupChatParticipants(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1121
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteChats(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1141
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestGetLastSentMessages(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1129
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestOpenChat(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1185
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestMessageRevocation(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1101
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestSendComposingNotification(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1177
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeliveryTimeout(Landroid/content/Intent;)V

    goto :goto_1

    .line 1097
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestSendMessage(Landroid/content/Intent;)V

    goto :goto_1

    .line 1189
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestAcceptChat(Landroid/content/Intent;)V

    goto :goto_1

    .line 1165
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteGroupChatIcon(Landroid/content/Intent;)V

    goto :goto_1

    .line 1117
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteAllMessages(Landroid/content/Intent;)V

    goto :goto_1

    .line 1169
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupAlias(Landroid/content/Intent;)V

    goto :goto_1

    .line 1181
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestIgnoreIncomingMsgSet(Landroid/content/Intent;)V

    goto :goto_1

    .line 1157
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupChatSubject(Landroid/content/Intent;)V

    goto :goto_1

    .line 1089
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestCreateChat(Landroid/content/Intent;)V

    goto :goto_1

    .line 1145
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestAnswerGcChats(Landroid/content/Intent;)V

    goto :goto_1

    .line 1137
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestComposingActiveUris(Landroid/content/Intent;)V

    goto :goto_1

    .line 1193
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChatbotAnonymize(Landroid/content/Intent;)V

    goto :goto_1

    .line 1153
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupChatLeader(Landroid/content/Intent;)V

    goto :goto_1

    .line 1093
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestAddParticipantsToChat(Landroid/content/Intent;)V

    goto :goto_1

    .line 1197
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->reportChatbotAsSpam(Landroid/content/Intent;)V

    goto :goto_1

    .line 1105
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestReadMessage(Landroid/content/Intent;)V

    goto :goto_1

    .line 1125
    :pswitch_16
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteAllChats()V

    goto :goto_1

    .line 1133
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestCloseChat(Landroid/content/Intent;)V

    goto :goto_1

    .line 1173
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestReportMessage(Landroid/content/Intent;)V

    goto :goto_1

    .line 1161
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupChatIcon(Landroid/content/Intent;)V

    goto :goto_1

    .line 1113
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteMessages(Landroid/content/Intent;)V

    goto :goto_1

    .line 1109
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestCancelMessage(Landroid/content/Intent;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x784b92d4 -> :sswitch_1b
        -0x7212976a -> :sswitch_1a
        -0x63e10bd8 -> :sswitch_19
        -0x5a91fcd3 -> :sswitch_18
        -0x5806f397 -> :sswitch_17
        -0x4a02324d -> :sswitch_16
        -0x443c4538 -> :sswitch_15
        -0x42c6caa9 -> :sswitch_14
        -0x2fc4c1d8 -> :sswitch_13
        -0x26f27e0a -> :sswitch_12
        -0x23214838 -> :sswitch_11
        -0x1c972452 -> :sswitch_10
        -0x1c8960ac -> :sswitch_f
        -0x18f8790f -> :sswitch_e
        -0x16f9c874 -> :sswitch_d
        -0x1364e32f -> :sswitch_c
        0x165ef74b -> :sswitch_b
        0x191f8894 -> :sswitch_a
        0x1f00cd4b -> :sswitch_9
        0x29ec1a65 -> :sswitch_8
        0x2b301eba -> :sswitch_7
        0x36062f80 -> :sswitch_6
        0x39906906 -> :sswitch_5
        0x3caa8118 -> :sswitch_4
        0x3defb3e3 -> :sswitch_3
        0x6333b075 -> :sswitch_2
        0x7111bcf1 -> :sswitch_1
        0x7a5557b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyComposingActiveUris(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyComposingActiveUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GET_IS_COMPOSING_ACTIVE_URIS_RESPONSE"

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 299
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 302
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "composing_uri_list"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 305
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public notifyLastSentMessagesStatus(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyLastSentMessagesStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GET_LAST_MESSAGES_SENT_RESPONSE"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string p1, "last_sent_messages_status"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 316
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

    .line 756
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 757
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x0

    .line 758
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 759
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "error_reason"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 762
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "participants_list"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    .line 764
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 741
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAddParticipantsSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

    .line 745
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 746
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 747
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 748
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "participants_list"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 750
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1074
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelMessageResponse: chatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imdnId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CANCEL_MESSAGE_RESPONSE"

    .line 1076
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 1077
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 1078
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message_imdn_id"

    .line 1079
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "response_status"

    .line 1080
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1081
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2

    .line 892
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onChangeGroupAliasFailed()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUP_ALIAS_RESPONSE"

    .line 894
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 895
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "response_status"

    const/4 v1, 0x0

    .line 896
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 897
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "error_reason"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p3, "user_alias"

    .line 898
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 881
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupAliasSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUP_ALIAS_RESPONSE"

    .line 883
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 884
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 886
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "user_alias"

    .line 887
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3

    .line 869
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatIconFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_GROUPCHAT_ICON_RESPONSE"

    .line 871
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 872
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x0

    .line 873
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 874
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "groupchat_icon_name"

    .line 875
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_reason"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 857
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatIconSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_GROUPCHAT_ICON_RESPONSE"

    .line 859
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 860
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 861
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 862
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "groupchat_icon_name"

    .line 863
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 823
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onChangeGroupChatLeaderFailed()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUPCHAT_LEADER_RESPONSE"

    .line 825
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 826
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "response_status"

    const/4 v1, 0x0

    .line 827
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 828
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "error_reason"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "participants_list"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 830
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 811
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatLeaderSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUPCHAT_LEADER_RESPONSE"

    .line 813
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 815
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 816
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "participants_list"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 818
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2

    .line 845
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onChangeGroupChatSubjectFailed()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT_RESPONSE"

    .line 847
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 848
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "response_status"

    const/4 v1, 0x0

    .line 849
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "error_reason"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p3, "subject"

    .line 851
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 834
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatSubjectSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT_RESPONSE"

    .line 836
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 837
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 838
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 839
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "subject"

    .line 840
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 1

    .line 599
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onChatClosed()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_CLOSED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 604
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chat_id"

    .line 605
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "chat_status"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 607
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onChatEstablished(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 577
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onChatEstablished()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_ESTABLISHED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 581
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chat_id"

    .line 582
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p3, "session_uri"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_1

    .line 585
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 586
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p5, :cond_2

    .line 588
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 589
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 591
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    const-string/jumbo p3, "supported_content_list"

    .line 592
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x1

    .line 594
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onChatInvitationReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 14

    .line 673
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatInvitationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 681
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 684
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->needToUseGroupChatInvitationUI()Z

    move-result v2

    const-string/jumbo v3, "supported_content_list"

    const-string v4, "remote_uri"

    const-string v5, "session_uri"

    const-string v6, "contribution_id"

    const-string v7, "conversation_id"

    const-string v8, "content_type"

    const-string/jumbo v9, "subject"

    const-string v10, "chat_id"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_7

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_SESSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v12

    .line 689
    :goto_0
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 692
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v12

    .line 691
    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 694
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 693
    :goto_2
    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 696
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 699
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 701
    :cond_6
    invoke-direct {p0, v0, v11}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    goto/16 :goto_7

    .line 704
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v13, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 705
    invoke-virtual {v2, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiatorAlias()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "user_alias"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v8

    const-string v9, "is_token_used"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 712
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_8
    move-object v8, v12

    .line 711
    :goto_3
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 714
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object v7, v12

    .line 713
    :goto_4
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_5

    .line 716
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 715
    :goto_5
    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isClosedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v5

    const-string v6, "is_closed_group_chat"

    .line 719
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 720
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v5

    const-string v6, "is_bot"

    if-eqz v5, :cond_b

    .line 721
    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session.getInitiator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "service_id"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 727
    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    :cond_c
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 730
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 733
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 735
    :cond_e
    invoke-direct {p0, v2, v11}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    :goto_7
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 3

    .line 612
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatSubjectUpdated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_SUBJECT_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 616
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string/jumbo v2, "subject_participant"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string/jumbo p1, "subject_timestamp"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onChatUpdateState(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 0

    return-void
.end method

.method public onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 1

    .line 549
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onComposingNotificationReceived"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 551
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chat_id"

    .line 552
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p3, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p3, "participant"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "interval"

    .line 554
    invoke-virtual {p2, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_typing"

    .line 555
    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "user_alias"

    .line 557
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    .line 559
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V
    .locals 3

    .line 501
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateChatFailed(), notifyError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    .line 503
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x0

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "error_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "request_thread_id"

    .line 507
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p4, :cond_0

    const-wide/16 p2, -0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    const-string p4, "request_message_id"

    invoke-virtual {v0, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 509
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sim_slot_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 510
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onCreateChatSucceeded(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 5

    .line 483
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateChatSucceeded(), notify, chat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    .line 485
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 486
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "participants_list"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getThreadId()I

    move-result v1

    const-string v3, "request_thread_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "subject"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    const-string v1, "request_message_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "sim_slot_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "conversation_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string p1, "contribution_id"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onDeviceOutOfMemory()V
    .locals 2

    .line 563
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeviceOutOfMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.OUT_OF_MEMORY_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 2

    .line 650
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGroupChatIconDeleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_ICON_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 654
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 655
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 3

    .line 625
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGroupChatIconUpdated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_ICON_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 629
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object p1

    .line 632
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    const-string v2, "groupchat_icon_data"

    .line 636
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "groupchat_icon_name"

    .line 637
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 641
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 643
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    const-string v1, "groupchat_icon_participant"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 644
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    const-string p2, "groupchat_icon_timestamp"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 645
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onGroupChatLeaderUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1268
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_LEADER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 1271
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "participants_list"

    .line 1275
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1276
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onIgnoreIncomingMsgSetResponse(Ljava/lang/String;Z)V
    .locals 2

    .line 214
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onIgnoreIncomingMsgSetResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.IGNORE_INCOMING_MESSAGE_RESPONSE"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "response_status"

    .line 219
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 2

    .line 1022
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSentNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;->createImdnNotificationReceivedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageInserted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4

    .line 903
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageInserted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "msg is null"

    .line 904
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 906
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_INSERTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 914
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message_imdn_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v0

    const-string v2, "message_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 918
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    const-string v2, "message_direction"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 919
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getServiceTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message_service"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 920
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 4

    .line 964
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "message is null"

    .line 965
    invoke-static {p1, v1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 968
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 971
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message_imdn_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v2

    const-string v3, "is_token_used"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 973
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v2

    const-string v3, "message_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    const-string v3, "is_group_chat"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isRoutingMsg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isRoutingMsg()Z

    move-result v2

    const-string v3, "is_routingMsg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 978
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-eq v2, v3, :cond_0

    .line 979
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->getId()I

    move-result v2

    const-string v3, "routing_msg_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    const-string v3, "message_direction"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p2, :cond_1

    .line 986
    move-object p2, p1

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getGroupCcListUri()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 987
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getGroupCcListUri()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v2, "group_ccuser_list"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 991
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v2, :cond_3

    .line 992
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v2, "from"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object p2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_4

    const-string p2, "is_bot"

    .line 996
    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 999
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;->putMaapExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Landroid/content/Intent;)V

    .line 1001
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceImdnId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1002
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceImdnId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "reference_message_imdn_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1005
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object p2

    const-string v2, "reference_message_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1008
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "reference_message_value"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsTrafficType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1013
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcsTrafficType = ["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "rcs_traffic_type"

    .line 1014
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    :cond_8
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageReportResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 196
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReportResponse, imdnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REPORT_MESSAGES_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_imdn_id"

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "chat_id"

    .line 200
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "response_status"

    .line 201
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageRevokeTimerExpired(): chatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imdnIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_REVOKE_TIMER_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 1031
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "messages_imdn_id_list"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1033
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 6

    .line 937
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

    .line 939
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 940
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "response_status"

    const/4 v3, 0x1

    .line 941
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    const-string v2, "request_message_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 943
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "message_imdn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageSendResponse: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .line 951
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageSendResponseFailed(): reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 953
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x0

    .line 954
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "message_number"

    .line 955
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "error_reason"

    .line 956
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "chat_id"

    .line 957
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    .line 958
    :cond_0
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    const-string p3, "request_message_id"

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 959
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 925
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendResponseTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "msg is null"

    .line 926
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE_TAKETOOLONG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 929
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 2

    .line 539
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "message is null"

    .line 540
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;->createMessageSendingFailedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5

    .line 515
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "message is null"

    .line 517
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 520
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    const-string v1, "request_message_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 525
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result v1

    const-string v3, "is_broadcast_msg"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 526
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceImdnId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "reference_message_imdn_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "reference_message_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 533
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "reference_message_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3

    .line 660
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantAliasUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_ALIAS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 664
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "participant"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "participant_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "user_alias"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 668
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onParticipantDeleted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3

    .line 1055
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "participant_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1060
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    const-string v2, "participant_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user_alias"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1062
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onParticipantDeleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;)V"
        }
    .end annotation

    .line 1066
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANTS_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "participants_list"

    .line 1068
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1069
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onParticipantInserted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3

    .line 1037
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantInserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "participant_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    const-string v2, "participant_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user_alias"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1044
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onParticipantInserted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;)V"
        }
    .end annotation

    .line 1048
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantInserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANTS_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "participants_list"

    .line 1050
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1051
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 783
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveParticipantsFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REMOVE_PARTICIPANTS_RESPONSE"

    .line 785
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 786
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x0

    .line 787
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 788
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "error_reason"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "participants_list"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 791
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 769
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveParticipantsSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REMOVE_PARTICIPANTS_RESPONSE"

    .line 773
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 774
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response_status"

    const/4 v2, 0x1

    .line 775
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 776
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "participants_list"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 778
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 349
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReportChatbotAsSpamRespReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.chatbot.action.REPORT_CHATBOT_AS_SPAM_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chatbot_uri"

    .line 353
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response_status"

    .line 354
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "request_id"

    .line 355
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 357
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestChatbotAnonymizeNotiReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 337
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatbotAnonymizeNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.chatbot.action.CHATBOT_ANONYMIZE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chatbot_anonymize_uri"

    .line 341
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "chatbot_anonymize_result"

    .line 342
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "chatbot_command_id"

    .line 343
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestChatbotAnonymizeResponse(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 3

    .line 320
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatbotAnonymizeNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.chatbot.action.CHATBOT_ANONYMIZE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chatbot_anonymize_uri"

    .line 324
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response_status"

    .line 325
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "chatbot_command_id"

    .line 326
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    const-string p1, "retry_after"

    .line 330
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public requestComposingActiveUris(Landroid/content/Intent;)V
    .locals 2

    .line 280
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestComposingActiveUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    .line 282
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getComposingActiveUris(Ljava/lang/String;)V

    return-void
.end method

.method public requestGetLastSentMessages(Landroid/content/Intent;)V
    .locals 4

    .line 287
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_ids"

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 290
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGetLastSentMessages(): REQUEST_MESSAGES_LIST size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getLastSentMessagesStatus(Ljava/util/List;)V

    return-void
.end method

.method public updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 1226
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1227
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageInserted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :cond_0
    return-void
.end method

.method public updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 1233
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1234
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1235
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageInserted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 1243
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1244
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantInserted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    .line 1245
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_1

    .line 1246
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantDeleted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 1253
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_3

    .line 1254
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1256
    new-instance v8, Lcom/sec/ims/im/ImParticipantData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sec/ims/im/ImParticipantData;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1258
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, p1, :cond_2

    .line 1259
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantInserted(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1261
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantDeleted(Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    return-void
.end method
