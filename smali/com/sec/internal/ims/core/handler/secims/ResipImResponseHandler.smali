.class public Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "ResipImResponseHandler.java"


# static fields
.field private static final GROUPCHAT_ROLE_ADMIN:Ljava/lang/String; = "Administrator"

.field private static final GROUPCHAT_ROLE_CHAIRMAN:Ljava/lang/String; = "chairman"


# instance fields
.field mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;


# direct methods
.method public static synthetic $r8$lambda$rzNSs5Xfyh3mXxz-MdJwUj35RL0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->lambda$handleFtIncomingSessionNotify$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 152
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    return-void
.end method

.method private handleAcceptFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 7

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptFtSessionResponse() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 486
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 489
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const-string v3, ", result = "

    if-nez v2, :cond_0

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptFtSessionResponse(): no session found sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 495
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAcceptFtSessionResponse(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_1

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleAcceptFtSessionResponse INVITE response sent"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_1
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 506
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 507
    iput-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    :cond_2
    :goto_0
    return-void
.end method

.method private handleAcceptImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 8

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptImSessionResponse() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleAcceptImSessionResponse(): response is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 326
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 330
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const-string v4, ", error = "

    if-nez v3, :cond_1

    .line 332
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAcceptImSessionResponse(): no session found sessionHandle = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAcceptImSessionResponse(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", chat id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 343
    iput-object v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    :cond_2
    return-void
.end method

.method private handleAddParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddParticipantsResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 395
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleAddParticipantsResponse(): no session found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleAddParticipantsResponse(): response has no request key"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 406
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleAddParticipantsResponse(): no callback set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleCancelFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 7

    .line 514
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 517
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 521
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const-string v3, ", result = "

    if-nez v2, :cond_0

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFtSessionResponse(): cannot find ftsession sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 528
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCancelFtSessionResponse(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 533
    iget-object p0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 537
    :cond_1
    iput-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    return-void
.end method

.method private handleChangeGroupChatAliasResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcAliasResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 662
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGcAliasResponse(): no session found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 666
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGcAliasResponse(): response has no request key"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 671
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 673
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 675
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGcAliasResponse(): no callback set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleChangeGroupChatIconResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatIconResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGroupChatIconResponse(): no session found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 649
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 650
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_1

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGroupChatIconResponse(): no callback set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleChangeGroupChatLeaderResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatLeaderResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 374
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGroupChatLeaderResponse(): no session found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGroupChatLeaderResponse(): response has no request key"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 383
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGroupChatLeaderResponse(): no callback set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleChangeGroupChatSubjectResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcSubjectResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 619
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 621
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGcSubjectResponse(): no session found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGcSubjectResponse(): response has no request key"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 630
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 634
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChangeGcSubjectResponse(): no callback set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleCloseImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;Landroid/os/Message;)V
    .locals 6

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCloseImSessionResponse() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 596
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 599
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const-string v2, ", error = "

    if-nez v1, :cond_0

    .line 601
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCloseImSessionResponse(): no session found sessionHandle = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 604
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloseImSessionResponse(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", chat id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 610
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private handleFtIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10

    .line 1259
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 1260
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtIncomingSessionNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1264
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 1265
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v0

    .line 1266
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v1

    if-eqz v1, :cond_12

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 1273
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    .line 1274
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFtIncomingSessionNotify(): session handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1277
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFtIncomingSessionNotify(): UserAgent not found. UserHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1282
    :cond_2
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;-><init>()V

    .line 1283
    iput v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    .line 1284
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v5

    long-to-int p1, v5

    iput p1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    .line 1285
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;-><init>()V

    .line 1289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1290
    iput-boolean v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    .line 1291
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1294
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    .line 1296
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1297
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1299
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1300
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1304
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1305
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1306
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v3

    iput-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsConference:Z

    .line 1308
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->silenceSupported()Z

    move-result v3

    iput-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    if-eqz v3, :cond_5

    .line 1310
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleFtIncomingSessionNotify -> routing message"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->requestUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 1312
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->pAssertedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 1313
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->receiver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 1316
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 1318
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1321
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    .line 1328
    invoke-virtual {v6, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1330
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1331
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v6, v6

    iput-wide v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1332
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->start()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    .line 1333
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->end()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mEnd:I

    .line 1334
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->timeDuration()J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1336
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->iconAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1337
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1338
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    goto :goto_2

    .line 1340
    :cond_7
    iput-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1345
    :goto_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1346
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1347
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1349
    :cond_8
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1350
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1352
    :cond_9
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 1354
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->isPush()Z

    move-result v0

    iput-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    .line 1357
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1358
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1360
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    .line 1361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_3
    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1363
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1364
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    .line 1367
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 1368
    :goto_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v6

    if-ge v3, v6, :cond_b

    .line 1369
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1371
    :cond_b
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1373
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 1374
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    move v0, v4

    .line 1378
    :goto_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 1380
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1382
    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v8, v9, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1386
    :cond_d
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    move v0, v4

    .line 1387
    :goto_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespacesLength()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 1388
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1390
    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    .line 1391
    :goto_8
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 1392
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1393
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1394
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1400
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFtIncomingSessionNotify(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 1403
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v0, v5, p1, v5}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_9

    .line 1407
    :cond_11
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty registrants, reject handle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1409
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    :goto_9
    return-void

    .line 1269
    :cond_12
    :goto_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtIncomingSessionNotify(): invalid notify data"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleFtProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 13

    .line 1225
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 1226
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtProgressNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1230
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;

    .line 1231
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1232
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v1, :cond_1

    .line 1235
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkown session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->sessionHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1240
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->state()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v10

    .line 1241
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v10, v2, :cond_2

    .line 1242
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->reasonHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v11

    .line 1246
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFtProgressNotify(): session handle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->state()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", fail reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->total()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", transferred = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->transferred()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1246
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1250
    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 1251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->total()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->transferred()J

    move-result-wide v8

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 p1, 0x0

    invoke-direct {v2, p1, v12, p1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1252
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1254
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No TransferProgressRegistrant for handle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleFtSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 13

    .line 1544
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtSessionClosedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1550
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    .line 1551
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1554
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v10

    .line 1557
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const-string v2, ", error = "

    if-nez p1, :cond_1

    .line 1559
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFtSessionClosedNotify(): no session found sessionHandle = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1562
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFtSessionClosedNotify(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v3, :cond_5

    .line 1567
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleFtSessionClosedNotify(): abnormal close"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 1572
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1573
    iput-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1576
    :cond_2
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1578
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1579
    iput-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    goto :goto_0

    .line 1583
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1584
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleFtSessionClosedNotify(): post cancelled to progress registrants"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    new-instance v11, Lcom/sec/internal/helper/AsyncResult;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 1586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v11, v1, v12, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1587
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p1, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1589
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No TransferProgressRegistrant for handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1596
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleFtSessionClosedNotify(): get unexpected SessionClosed notify"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleFtSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 7

    .line 1501
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 1502
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtSessionEstablishedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1507
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    .line 1508
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1511
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1514
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const-string v3, ", result = "

    if-nez v2, :cond_1

    .line 1516
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFtSessionEstablishedNotify(): no session found sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1519
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFtSessionEstablishedNotify(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v3, v4, :cond_2

    .line 1525
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtSessionEstablishedNotify(): failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1530
    :cond_2
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 1532
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1533
    iput-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    goto :goto_0

    .line 1534
    :cond_3
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v3, :cond_4

    .line 1537
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1538
    iput-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    :cond_4
    :goto_0
    return-void
.end method

.method private handleFtSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 7

    .line 1187
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 1188
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtSessionStartedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1193
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    .line 1194
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1197
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 1199
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFtSessionStartedNotify(): sessionHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v2, :cond_1

    .line 1204
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFtSessionStartedNotify(): Unknown session handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1209
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_2

    .line 1211
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleFtSessionStartedNotify(): SUCCESS"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    :cond_2
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v3, :cond_4

    .line 1215
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->retryHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    move-result-object p1

    .line 1216
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz p1, :cond_3

    .line 1217
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;->retryTimer()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v5, v1, v6, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;I)V

    .line 1216
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1218
    iput-object p1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1220
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private handleGroupChatInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 18

    move-object/from16 v1, p0

    .line 1847
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleGroupChatInfoNotify()"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    .line 1850
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->uri()Ljava/lang/String;

    move-result-object v3

    .line 1852
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->info()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1854
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleGroupChatInfoNotify(): info is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1858
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->uaHandle()J

    move-result-wide v4

    long-to-int v0, v4

    .line 1859
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1861
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleGroupChatInfoNotify(): User Agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1865
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1866
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->state()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1867
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->state()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "partial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 1872
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    goto :goto_0

    .line 1869
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    :cond_4
    :goto_0
    move-object v5, v0

    .line 1881
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->subjectData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;

    move-result-object v6

    const/4 v11, 0x0

    if-eqz v6, :cond_7

    .line 1885
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1886
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_5
    move-object v7, v11

    .line 1888
    :goto_1
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1890
    :try_start_0
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1892
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1893
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_2

    :cond_6
    move-object v0, v11

    .line 1896
    :goto_2
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6, v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    move-object v7, v8

    goto :goto_3

    :cond_7
    move-object v7, v11

    .line 1900
    :goto_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->iconData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1901
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->icontype()I

    move-result v6

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v6, v9, :cond_b

    .line 1902
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->participant()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v14

    .line 1903
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v16

    .line 1905
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->icontype()I

    move-result v6

    .line 1909
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v6, v10, :cond_8

    move-object v13, v9

    :goto_4
    move-object/from16 v17, v11

    goto :goto_5

    .line 1911
    :cond_8
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v6, v10, :cond_9

    .line 1913
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    move-object v13, v9

    goto :goto_5

    :cond_9
    move-object v13, v8

    goto :goto_4

    .line 1919
    :goto_5
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->timestamp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 1921
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1922
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_6
    move-object v15, v0

    .line 1924
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    goto :goto_7

    :cond_b
    move-object v10, v11

    .line 1927
    :goto_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->usersLength()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    move v8, v0

    .line 1930
    :goto_8
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->usersLength()I

    move-result v0

    if-ge v8, v0, :cond_12

    .line 1931
    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->users(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 1933
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    invoke-direct {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;-><init>()V

    .line 1934
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->entity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 1935
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->state()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    .line 1936
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->yourOwn()Z

    move-result v0

    iput-boolean v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsOwn:Z

    .line 1937
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1938
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1939
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 1941
    :cond_c
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1943
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectMethod()Ljava/lang/String;

    move-result-object v0

    .line 1942
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 1945
    :cond_d
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;->when()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1947
    :try_start_2
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;->when()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 1949
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1950
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    .line 1953
    :cond_e
    :goto_9
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->when()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1955
    :try_start_3
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->when()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 1957
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1958
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    .line 1962
    :cond_f
    :goto_a
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->roles()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1963
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->roles()Ljava/lang/String;

    move-result-object v0

    const-string v13, "chairman"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    .line 1965
    :cond_10
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    .line 1966
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 1971
    :cond_12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 1972
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->maxUserCnt()J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v0

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;Ljava/util/List;ILcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 1974
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v2, v11, v0, v11}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleGroupChatListNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 9

    .line 1821
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleGroupChatListNotify()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;

    .line 1824
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->version()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1825
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->uaHandle()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1826
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1828
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleGcListNotify(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1832
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->groupChatsLength()I

    move-result v2

    .line 1833
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1835
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->groupChats(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1837
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;->uri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;->subject()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1841
    :cond_2
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;-><init>(ILjava/util/List;Ljava/lang/String;)V

    .line 1843
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleGroupChatSubscribeStatusNotify()V
    .locals 1

    .line 1817
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleGroupChatSubscribeStatusNotify()"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleImComposingStatusReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 11

    .line 1139
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImComposingStatusReceivedNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1142
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImComposingStatusReceivedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1146
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    .line 1147
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->sessionId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1148
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1152
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkown session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->sessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1156
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->status()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1158
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImComposingStatusReceivedNotify(): invalid notify data"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1161
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->uri()Ljava/lang/String;

    move-result-object v2

    .line 1163
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1164
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleImComposingStatusReceivedNotify: found userAlias"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    goto :goto_0

    :cond_3
    move-object v8, v4

    .line 1169
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\\<|\\>"

    const-string v3, ""

    .line 1170
    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v3, "tk"

    .line 1172
    invoke-virtual {p1, v3}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1173
    invoke-virtual {p1, v3}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v7, v2

    .line 1177
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->isActive()Z

    move-result v9

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->interval()J

    move-result-wide v0

    long-to-int v10, v0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImComposingStatusReceivedNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v0, v4, p1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleImConferenceInfoUpdateNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1603
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleImConferenceInfoUpdateNotify"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v2, 0x47

    if-eq v0, v2, :cond_0

    .line 1605
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImConferenceInfoUpdateNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1609
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    .line 1611
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->sessionId()J

    move-result-wide v3

    long-to-int v0, v3

    .line 1612
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-eqz v3, :cond_1f

    .line 1613
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    if-nez v4, :cond_1

    goto/16 :goto_18

    .line 1618
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1620
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImConferenceInfoUpdateNotify(): User Agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1624
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1625
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->state()Ljava/lang/String;

    move-result-object v5

    .line 1626
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1627
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "partial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 1632
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    goto :goto_0

    .line 1629
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    :cond_5
    :goto_0
    move-object v7, v0

    .line 1640
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->subjectData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;

    move-result-object v0

    const-string v5, ""

    if-eqz v0, :cond_a

    .line 1642
    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received sub info: subject ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", participant ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", timestamp ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1642
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1645
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1646
    :cond_6
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v5

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v6

    .line 1649
    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v8

    .line 1650
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1651
    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    .line 1655
    :goto_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v0

    .line 1656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1658
    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1660
    :catch_0
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsing subject timestamp failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 1664
    :goto_3
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {v9, v6, v8, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    move-object v10, v9

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    .line 1669
    :goto_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->iconData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1670
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->icontype()I

    move-result v6

    if-eqz v6, :cond_f

    .line 1671
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 1672
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->icontype()I

    move-result v8

    .line 1675
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ne v8, v11, :cond_b

    move-object/from16 v16, v9

    goto :goto_5

    .line 1677
    :cond_b
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ne v8, v11, :cond_c

    .line 1679
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    move-object/from16 v16, v9

    goto :goto_6

    :cond_c
    move-object/from16 v16, v6

    :goto_5
    const/16 v20, 0x0

    .line 1683
    :goto_6
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->participant()Ljava/lang/String;

    move-result-object v6

    .line 1684
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1685
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_7

    :cond_d
    const/16 v17, 0x0

    .line 1689
    :goto_7
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->timestamp()Ljava/lang/String;

    move-result-object v6

    .line 1690
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1692
    :try_start_1
    invoke-static {v6}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    move-object/from16 v18, v6

    goto :goto_9

    .line 1694
    :catch_1
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsing icon timestamp failed : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    goto :goto_8

    :cond_e
    const/16 v18, 0x0

    .line 1699
    :goto_9
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v19

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v6

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    .line 1702
    :goto_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->usersLength()I

    move-result v6

    .line 1705
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleOptionsReceived: tagLength "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v6, :cond_1d

    .line 1708
    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->users(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;

    move-result-object v12

    if-eqz v12, :cond_1c

    .line 1710
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    invoke-direct {v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;-><init>()V

    .line 1711
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->entity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 1712
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->state()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    .line 1713
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1714
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    move-result-object v0

    goto :goto_c

    .line 1715
    :cond_10
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    :goto_c
    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 1716
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->yourOwn()Z

    move-result v0

    iput-boolean v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsOwn:Z

    .line 1717
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_11
    move-object v0, v5

    .line 1718
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_12

    .line 1719
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 1721
    :cond_12
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    .line 1723
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;->when()Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_14

    .line 1726
    :try_start_2
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v17, v5

    :try_start_3
    const-string v5, "parsing joiningInfo timestamp failed : "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    .line 1729
    :goto_f
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1730
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    goto :goto_10

    :cond_14
    move-object/from16 v17, v5

    .line 1734
    :goto_10
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    goto :goto_11

    :cond_15
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_17

    .line 1736
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->when()Ljava/lang/String;

    move-result-object v5

    .line 1737
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 1739
    :try_start_4
    invoke-static {v5}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_12

    .line 1741
    :catch_4
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "parsing disconnectionInfo timestamp failed : "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    goto :goto_13

    :cond_16
    :goto_12
    move/from16 v18, v6

    .line 1745
    :goto_13
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->reason()Ljava/lang/String;

    move-result-object v0

    .line 1746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1747
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->parseReasonHeader(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x0

    .line 1748
    invoke-static {v0, v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionCause:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    goto :goto_14

    :cond_17
    move/from16 v18, v6

    .line 1752
    :cond_18
    :goto_14
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->roles()Ljava/lang/String;

    move-result-object v0

    .line 1753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "chairman"

    .line 1754
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "Administrator"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_15

    :cond_19
    const/4 v0, 0x0

    goto :goto_16

    :cond_1a
    :goto_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    .line 1756
    :cond_1b
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    .line 1757
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1c
    move-object/from16 v17, v5

    move/from16 v18, v6

    :goto_17
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_b

    .line 1761
    :cond_1d
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1762
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v5, "confinfo_update_not_allowed"

    invoke-interface {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1763
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "imConferenceInfoUpdate: Drop the invalid info"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1767
    :cond_1e
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    iget-object v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 1768
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->maxUserCnt()J

    move-result-wide v11

    long-to-int v9, v11

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->sessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;Ljava/util/List;ILcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 1769
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void

    .line 1614
    :cond_1f
    :goto_18
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sessionId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleImMessageReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 4

    .line 1105
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 1106
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImMessageReceivedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1110
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    .line 1111
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v0

    .line 1112
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object p1

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 1119
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1121
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImMessageReceivedNotify(): sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v1, :cond_2

    .line 1125
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImMessageReceivedNotify(): Unknown session handle - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1129
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->parseImMessageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    .line 1132
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImMessageReceivedNotify(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_3
    return-void

    .line 1115
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImMessageReceivedNotify(): invalid message notify data"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleImMessageReportReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8

    .line 1790
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 1791
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImMessageReportReceivedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1795
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;

    .line 1796
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->sessionId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1797
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1798
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 1799
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    .line 1800
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v3

    .line 1801
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->isChat()Z

    move-result p1

    .line 1802
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImMessageReportReceivedNotify(): sessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " chatId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " imdnId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isChat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v5, v6, :cond_2

    if-eqz p1, :cond_1

    .line 1807
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;

    .line 1808
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {p1, v4, v5, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1807
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1810
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    .line 1811
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {p1, v4, v5, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1810
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleImSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10

    .line 996
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    .line 997
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImSessionClosedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImSessionClosedNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    .line 1003
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1006
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->reasonHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 1007
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 1009
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->referredBy()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v4, "\\<|\\>"

    const-string v5, ""

    .line 1012
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1013
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleImSessionClosedNotify() Referred By ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 1018
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const-string v6, ", error = "

    if-nez v5, :cond_2

    .line 1020
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImSessionClosedNotify(): no session found sessionHandle = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1024
    :cond_2
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleImSessionClosedNotify(): sessionHandle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", chat id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", referredBy = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_PARTY_BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_CALL_COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, p1, :cond_7

    .line 1031
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleImSessionClosedNotify(): abnormal close"

    invoke-static {p1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object p1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 1034
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1035
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 1037
    :cond_3
    iget-object p1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    if-eqz p1, :cond_4

    .line 1038
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v1, v3, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v6, p1, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1039
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    .line 1042
    :cond_4
    iget-object p1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz p1, :cond_5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v2, v6, :cond_5

    .line 1043
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v2, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1044
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 1046
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 1047
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v8, v9, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1046
    invoke-virtual {v2, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1048
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 1052
    :cond_6
    :goto_1
    iget-object p1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz p1, :cond_7

    .line 1053
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v1, v3, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1054
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 1058
    :cond_7
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-direct {p1, v2, v5, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;)V

    .line 1059
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v2, v3, p1, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1061
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-eqz p1, :cond_15

    .line 1064
    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    if-eqz v2, :cond_8

    .line 1066
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_2

    .line 1070
    :cond_9
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_a

    .line 1072
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_3

    .line 1075
    :cond_b
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_c

    .line 1077
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_4

    .line 1080
    :cond_d
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_e

    .line 1082
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_5

    .line 1085
    :cond_f
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_10

    .line 1087
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_6

    .line 1090
    :cond_11
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_12

    .line 1092
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_7

    .line 1095
    :cond_13
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_14

    .line 1097
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_8

    :cond_15
    return-void
.end method

.method private handleImSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8

    .line 1415
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 1416
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImSessionEstablishedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1421
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    .line 1422
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->sessionHandle()J

    move-result-wide v0

    long-to-int v3, v0

    .line 1425
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 1426
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 1429
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const-string v2, ", error = "

    if-nez v1, :cond_1

    .line 1431
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImSessionEstablishedNotify(): no session found sessionHandle = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1435
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleImSessionEstablishedNotify(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", chat id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v1, :cond_2

    .line 1441
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImSessionEstablishedNotify(): failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1445
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1446
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptContentLength()I

    move-result v2

    const-string v4, " "

    if-ge v1, v2, :cond_4

    .line 1447
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptContent(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1449
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptWrappedContentLength()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1454
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptWrappedContent(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1456
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1460
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1462
    invoke-interface {p1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1463
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartImMediaResponse(): acceptContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 1465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1466
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateAcceptContent(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1468
    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    move-object v2, p0

    .line 1471
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->imSessionEstablished(ILjava/lang/String;Ljava/util/EnumSet;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private handleImSessionProvisionalResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10

    .line 1979
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 1980
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImSessionProvisionalResponseNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1985
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    .line 1986
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1989
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1990
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 1992
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleImSessionProvisionalResponseNotify(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", response = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v3, :cond_1

    .line 1997
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImSessionProvisionalResponseNotify(): Unknown session handle: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2002
    :cond_1
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 2003
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2004
    iput-object v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 2008
    :cond_2
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartProvisionalCallback:Landroid/os/Message;

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 2009
    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    .line 2010
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, p1, v1, v9, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v4, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2013
    :cond_3
    iget-object v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 2014
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImSessionProvisionalResponseNotify(): handle provisional response as SUCCESS for the message in INVITE. sessionHandle = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 2017
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v3, v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v2, v0, v3, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Z)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private handleImSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 20

    move-object/from16 v0, p0

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    .line 936
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImSessionStartedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 941
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    .line 942
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    .line 943
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionUri()Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->displayName()Ljava/lang/String;

    move-result-object v4

    .line 947
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v5

    .line 948
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v6

    .line 950
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleImSessionStartedNotify(): sessionHandle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", sessionUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", displayName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v15, :cond_1

    .line 956
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImSessionStartedNotify(): Unknown session handle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 961
    :cond_1
    iget-object v7, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    const/4 v14, 0x0

    if-eqz v7, :cond_2

    .line 962
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 963
    iput-object v14, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 967
    :cond_2
    iget-object v7, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    if-eqz v7, :cond_7

    .line 968
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->retryHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    move-result-object v7

    .line 969
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->allowHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;

    move-result-object v8

    .line 970
    iget-object v13, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v12, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 971
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v14

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    move-object v9, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v7, :cond_4

    .line 972
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;->retryTimer()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;->text()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_2

    :cond_5
    move-object/from16 v16, v14

    .line 973
    :goto_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->isMsgRevokeSupported()Z

    move-result v17

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->isMsgFallbackSupported()Z

    move-result v18

    .line 974
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->isChatbotRole()Z

    move-result v1

    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    move-object v7, v11

    move-object v8, v5

    move-object/from16 p1, v5

    move-object v5, v11

    move v11, v3

    move-object v3, v12

    move-object/from16 v12, v16

    move/from16 v19, v2

    move-object v2, v13

    move/from16 v13, v17

    move-object v0, v14

    move/from16 v14, v18

    move-object/from16 v17, v6

    move-object v6, v15

    move v15, v1

    move-object/from16 v16, v4

    invoke-direct/range {v7 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;ILjava/lang/String;ZZZLjava/lang/String;)V

    .line 970
    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 975
    iput-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    goto :goto_3

    :cond_7
    move/from16 v19, v2

    move-object/from16 p1, v5

    move-object/from16 v17, v6

    move-object v0, v14

    move-object v6, v15

    .line 978
    :goto_3
    iget-object v1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v1, :cond_9

    .line 979
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-object/from16 v3, v17

    if-ne v3, v2, :cond_8

    move-object v2, v0

    move-object/from16 v0, p0

    .line 980
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handle 486 response as SUCCESS for the message in INVITE."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 982
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-object/from16 v10, p1

    invoke-direct {v8, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 981
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    move-object/from16 v10, p1

    move-object v2, v0

    move-object/from16 v0, p0

    .line 984
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v4, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 986
    :goto_4
    iput-object v2, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v3, v17

    .line 989
    :goto_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v3, v1, :cond_a

    .line 990
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIncomingSessionNotify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 783
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleIncomingSessionNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 788
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->userHandle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 792
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIncomingSessionNotify(): UserAgent not found. UserHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->userHandle()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 796
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;

    move-result-object v1

    const-string v2, "handleIncomingSessionNotify(): invalid notify data"

    if-nez v1, :cond_2

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 801
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->baseSessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v3

    .line 802
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v4

    if-nez v3, :cond_3

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 809
    :cond_3
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;-><init>()V

    .line 810
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 811
    iput-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 812
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 813
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->isDeferred()Z

    move-result v6

    iput-boolean v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    .line 814
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->isForStoredNoti()Z

    move-result v6

    iput-boolean v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    .line 815
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->isDeferred()Z

    move-result v9

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    invoke-direct {v7, v8, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;-><init>(IZI)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isMsgRevokeSupported()Z

    move-result v0

    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgRevokeSupported:Z

    .line 817
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isMsgFallbackSupported()Z

    move-result v0

    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgFallbackSupported:Z

    .line 818
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isSendOnly()Z

    move-result v0

    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsSendOnly:Z

    .line 819
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isChatbotParticipant()Z

    move-result v0

    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    .line 824
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->sender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 826
    iget-boolean v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    const-string/jumbo v6, "tk"

    .line 827
    invoke-virtual {v0, v6}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 828
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v6}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "on"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 831
    iget-object v8, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v8, v6}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v7

    .line 833
    :goto_0
    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    .line 835
    iget-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v0

    if-nez v0, :cond_5

    .line 836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    .line 837
    iget-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 839
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    move v0, v7

    .line 840
    :goto_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 841
    iget-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 845
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    .line 846
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 847
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isClosedGroupchat()Z

    move-result v0

    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsClosedGroupChat:Z

    .line 848
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 849
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleIncomingSessionNotify(): session uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 851
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->SINGLE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 852
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    .line 853
    iput-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 856
    :goto_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 857
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 860
    :cond_8
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->serviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->serviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 861
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->serviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    :cond_9
    if-eqz v4, :cond_a

    .line 864
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 865
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 869
    :cond_a
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->subject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->subject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->subject()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v6

    :goto_4
    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 871
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    .line 874
    iput-boolean v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsParticipantNtfy:Z

    .line 876
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 877
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    move-object v0, v6

    :goto_5
    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 878
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 879
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    move-object v0, v6

    :goto_6
    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 880
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionReplaces()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionReplaces()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 881
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionReplaces()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mPrevContributionId:Ljava/lang/String;

    goto :goto_7

    .line 883
    :cond_e
    iput-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mPrevContributionId:Ljava/lang/String;

    .line 886
    :goto_7
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInReplyToContributionId:Ljava/lang/String;

    .line 888
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->remoteMsrpAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->remoteMsrpAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->remoteMsrpAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_f
    move-object v0, v6

    :goto_8
    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRemoteMsrpAddress:Ljava/lang/String;

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v7

    .line 891
    :goto_9
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptTypesLength()I

    move-result v8

    const-string v9, " "

    if-ge v4, v8, :cond_11

    .line 892
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptTypes(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 894
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 897
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 898
    :goto_a
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptWrappedTypesLength()I

    move-result v8

    if-ge v7, v8, :cond_13

    .line 899
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptWrappedTypes(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 901
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 904
    :cond_13
    iput-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptTypes:Ljava/util/List;

    .line 905
    iput-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptWrappedTypes:Ljava/util/List;

    .line 907
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v0

    const-string v1, "handleIncomingSessionNotify(): "

    if-eqz v0, :cond_15

    .line 908
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->parseImMessageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 911
    iput-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    .line 912
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_14
    iput-object p1, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 919
    :cond_15
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v6, v2, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_16

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_b

    .line 925
    :cond_16
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingSessionNotify(): Empty registrants, reject handle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-direct {v0, v6, v5, v3, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 929
    :goto_b
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleMessageRevokeResponseReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 3

    .line 2022
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 2023
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessageRevokeResponseReceivedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2026
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;

    .line 2028
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2030
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid remote uri, return. uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2034
    :cond_1
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    .line 2035
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->result()Z

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Z)V

    .line 2037
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessageRevokeResponseReceivedNotify: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v1, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2

    .line 706
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    const/16 v1, 0x4a38

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 774
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 768
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRequestChatbotAnonymizeNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 765
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRequestChatbotAnonymizeResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 771
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleReportChatbotAsSpamResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 729
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 726
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 735
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 738
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 723
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 762
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSendMessageRevokeResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 759
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleMessageRevokeResponseReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 756
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionProvisionalResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 753
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleGroupChatInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 750
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleGroupChatListNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 747
    :pswitch_d
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleGroupChatSubscribeStatusNotify()V

    goto :goto_0

    .line 744
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImMessageReportReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 720
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImComposingStatusReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 717
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImMessageReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 708
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 732
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 714
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 711
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 741
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImConferenceInfoUpdateNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2aff
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2ee1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4e2b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRejectFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 7

    .line 542
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 545
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 548
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const-string v3, ", result = "

    if-nez v2, :cond_0

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectFtSessionResponse(): cannot find session sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 554
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRejectFtSessionResponse(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 559
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 560
    iget-object p0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_1
    return-void
.end method

.method private handleRejectImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 7

    .line 566
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 569
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 573
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const-string v3, ", error = "

    if-nez v2, :cond_0

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectImSessionResponse(): no session found sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 578
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRejectImSessionResponse(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", chat id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 584
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 585
    iput-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    :cond_1
    return-void
.end method

.method private handleRemoveParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveParticipantsResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 418
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRemoveParticipantsResponse(): no session found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRemoveParticipantsResponse(): response has no request key"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 427
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 429
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRemoveParticipantsResponse(): no callback set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleReportChatbotAsSpamResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 4

    .line 2107
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 2108
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleChatbotAsSpamResp(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2112
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;-><init>()V

    .line 2113
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;

    if-nez p1, :cond_1

    return-void

    .line 2117
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 2118
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 2119
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;

    .line 2120
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;->uri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;->requestId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 2121
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReportChatbotAsSpamResponseNotify: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v1, v2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2123
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleRequestChatbotAnonymizeNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 5

    .line 2083
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 2084
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSetChatbotAnonymizeResponseNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2087
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;

    .line 2089
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;->uri()Ljava/lang/String;

    move-result-object v0

    .line 2090
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;->result()Ljava/lang/String;

    move-result-object p1

    .line 2091
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v1

    const-string v2, ""

    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, "AM/result"

    .line 2094
    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->parseXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "AM/Command-ID"

    .line 2095
    invoke-virtual {v1, p1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->parseXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v2

    .line 2097
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object p1, v2

    move-object v2, v3

    goto :goto_2

    :cond_1
    move-object p1, v2

    .line 2101
    :goto_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;

    invoke-direct {v1, v0, v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatbotAnonymizeNotifyEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v1, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleRequestChatbotAnonymizeResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 5

    .line 2061
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 2062
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRequestChatbotAnonymizeResp(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2065
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;

    if-nez p1, :cond_1

    return-void

    .line 2069
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 2070
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 2071
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->uri()Ljava/lang/String;

    move-result-object v2

    .line 2072
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->commandId()Ljava/lang/String;

    move-result-object v3

    .line 2073
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->retryAfter()I

    move-result p1

    .line 2075
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;

    invoke-direct {v4, v2, v0, v3, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Ljava/lang/String;I)V

    .line 2076
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatbotAnonymizeRespEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v1, v4, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->sessionId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v1, :cond_0

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSendMessageResponse(): no session found sessionHandle="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->findAndRemoveCallback(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    if-nez v1, :cond_1

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageResponse(): no response callback set. sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " imdnid = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method private handleSendMessageRevokeInternalResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;)V
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageRevokeInternalResponse() msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 694
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p2

    .line 695
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 697
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private handleSendMessageRevokeResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 4

    .line 2042
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    .line 2043
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSendMessageRevokeResponseNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2046
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;

    if-nez p1, :cond_1

    return-void

    .line 2050
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 2051
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 2053
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v1, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Z)V

    .line 2055
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSendMessageRevokeResponseNotify: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v1, v2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleSetMoreInfoToSipUAResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 2

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetMoreInfoToSipUAResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleStartFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 7

    .line 438
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 439
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->fwSessionId()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 444
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStartFtSessionResponse(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", FT id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v1, :cond_0

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleStartFtSessionResponse: cannot find session!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 454
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_2

    .line 457
    iput v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    .line 458
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 459
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 460
    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz p1, :cond_3

    .line 467
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleStartFtSessionResponse(): send postponed cancel request"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 474
    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    :cond_3
    :goto_0
    return-void
.end method

.method private handleStartImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 9

    if-nez p1, :cond_0

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "response object is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 256
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->fwSessionId()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleStartImSessionResponse(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", fwSessionId = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v4, :cond_1

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleStartImSessionResponse(): cannot find session!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v5, :cond_2

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    .line 278
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz p1, :cond_6

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 283
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    goto :goto_1

    .line 288
    :cond_2
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz v6, :cond_3

    .line 289
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v7, v6, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 290
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 293
    :cond_3
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartProvisionalCallback:Landroid/os/Message;

    .line 296
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    if-eqz v6, :cond_4

    .line 297
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-direct {v8, p1, v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v7, v6, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 298
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    .line 301
    :cond_4
    iget-object v1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v1, :cond_6

    .line 302
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v6, :cond_5

    .line 303
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handle 486 response as SUCCESS for the message in INVITE."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {v6, v5, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v3, v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 304
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 309
    :goto_0
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    :cond_6
    :goto_1
    return-void
.end method

.method private handleSubscribeGroupChatInfoResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 2

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSubscribeGroupChatInfoResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleSubscribeGroupChatListResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 2

    .line 682
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSubscribeGroupChatListResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private imSessionEstablished(ILjava/lang/String;Ljava/util/EnumSet;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imSessionEstablished(): sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", session uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", features = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    return-void

    .line 1485
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 1487
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imSessionEstablished(): chatid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1

    .line 1490
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "imSessionEstablished(): Failed to find chat id."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object v4, v0

    goto :goto_0

    .line 1494
    :cond_2
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    move-object v4, p2

    .line 1495
    :goto_0
    new-instance p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/EnumSet;Ljava/util/List;Ljava/util/List;)V

    .line 1496
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v0, p2, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private static synthetic lambda$handleFtIncomingSessionNotify$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1323
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private parseImMessageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .locals 8

    .line 2127
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 2133
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2134
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 2135
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    move v2, v3

    .line 2136
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2137
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2140
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2143
    :try_start_0
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2144
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v1

    .line 2145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :goto_1
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2148
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 2149
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    .line 2152
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2153
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2155
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v1

    if-lez v1, :cond_6

    .line 2156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    move v1, v3

    .line 2157
    :goto_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2158
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2160
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imdn route: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImdnMessageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2163
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v7

    .line 2164
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v7, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2171
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->contentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2173
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->body()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2172
    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 2178
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "\\<|\\>"

    const-string v4, ""

    .line 2182
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2183
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseImMessageParam sender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2186
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->silenceSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v1, :cond_9

    .line 2188
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "parseImMessageParam -> routing message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->requestUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 2190
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->pAssertedId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 2191
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->receiver()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 2193
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->userAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2195
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    move v1, v3

    .line 2196
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespacesLength()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 2199
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2201
    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 2202
    :goto_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 2204
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2205
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2206
    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v6

    .line 2207
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v5

    .line 2206
    invoke-virtual {v6, v7, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2213
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->ccParticipantsLength()I

    move-result v1

    if-lez v1, :cond_e

    .line 2214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    .line 2215
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->ccParticipantsLength()I

    move-result v1

    if-ge v3, v1, :cond_d

    .line 2216
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->ccParticipants(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2218
    :cond_d
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseImMessageParam event.mCcParticipants="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method

.method private parseReasonHeader(Ljava/lang/String;)I
    .locals 4

    .line 1774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "cause="

    .line 1776
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x9

    .line 1777
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x6

    .line 1778
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1779
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseReasonHeader : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1783
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStackResponseHandler.handleMessage(): unhandled event - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatIconResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    goto/16 :goto_0

    .line 241
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSetMoreInfoToSipUAResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    goto/16 :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SEND_MESSAGE_REVOKE_REQUEST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSendMessageRevokeInternalResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;)V

    goto/16 :goto_0

    .line 231
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSubscribeGroupChatInfoResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    goto/16 :goto_0

    .line 227
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSubscribeGroupChatListResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    goto/16 :goto_0

    .line 223
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatAliasResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    goto/16 :goto_0

    .line 215
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatSubjectResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    goto/16 :goto_0

    .line 186
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRemoveParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    goto/16 :goto_0

    .line 190
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleStartFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    goto/16 :goto_0

    .line 202
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRejectFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    goto/16 :goto_0

    .line 198
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleCancelFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    goto/16 :goto_0

    .line 194
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleAcceptFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    goto :goto_0

    .line 169
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;)V

    goto :goto_0

    .line 210
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 211
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleCloseImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;Landroid/os/Message;)V

    goto :goto_0

    .line 165
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleAcceptImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    goto :goto_0

    .line 162
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleStartImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatLeaderResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRejectImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleAddParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
