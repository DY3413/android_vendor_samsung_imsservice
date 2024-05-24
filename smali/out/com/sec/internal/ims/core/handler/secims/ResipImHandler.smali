.class public Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;
.super Lcom/sec/internal/ims/core/handler/ImHandler;
.source "ResipImHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;,
        Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    }
.end annotation


# instance fields
.field protected final mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mFtSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected final mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field protected final mPendingFtSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

.field protected final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 4

    .line 246
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V
    .registers 5

    .line 250
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/ImHandler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    .line 161
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 162
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 163
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 164
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 165
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 166
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 167
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 168
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 169
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 170
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 172
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 173
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 174
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 175
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 176
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 177
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 178
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 251
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 252
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    invoke-direct {p2, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    .line 253
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 256
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 p2, 0x64

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerImHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private static adjustFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method private getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)[I"
        }
    .end annotation

    .line 2340
    new-array p0, p3, [I

    .line 2342
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_7
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_7

    .line 2343
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, p3, 0x1

    .line 2344
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    aput v0, p0, p3

    move p3, v1

    goto :goto_7

    :cond_2d
    return-object p0
.end method

.method private getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;I)[I"
        }
    .end annotation

    .line 2329
    new-array p0, p3, [I

    .line 2331
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_7
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2332
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, p3, 0x1

    .line 2333
    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    aput v0, p0, p3

    move p3, v1

    goto :goto_7

    :cond_25
    return-object p0
.end method

.method private handleAcceptFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .registers 11

    .line 2020
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptFtSessionRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2023
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const/4 v2, 0x0

    if-nez v1, :cond_4e

    .line 2025
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcceptFtSessionRequest(): no session in map, return accept failure, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_4d

    .line 2027
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2028
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_4d
    return-void

    .line 2032
    :cond_4e
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    iput-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    .line 2033
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    iput v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 2035
    iget v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    if-nez v8, :cond_78

    .line 2037
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptFtSessionRequest(): User agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_77

    .line 2039
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2040
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_77
    return-void

    .line 2046
    :cond_78
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2047
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2048
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2051
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->startRequestAcceptFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2052
    iget v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v3, v1

    invoke-static {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2053
    iget-wide v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mStart:J

    invoke-static {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2054
    iget-wide v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mEnd:J

    invoke-static {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2055
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2056
    invoke-static {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2057
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->endRequestAcceptFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2059
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x229

    .line 2060
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x30

    .line 2061
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2062
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2063
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    const/16 v4, 0x229

    .line 2065
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleAcceptImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
    .registers 12

    .line 924
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptImSessionRequest(): params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 927
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const/4 v2, 0x0

    if-nez v1, :cond_50

    .line 930
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleAcceptImSessionRequest: no session in map, return accept failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_4f

    .line 932
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 933
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    .line 932
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 934
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    :cond_4f
    return-void

    .line 939
    :cond_50
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mChatId:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 941
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 942
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mIsSnF:Z

    iput-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mIsSnF:Z

    .line 944
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_98

    .line 946
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcceptImSessionRequest(): UserAgent not found. UaHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz p1, :cond_97

    .line 948
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 949
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    .line 948
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 950
    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    :cond_97
    return-void

    .line 956
    :cond_98
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 957
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 958
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 960
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->startRequestAcceptImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, v0

    .line 961
    invoke-static {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 962
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 963
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->endRequestAcceptImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 964
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1f6

    .line 965
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x28

    .line 966
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 967
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 968
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    const/16 v5, 0x1f6

    .line 970
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleAddParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
    .registers 11

    .line 1448
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddParticipantsRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_33

    .line 1452
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAddParticipantsRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_32

    .line 1454
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_32
    return-void

    .line 1459
    :cond_33
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_42

    .line 1460
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1461
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_42
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_5b

    .line 1466
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAddParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_5a

    .line 1468
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_5a
    return-void

    .line 1473
    :cond_5b
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1474
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1476
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v1

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v8, v5, 0x1

    if-eqz v6, :cond_85

    .line 1477
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_87

    :cond_85
    const-string v6, ""

    :goto_87
    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    aput v6, v2, v5

    move v5, v8

    goto :goto_70

    .line 1480
    :cond_8f
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1481
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mSubject:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 1482
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1483
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1484
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1485
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1486
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1487
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1488
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1489
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1491
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1492
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1493
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1494
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1495
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fe

    .line 1497
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleCancelFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .registers 7

    .line 2069
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mFileTransferId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-eqz v0, :cond_2c

    .line 2075
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCancelFtSessionRequest(): pending session - postpone"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    return-void

    .line 2079
    :cond_2c
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2080
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v1, :cond_55

    .line 2082
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleCancelFtSessionRequest(): unknown session!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_54

    .line 2084
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 2085
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_54
    return-void

    .line 2093
    :cond_55
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v0, :cond_61

    .line 2094
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleCancelFtSessionRequest(): there is a ongoing cancel request, ignore further cancel request"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2099
    :cond_61
    iput-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2100
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V

    return-void
.end method

.method private handleChangeGroupChatAliasRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
    .registers 10

    .line 1754
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcAliasRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1756
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_3d

    .line 1759
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGcAliasRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_3c

    .line 1761
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3c
    return-void

    .line 1766
    :cond_3d
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_4c

    .line 1767
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mAlias:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1768
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    :cond_4c
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_65

    .line 1773
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGcAliasRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_64

    .line 1775
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_64
    return-void

    .line 1780
    :cond_65
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1783
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_75

    .line 1784
    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_76

    :cond_75
    move v1, v2

    .line 1787
    :goto_76
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mAlias:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 1788
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v1, v2, :cond_88

    .line 1790
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1792
    :cond_88
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v0, 0x3

    .line 1793
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1794
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1795
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1797
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1798
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1799
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1800
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1801
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fe

    .line 1803
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleChangeGroupChatIconRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
    .registers 9

    .line 1677
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeGroupChatIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1679
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_34

    .line 1682
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onChangeGroupChatIcon: Session does not exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1686
    :cond_34
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_43

    .line 1687
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1688
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    :cond_43
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1695
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_a1

    const-string v4, "."

    .line 1697
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6d

    .line 1699
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1700
    invoke-static {v2}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1701
    invoke-static {v2}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :cond_6d
    const-string v2, ""

    .line 1706
    :goto_6f
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    if-eqz v4, :cond_78

    .line 1707
    invoke-virtual {v1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_79

    :cond_78
    move v4, v3

    :goto_79
    if-eqz v2, :cond_80

    .line 1712
    invoke-virtual {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_81

    :cond_80
    move v2, v3

    .line 1715
    :goto_81
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v4, v3, :cond_89

    .line 1717
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_89
    if-eq v2, v3, :cond_8e

    .line 1720
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1722
    :cond_8e
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1723
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    goto :goto_a2

    :cond_a1
    move v2, v3

    .line 1727
    :goto_a2
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    if-eqz v4, :cond_ab

    .line 1728
    invoke-virtual {v1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_ac

    :cond_ab
    move v4, v3

    .line 1731
    :goto_ac
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1733
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    if-eqz p1, :cond_b6

    .line 1734
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addIconAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1737
    :cond_b6
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x5

    .line 1738
    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v4, v3, :cond_c9

    .line 1740
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1743
    :cond_c9
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1744
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1745
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v2, 0x36

    .line 1746
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1747
    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1748
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1750
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private handleChangeGroupChatLeaderRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
    .registers 10

    .line 1559
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatLeaderRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_33

    .line 1563
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_32

    .line 1565
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_32
    return-void

    .line 1570
    :cond_33
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    if-nez v1, :cond_48

    .line 1571
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: Leader info not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_47

    .line 1573
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_47
    return-void

    .line 1578
    :cond_48
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_55

    .line 1579
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1580
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    :cond_55
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_6e

    .line 1584
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_6d

    .line 1586
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_6d
    return-void

    .line 1591
    :cond_6e
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1592
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1594
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    if-eqz v5, :cond_95

    .line 1595
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_97

    :cond_95
    const-string v5, ""

    :goto_97
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v2, v1

    goto :goto_82

    .line 1599
    :cond_9e
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz p1, :cond_a8

    .line 1600
    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_a9

    :cond_a8
    move p1, v1

    .line 1603
    :goto_a9
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1604
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1605
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p1, v1, :cond_b8

    .line 1607
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1609
    :cond_b8
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x2

    .line 1610
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1611
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1613
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1614
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1615
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1616
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1617
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fe

    .line 1619
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleChangeGroupChatSubjectRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
    .registers 10

    .line 1623
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcSubjectRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1625
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_3d

    .line 1628
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGcSubjectRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_3c

    .line 1630
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3c
    return-void

    .line 1635
    :cond_3d
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_4c

    .line 1636
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mSubject:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1637
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    :cond_4c
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_65

    .line 1642
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_64

    .line 1644
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_64
    return-void

    .line 1650
    :cond_65
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1651
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1654
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz p1, :cond_7f

    .line 1655
    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_80

    :cond_7f
    move p1, v2

    .line 1658
    :goto_80
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p1, v2, :cond_88

    .line 1660
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1662
    :cond_88
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x4

    .line 1663
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1664
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1665
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1667
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1668
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1669
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1670
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1671
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fe

    .line 1673
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleCloseImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
    .registers 6

    .line 1025
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseImSessionRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_3d

    .line 1029
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCloseImSessionRequest(): unknown session!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_3c

    .line 1031
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1032
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    :cond_3c
    return-void

    .line 1036
    :cond_3d
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    .line 1037
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendImCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;)V

    return-void
.end method

.method private handleRemoveParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
    .registers 10

    .line 1501
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveParticipantsRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_33

    .line 1505
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_32

    .line 1507
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_32
    return-void

    .line 1512
    :cond_33
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_42

    .line 1513
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1514
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_42
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_5b

    .line 1519
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_5a

    .line 1521
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_5a
    return-void

    .line 1527
    :cond_5b
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1528
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1530
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v6, v1, 0x1

    if-eqz v5, :cond_84

    .line 1531
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_86

    :cond_84
    const-string v5, ""

    :goto_86
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v2, v1

    move v1, v6

    goto :goto_6f

    .line 1535
    :cond_8e
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz p1, :cond_98

    .line 1536
    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_99

    :cond_98
    move p1, v1

    .line 1538
    :goto_99
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1539
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1540
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p1, v1, :cond_a8

    .line 1542
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1544
    :cond_a8
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x1

    .line 1545
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1546
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1548
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1549
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1550
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1551
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1552
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fe

    .line 1554
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleReportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
    .registers 12

    .line 2226
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleReportChatbotAsSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 2228
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mSpamInfo:Ljava/lang/String;

    .line 2229
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mRequestId:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 2231
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_85

    :cond_1a
    const-string v3, "chatbot-communication"

    .line 2236
    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mPhoneId:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_2c

    .line 2238
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleReportChatbotAsSpam(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2242
    :cond_2c
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2243
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2244
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2245
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2247
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->startRequestReportChatbotAsSpam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2248
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2249
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addChatbotUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2250
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addSpamInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2251
    invoke-static {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addRequestId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2252
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->endRequestReportChatbotAsSpam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2254
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x578

    .line 2255
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x35

    .line 2256
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2257
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2258
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    const/16 v5, 0x578

    .line 2260
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void

    .line 2232
    :cond_85
    :goto_85
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleReportChatbotAsSpam - Invalid ChatBotUrl"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleRequestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
    .registers 12

    .line 2265
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRequestChatbotAnonymize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 2267
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mAliasXml:Ljava/lang/String;

    .line 2268
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mCommandId:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 2269
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_85

    :cond_1a
    const-string v3, "chatbot-communication"

    .line 2274
    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mPhoneId:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_2c

    .line 2276
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRequestChatbotAnonymize(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2279
    :cond_2c
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2280
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2281
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2282
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2284
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->startRequestChatbotAnonymize(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2285
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2286
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addChatbotUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2287
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addAnonymizeInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2288
    invoke-static {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addCommandId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2289
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->endRequestChatbotAnonymize(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2291
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x579

    .line 2292
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x34

    .line 2293
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2294
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2295
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    const/16 v5, 0x579

    .line 2296
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void

    .line 2270
    :cond_85
    :goto_85
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRequestChatbotAnonymize - Invalid ChatBotUrl"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
    .registers 10

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComposingNotification(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_2a

    .line 1149
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSendComposingNotification(): invalid session handle!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1153
    :cond_2a
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_3a

    .line 1155
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSendComposingNotification(): user agent not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1159
    :cond_3a
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string/jumbo v1, "text/plain"

    .line 1160
    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1161
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1163
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->startImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1164
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1165
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mInterval:I

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1166
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mIsComposing:Z

    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addIsActive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1167
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->endImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1169
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->startRequestSendImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1170
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1171
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1172
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1173
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->endRequestSendImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1176
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1f9

    .line 1177
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2c

    .line 1178
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1179
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1180
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1f9

    .line 1182
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x9

    .line 1183
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    .line 1182
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 4

    .line 1364
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 1365
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1367
    :goto_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    return-void
.end method

.method private handleSendFtDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 4

    .line 1371
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    return-void
.end method

.method private handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
    .registers 14

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_41

    .line 1191
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): invalid session handle!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_40

    .line 1193
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_40
    return-void

    .line 1199
    :cond_41
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_74

    .line 1203
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): user agent not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_73

    .line 1205
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1207
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    :cond_73
    return-void

    .line 1212
    :cond_74
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "charset="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1213
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSendMessageRequest(): missed charset, use utf8!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 1217
    :cond_a0
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v1

    .line 1220
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1222
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 1223
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1224
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_c3

    invoke-static {v5}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c5

    :cond_c3
    const-string v5, ""

    :goto_c5
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1226
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1227
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1228
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1229
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1230
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v5, :cond_126

    const-string v5, "maap"

    .line 1236
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    const-string v6, "<http://www.gsma.com/rcs/maap/>"

    .line 1237
    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    const-string v8, "Traffic-Type"

    .line 1238
    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1239
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1241
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1242
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1243
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1244
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 1245
    filled-new-array {v8}, [I

    move-result-object v8

    .line 1246
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v8

    .line 1248
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1249
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1250
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1251
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1252
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_126
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-nez v5, :cond_132

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-nez v5, :cond_132

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v5, :cond_1cf

    :cond_132
    const-string v5, "Extended-RCS"

    .line 1255
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    const-string v6, "<http://www.tta.or.kr>"

    .line 1256
    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    new-array v8, v2, [I

    .line 1268
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v9, :cond_166

    const-string v9, "Reference-ID"

    .line 1269
    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1270
    iget-object v11, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1272
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1273
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1274
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1275
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1276
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 1277
    array-length v11, v8

    sub-int/2addr v11, v10

    aput v9, v8, v11

    .line 1279
    :cond_166
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-eqz v9, :cond_18d

    const-string v9, "Reference-Type"

    .line 1280
    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1281
    iget-object v11, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1283
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1284
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1285
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1286
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1287
    array-length v11, v8

    add-int/2addr v11, v10

    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 1288
    array-length v11, v8

    sub-int/2addr v11, v10

    aput v9, v8, v11

    .line 1290
    :cond_18d
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v9, :cond_1b4

    const-string v9, "Reference-Value"

    .line 1291
    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1292
    iget-object v11, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1294
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1295
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1296
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1297
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1298
    array-length v11, v8

    add-int/2addr v11, v10

    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 1299
    array-length v11, v8

    sub-int/2addr v11, v10

    aput v9, v8, v11

    .line 1302
    :cond_1b4
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v8

    .line 1304
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1305
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1306
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1307
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1308
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_1cf
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, -0x1

    if-lez v5, :cond_1f2

    .line 1311
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v8, v5, [I

    :goto_1dc
    if-ge v2, v5, :cond_1ed

    .line 1313
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1dc

    .line 1315
    :cond_1ed
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_1f3

    :cond_1f2
    move v2, v6

    .line 1319
    :goto_1f3
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    if-eqz v5, :cond_21d

    .line 1320
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSendMessageRequest, params.mGroupCcList="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v5

    .line 1322
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCcParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 1324
    :cond_21d
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1325
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1326
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1328
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1329
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1330
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1331
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1332
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1334
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_253

    .line 1335
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1338
    :cond_253
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    if-eqz p1, :cond_25a

    .line 1339
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCcParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1342
    :cond_25a
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1344
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1345
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1346
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1348
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->startRequestSendImMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1349
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1350
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1351
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->endRequestSendImMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1353
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1f8

    .line 1354
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2b

    .line 1355
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1356
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1357
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1f8

    .line 1359
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
    .registers 10

    .line 1375
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendMessageRevokeRequest - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_20

    .line 1378
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "params are null, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1382
    :cond_20
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mOwnImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1383
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mOwnImsi wrong value, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1387
    :cond_30
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_3c

    .line 1388
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mUri is null, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1392
    :cond_3c
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1394
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "uri is empty, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1398
    :cond_4f
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1399
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mConversationId wrong value, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1403
    :cond_5f
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1404
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mContributionId wrong value, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1408
    :cond_6f
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_8d

    .line 1412
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendDispositionNotification(): UserAgent not found."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1414
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1418
    :cond_8d
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    .line 1420
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1422
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mImdnId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1423
    invoke-virtual {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1424
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1425
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1427
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->startRequestSendMessageRevokeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1428
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long v1, v1

    .line 1429
    invoke-static {v4, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v1, 0x1

    .line 1430
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1431
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1432
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1433
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1435
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->endRequestSendMessageRevokeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1437
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x1fd

    .line 1438
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x68

    .line 1439
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1440
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1441
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fd

    .line 1443
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v1, 0x1c

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    .line 1444
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    .line 1443
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSetMoreInfoToSipUARequest(Ljava/lang/String;I)V
    .registers 10

    .line 2197
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetMoreInfoToSipUARequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 2202
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    if-nez v6, :cond_2b

    .line 2204
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSetMoreInfoToSipUARequest(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2208
    :cond_2b
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p2, 0x0

    invoke-direct {v3, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2209
    invoke-virtual {v3, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2211
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->startRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2212
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2213
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->endRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2215
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x20d

    .line 2216
    invoke-static {v3, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x3b

    .line 2217
    invoke-static {v3, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2218
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2219
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    const/16 v2, 0x20d

    .line 2221
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 p2, 0x1d

    .line 2222
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object v1, p0

    .line 2221
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleStartFtMediaRequest(I)V
    .registers 10

    .line 1989
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFtMediaRequest(): file transdfer session handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1993
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_54

    .line 1995
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFtMediaRequest(): UserAgent not found. UaHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    .line 1997
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v0, :cond_53

    .line 1998
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_53
    return-void

    .line 2004
    :cond_54
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2006
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->startRequestStartMedia(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, p1

    .line 2007
    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2008
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->endRequestStartMedia(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2010
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x22a

    .line 2011
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2a

    .line 2012
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2013
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2014
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x22a

    .line 2016
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleStartFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1808
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartFtSessionRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mOwnImsi:Ljava/lang/String;

    const-string v3, "ft"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v5

    if-nez v5, :cond_3d

    .line 1812
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleStartFtSessionRequest(): UserAgent not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    .line 1814
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_3c

    .line 1815
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3c
    return-void

    .line 1821
    :cond_3d
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;-><init>()V

    .line 1822
    iget v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 1823
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1824
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    .line 1825
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    .line 1826
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1831
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1832
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1833
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1834
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1835
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1836
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1837
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1838
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1839
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1843
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    const-string v15, ""

    if-eqz v14, :cond_10d

    .line 1844
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v14

    if-eqz v14, :cond_d6

    .line 1845
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_d7

    :cond_d6
    move-object v14, v15

    .line 1844
    :goto_d7
    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1846
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_ee

    .line 1847
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ef

    :cond_ee
    move-object v3, v15

    .line 1846
    :goto_ef
    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move/from16 v16, v3

    .line 1848
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamDate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move-object/from16 v17, v5

    move-object/from16 v26, v15

    move v15, v14

    move/from16 v14, v16

    move-object/from16 v16, v26

    goto :goto_124

    .line 1850
    :cond_10d
    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1851
    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1852
    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move-object/from16 v17, v5

    move/from16 v26, v14

    move v14, v3

    move/from16 v3, v16

    move-object/from16 v16, v15

    move/from16 v15, v26

    .line 1854
    :goto_124
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    move/from16 v18, v13

    .line 1855
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    .line 1856
    invoke-static {v13}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v13

    .line 1855
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    move/from16 v19, v13

    .line 1857
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v13}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    move/from16 v20, v13

    .line 1861
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    const/16 v21, -0x1

    if-eqz v13, :cond_15b

    .line 1862
    invoke-virtual {v13}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    move/from16 v22, v5

    move/from16 v5, v21

    goto :goto_19d

    .line 1864
    :cond_15b
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [I

    move/from16 v22, v5

    .line 1866
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v23, 0x0

    :goto_16d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_197

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v25, v23, 0x1

    if-eqz v24, :cond_188

    .line 1867
    invoke-virtual/range {v24 .. v24}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v26, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v26

    goto :goto_18c

    :cond_188
    move-object/from16 v24, v5

    move-object/from16 v5, v16

    :goto_18c
    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v13, v23

    move-object/from16 v5, v24

    move/from16 v23, v25

    goto :goto_16d

    .line 1869
    :cond_197
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->createReceiversVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    move/from16 v13, v21

    .line 1872
    :goto_19d
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1873
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1874
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    const/16 v23, 0x1

    if-eqz v4, :cond_1ac

    move/from16 v4, v23

    goto :goto_1ad

    :cond_1ac
    const/4 v4, 0x0

    :goto_1ad
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsConference(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1876
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v4, :cond_1b8

    .line 1877
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_1bb

    .line 1879
    :cond_1b8
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addReceivers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1882
    :goto_1bb
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v4, :cond_1c2

    .line 1883
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1885
    :cond_1c2
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v4, :cond_1c9

    .line 1886
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1888
    :cond_1c9
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v4, :cond_1d0

    .line 1889
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1891
    :cond_1d0
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v4, :cond_1d7

    .line 1892
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1895
    :cond_1d7
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1897
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1898
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1899
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1900
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1901
    iget-wide v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1902
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    if-eqz v5, :cond_206

    .line 1903
    iget-wide v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-wide v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1904
    iget-wide v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    goto :goto_20e

    :cond_206
    const-wide/16 v5, 0x0

    .line 1906
    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1907
    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1909
    :goto_20e
    iget v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addTimeDuration(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1911
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1914
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    if-eqz v6, :cond_274

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v7, v8, :cond_274

    const-string v7, "."

    .line 1916
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_241

    .line 1918
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1919
    invoke-static {v6}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_241

    .line 1920
    invoke-static {v6}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_243

    :cond_241
    move-object/from16 v6, v16

    .line 1924
    :goto_243
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1925
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1927
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1928
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1929
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1930
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1932
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v21

    :cond_274
    move/from16 v6, v21

    .line 1937
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->startReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1938
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamFrom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1939
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1940
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamDate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1942
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->endReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1943
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v7, :cond_2a2

    .line 1944
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "andleStartFtSessionRequest, mReportMsgParams="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_2a2
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1948
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    if-eqz v7, :cond_2ae

    move/from16 v7, v22

    .line 1949
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2ae
    move/from16 v7, v19

    .line 1952
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v7, v20

    .line 1953
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1954
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 1956
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->startFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1957
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v8, v9, :cond_2c8

    move/from16 v8, v23

    goto :goto_2c9

    :cond_2c8
    const/4 v8, 0x0

    :goto_2c9
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIsPush(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1958
    iget-boolean v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIsPublicAccountMsg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v8, v18

    .line 1959
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileFingerPrint(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1961
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1963
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    if-eqz v5, :cond_2e4

    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v9, :cond_2e4

    .line 1964
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIconAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1967
    :cond_2e4
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1969
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->endFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1971
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->startRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1972
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1973
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1974
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1975
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1976
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->endRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1978
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v3, 0x226

    .line 1979
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x2e

    .line 1980
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1981
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1983
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    const/16 v1, 0x226

    .line 1985
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 644
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartImSessionRequest: params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v2, :cond_27

    .line 648
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move v6, v5

    goto :goto_29

    :cond_27
    move-object v2, v4

    const/4 v6, 0x1

    .line 653
    :goto_29
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_39

    .line 655
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleStartImSessionRequest(): UserAgent not found."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 660
    :cond_39
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4a

    .line 661
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleStartImSessionRequest(): receiver.size() = 0 !"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    const/4 v6, 0x1

    goto :goto_5a

    .line 663
    :cond_4a
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5a

    .line 664
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleStartImSessionRequest(): null receiver!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_5a
    :goto_5a
    if-eqz v6, :cond_9b

    .line 669
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    const/4 v4, 0x0

    if-eqz v3, :cond_66

    .line 670
    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 671
    iput-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    .line 673
    :cond_66
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_7d

    .line 674
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v5, v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 676
    iput-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    .line 678
    :cond_7d
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    if-eqz v3, :cond_9a

    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_9a

    .line 679
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v0, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 681
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    :cond_9a
    return-void

    .line 688
    :cond_9b
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mDedicatedBearerCallback:Landroid/os/Message;

    const/4 v13, 0x0

    .line 689
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v14

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;-><init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;ZI)V

    .line 690
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v8, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v8, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 695
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    .line 696
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v9

    .line 695
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->createReceiversVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    .line 697
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 698
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 699
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 700
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 701
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 702
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 703
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 704
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 705
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v3, :cond_11d

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11e

    :cond_11d
    move-object v3, v4

    :goto_11e
    invoke-virtual {v8, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 707
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 708
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 709
    iget-boolean v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsConference(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 710
    iget-boolean v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsChatbotParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 712
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSdpContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 714
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addReceivers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 717
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v2, :cond_13f

    .line 718
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 720
    :cond_13f
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v2, :cond_146

    .line 721
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 723
    :cond_146
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v2, :cond_14d

    .line 724
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 726
    :cond_14d
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v2, :cond_154

    .line 727
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 729
    :cond_154
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    if-eqz v2, :cond_15b

    .line 730
    invoke-static {v8, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionReplaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 733
    :cond_15b
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_166

    .line 734
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addServiceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 737
    :cond_166
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v2, :cond_16d

    .line 738
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addChatMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 741
    :cond_16d
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 744
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    const/4 v5, -0x1

    if-eqz v3, :cond_18b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18b

    .line 745
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v0, v8, v3, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v3

    .line 746
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->createAcceptTypesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_18c

    :cond_18b
    move v3, v5

    .line 748
    :goto_18c
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    if-eqz v9, :cond_1a5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a5

    .line 749
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v9

    .line 750
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->createAcceptWrappedTypesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    goto :goto_1a6

    :cond_1a5
    move v9, v5

    .line 753
    :goto_1a6
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 755
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->startImSessionParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 756
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsRejoin(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 757
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsClosedGroupchat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 758
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsInviteforbye(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 759
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsGeolocationPush:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsGeolocationPush(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 762
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    if-eqz v11, :cond_1ce

    .line 763
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 766
    :cond_1ce
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    if-eqz v10, :cond_1db

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1db

    .line 767
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addAcceptTypes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 770
    :cond_1db
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e7

    const/4 v3, 0x1

    .line 771
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsExtension(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 774
    :cond_1e7
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    if-eqz v3, :cond_1f4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f4

    .line 775
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addAcceptWrappedTypes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 778
    :cond_1f4
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 779
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->endImSessionParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 782
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    if-eqz v1, :cond_3ad

    .line 786
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 787
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    if-eqz v9, :cond_233

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_233

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 788
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "charset="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_233

    .line 789
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";charset=UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 792
    :cond_233
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v9, :cond_27b

    const-string v9, "maap"

    .line 793
    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    const-string v10, "<http://www.gsma.com/rcs/maap/>"

    .line 794
    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    const-string v11, "Traffic-Type"

    .line 795
    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 796
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 798
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 799
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 800
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 801
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 802
    filled-new-array {v11}, [I

    move-result-object v11

    .line 803
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v11

    .line 805
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 806
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 807
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 808
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 809
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_27b
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-nez v9, :cond_28b

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-nez v9, :cond_28b

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v9, :cond_288

    goto :goto_28b

    :cond_288
    const/4 v11, 0x0

    goto/16 :goto_32b

    :cond_28b
    :goto_28b
    const-string v9, "Extended-RCS"

    .line 812
    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    const-string v10, "<http://www.tta.or.kr>"

    .line 813
    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    const/4 v11, 0x0

    new-array v12, v11, [I

    .line 825
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-eqz v13, :cond_2c0

    const-string v13, "Reference-ID"

    .line 826
    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 827
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 829
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 830
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 831
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 832
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    const/4 v14, 0x1

    .line 833
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 834
    array-length v15, v12

    sub-int/2addr v15, v14

    aput v13, v12, v15

    .line 836
    :cond_2c0
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-eqz v13, :cond_2e8

    const-string v13, "Reference-Type"

    .line 837
    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 838
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 840
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 841
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 842
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 843
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 844
    array-length v14, v12

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 845
    array-length v14, v12

    sub-int/2addr v14, v15

    aput v13, v12, v14

    .line 847
    :cond_2e8
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v13, :cond_310

    const-string v13, "Reference-Value"

    .line 848
    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 849
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 851
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 852
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 853
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 854
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 855
    array-length v14, v12

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 856
    array-length v14, v12

    sub-int/2addr v14, v15

    aput v13, v12, v14

    .line 859
    :cond_310
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    .line 861
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 862
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 863
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 864
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 865
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :goto_32b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_34c

    .line 868
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v9, v5, [I

    :goto_337
    if-ge v11, v5, :cond_348

    .line 870
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_337

    .line 872
    :cond_348
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    .line 875
    :cond_34c
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    iput-object v9, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 876
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    .line 877
    invoke-static {v6}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v6

    .line 876
    invoke-static {v8, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 878
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 879
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v10, :cond_36c

    invoke-static {v10}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :cond_36c
    invoke-virtual {v8, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 880
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 881
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 883
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 884
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 885
    invoke-static {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 887
    invoke-static {v8, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 888
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 890
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 891
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 892
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 893
    invoke-static {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 895
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a9

    .line 896
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 898
    :cond_3a9
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 902
    :cond_3ad
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->startRequestStartImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 903
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 904
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eqz v1, :cond_3c0

    .line 907
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 910
    :cond_3c0
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->endRequestStartImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 912
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x1f5

    .line 913
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v2, 0x27

    .line 914
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 915
    invoke-static {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 916
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 918
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleStartImSessionRequest(): Armaan: sending to stack!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1f5

    .line 920
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onSubscribeGroupChatInfo(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;)V
    .registers 9

    .line 1070
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeGroupChatInfo() uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    if-nez v6, :cond_2c

    .line 1074
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onSubscribeGroupChatList(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1078
    :cond_2c
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribeGroupChatInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1080
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 1082
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->startRequestGroupInfoSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1083
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v3, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1084
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1085
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1086
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->endRequestGroupInfoSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1088
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x231

    .line 1089
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x38

    .line 1090
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1091
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1092
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    const/16 v2, 0x231

    .line 1094
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 1095
    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v1, p0

    .line 1094
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onSubscribeGroupChatList(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;)V
    .registers 9

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSubscribeGroupChatList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    if-nez v6, :cond_19

    .line 1045
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onSubscribeGroupChatList(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1049
    :cond_19
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string v0, "SubscribeGroupChatList"

    .line 1050
    invoke-virtual {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1052
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->startRequestGroupListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1053
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v3, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1054
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1055
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getVersion()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v3, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1056
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getIncreaseMode()Z

    move-result p1

    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addIsIncrease(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1057
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->endRequestGroupListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1059
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x230

    .line 1060
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x37

    .line 1061
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1062
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1063
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    const/16 v2, 0x230

    .line 1065
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    return-object p1
.end method

.method private sendImCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;)V
    .registers 10

    .line 1099
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    if-nez v0, :cond_d

    .line 1101
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendImCancelRequestToStack(): null stop params!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1105
    :cond_d
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_42

    .line 1108
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImCancelRequestToStack: UserAgent not found. UaHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object p1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_41

    .line 1110
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1111
    iput-object p0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    :cond_41
    return-void

    .line 1116
    :cond_42
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1118
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v1, :cond_59

    .line 1119
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->getReasonText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_5a

    :cond_59
    const/4 v1, -0x1

    .line 1122
    :goto_5a
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->startReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1123
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v2, :cond_6c

    .line 1124
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->getCauseCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1125
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1127
    :cond_6c
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->endReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1129
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->startRequestCloseImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1130
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1131
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->addReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1132
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->endRequestCloseImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1134
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x1f7

    .line 1135
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x29

    .line 1136
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1137
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1138
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1f7

    .line 1140
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    .line 1141
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    .line 1140
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .registers 11

    .line 2303
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v5

    if-nez v5, :cond_f

    .line 2305
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2308
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .registers 6

    if-nez p5, :cond_b

    .line 2313
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2316
    :cond_b
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method


# virtual methods
.method public acceptFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .registers 3

    const/4 v0, 0x5

    .line 291
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
    .registers 3

    const/4 v0, 0x2

    .line 271
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
    .registers 3

    const/16 v0, 0xc

    .line 371
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .registers 3

    const/4 v0, 0x6

    .line 301
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupAlias(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
    .registers 3

    const/16 v0, 0x17

    .line 341
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupChatIcon(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
    .registers 3

    const/16 v0, 0x1e

    .line 336
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupChatLeader(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
    .registers 3

    const/16 v0, 0x13

    .line 326
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupChatSubject(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
    .registers 3

    const/16 v0, 0x16

    .line 331
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public extendToGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .registers 3

    const/16 v0, 0xd

    .line 377
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;
    .registers 2

    .line 2480
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2481
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 2

    .line 2475
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const-string v0, "im"

    .line 2476
    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 2

    .line 2470
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2471
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 3

    .line 2460
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const-string v0, "im"

    .line 2461
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 3

    .line 2465
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2466
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 3

    .line 2455
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2456
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_fa

    .line 639
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    .line 629
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRequestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    goto/16 :goto_f9

    .line 634
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleReportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V

    goto/16 :goto_f9

    .line 574
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatIconRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V

    goto/16 :goto_f9

    .line 625
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSetMoreInfoToSipUARequest(Ljava/lang/String;I)V

    goto/16 :goto_f9

    .line 549
    :pswitch_34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V

    goto/16 :goto_f9

    .line 621
    :pswitch_3d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->onSubscribeGroupChatInfo(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;)V

    goto/16 :goto_f9

    .line 618
    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->onSubscribeGroupChatList(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;)V

    goto/16 :goto_f9

    .line 578
    :pswitch_4f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatAliasRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V

    goto/16 :goto_f9

    .line 570
    :pswitch_58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatSubjectRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V

    goto/16 :goto_f9

    .line 557
    :pswitch_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRemoveParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V

    goto/16 :goto_f9

    .line 606
    :pswitch_6a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    goto/16 :goto_f9

    .line 566
    :pswitch_73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatLeaderRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V

    goto/16 :goto_f9

    .line 598
    :pswitch_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartFtMediaRequest(I)V

    goto/16 :goto_f9

    .line 602
    :pswitch_89
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    goto/16 :goto_f9

    .line 610
    :pswitch_92
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendFtDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_f9

    .line 562
    :pswitch_9a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    goto :goto_f9

    .line 553
    :pswitch_a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAddParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V

    goto :goto_f9

    .line 545
    :pswitch_aa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_f9

    .line 541
    :pswitch_b2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    goto :goto_f9

    .line 582
    :pswitch_ba
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V

    goto :goto_f9

    .line 594
    :pswitch_c2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_f9

    .line 590
    :pswitch_ca
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleCancelFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_f9

    .line 586
    :pswitch_d2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAcceptFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    goto :goto_f9

    .line 525
    :pswitch_da
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V

    goto :goto_f9

    .line 537
    :pswitch_e2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleCloseImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    goto :goto_f9

    .line 533
    :pswitch_ea
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAcceptImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    goto :goto_f9

    .line 529
    :pswitch_f2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    :goto_f9
    :pswitch_f9
    return-void

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_ea
        :pswitch_e2
        :pswitch_da
        :pswitch_d2
        :pswitch_ca
        :pswitch_c2
        :pswitch_ba
        :pswitch_b2
        :pswitch_aa
        :pswitch_5
        :pswitch_a2
        :pswitch_9a
        :pswitch_92
        :pswitch_5
        :pswitch_f9
        :pswitch_89
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_58
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_5
        :pswitch_5
        :pswitch_34
        :pswitch_29
        :pswitch_20
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method protected handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .registers 12

    .line 2146
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2149
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const/4 v2, 0x0

    if-nez v1, :cond_4c

    .line 2151
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRejectFtSessionRequest: no session in map, return reject failure id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_4b

    .line 2153
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_4b
    return-void

    .line 2158
    :cond_4c
    iput-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2160
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v0, :cond_53

    goto :goto_55

    :cond_53
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 2162
    :goto_55
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_77

    .line 2164
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRejectFtSessionRequest(): User Agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_76

    .line 2166
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2167
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_76
    return-void

    .line 2172
    :cond_77
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2173
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2176
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2177
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2178
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2179
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2181
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2182
    iget v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v1, v1

    invoke-static {v6, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2183
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v0

    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2184
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2185
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2187
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x228

    .line 2188
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2f

    .line 2189
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2190
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2191
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    const/16 v5, 0x228

    .line 2193
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method protected handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
    .registers 11

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectImSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const/4 v2, 0x0

    if-nez v1, :cond_49

    .line 979
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleRejectImSessionRequest: no session in map, return reject failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_48

    .line 981
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v3, v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 982
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    :cond_48
    return-void

    .line 987
    :cond_49
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    .line 988
    iget v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    if-nez v8, :cond_71

    .line 990
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleRejectImSessionRequest: User Agent not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_70

    .line 992
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v3, v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 993
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    :cond_70
    return-void

    .line 999
    :cond_71
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1000
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1002
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1003
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1004
    invoke-static {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1005
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1008
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->startRequestRejectImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, v0

    .line 1009
    invoke-static {v5, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1010
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getSipCode()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v5, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1011
    invoke-static {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1012
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->endRequestRejectImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1014
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fc

    .line 1015
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x33

    .line 1016
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1017
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1018
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    const/16 v4, 0x1fc

    .line 1020
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method public registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 2431
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 2421
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 2446
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForGroupChatInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 2381
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForGroupChatListUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 2371
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 489
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForImIncomingSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 458
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 448
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 2391
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 2401
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .registers 3

    const/4 v0, 0x7

    .line 296
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
    .registers 3

    const/16 v0, 0x11

    .line 281
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
    .registers 3

    const/16 v0, 0x15

    .line 321
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
    .registers 3

    const/16 v0, 0x1f

    .line 2441
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
    .registers 3

    const/16 v0, 0x20

    .line 2416
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    const/4 p0, 0x0

    .line 2324
    invoke-static {p1, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 2325
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendCanceledNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 3

    const/16 v0, 0xa

    .line 361
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
    .registers 3

    const/16 v0, 0x9

    .line 346
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 3

    const/16 v0, 0xa

    .line 351
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 3

    const/16 v0, 0xa

    .line 356
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V
    .registers 10

    .line 2104
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-nez v0, :cond_d

    .line 2106
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendFtCancelRequestToStack(): null reject params!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2110
    :cond_d
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_35

    .line 2112
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendFtCancelRequestToStack(): User agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_34

    .line 2114
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2115
    iget-object p0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_34
    return-void

    .line 2120
    :cond_35
    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 2121
    :goto_3c
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2122
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2125
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2126
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2127
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2128
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2130
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2131
    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2132
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result p1

    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2133
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2134
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2136
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x228

    .line 2137
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2f

    .line 2138
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2139
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2140
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x228

    .line 2142
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method public sendFtDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 3

    const/16 v0, 0xe

    .line 311
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFtDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .registers 3

    const/16 v0, 0xe

    .line 316
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
    .registers 3

    const/16 v0, 0x8

    .line 306
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendImMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
    .registers 3

    const/4 v0, 0x4

    .line 286
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
    .registers 3

    const/16 v0, 0x1c

    .line 366
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setFtMessageId(Ljava/lang/Object;I)V
    .registers 6

    .line 509
    check-cast p1, Ljava/lang/Integer;

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFtMessageId():  sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v0, :cond_43

    .line 515
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFtMessageId(): no session in map, id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 518
    :cond_43
    iput p2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    return-void
.end method

.method public setMoreInfoToSipUserAgent(Ljava/lang/String;I)V
    .registers 5

    const/16 v0, 0x1d

    const/4 v1, 0x0

    .line 2411
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .registers 3

    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
    .registers 3

    const/4 v0, 0x3

    .line 276
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public subscribeGroupChatInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 2364
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribeGroupChatInfo() uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    const/16 p1, 0x19

    .line 2366
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public subscribeGroupChatList(IZLjava/lang/String;)V
    .registers 6

    .line 2356
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeGroupChatList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;-><init>(IZLjava/lang/String;)V

    const/16 p1, 0x18

    .line 2359
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unRegisterForGroupChatInfoUpdate(Landroid/os/Handler;)V
    .registers 2

    .line 2386
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unRegisterForGroupChatListUpdate(Landroid/os/Handler;)V
    .registers 2

    .line 2376
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterAllFileTransferProgress()V
    .registers 1

    .line 0
    return-void
.end method

.method public unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V
    .registers 2

    .line 2436
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V
    .registers 2

    .line 2426
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V
    .registers 2

    .line 2451
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForComposingNotification(Landroid/os/Handler;)V
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V
    .registers 2

    .line 441
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V
    .registers 2

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImIncomingMessage(Landroid/os/Handler;)V
    .registers 2

    .line 494
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImIncomingSession(Landroid/os/Handler;)V
    .registers 2

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImSessionClosed(Landroid/os/Handler;)V
    .registers 2

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImSessionEstablished(Landroid/os/Handler;)V
    .registers 2

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImdnFailed(Landroid/os/Handler;)V
    .registers 2

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImdnNotification(Landroid/os/Handler;)V
    .registers 2

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->unregisterForImdnNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImdnResponse(Landroid/os/Handler;)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->unregisterForImdnResponse(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMessageFailed(Landroid/os/Handler;)V
    .registers 2

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMessageRevokeResponse(Landroid/os/Handler;)V
    .registers 2

    .line 2396
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V
    .registers 2

    .line 2406
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTransferProgress(Landroid/os/Handler;)V
    .registers 2

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
