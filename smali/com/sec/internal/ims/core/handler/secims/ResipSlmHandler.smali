.class public Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
.super Lcom/sec/internal/ims/core/handler/SlmHandler;
.source "ResipSlmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;,
        Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ACCEPT_FT_SLM_MESSAGE:I = 0x2

.field private static final EVENT_ACCEPT_SLM:I = 0x7

.field private static final EVENT_CANCEL_FT_SLM_MESSAGE:I = 0x3

.field private static final EVENT_REJECT_FT_SLM_MESSAGE:I = 0x4

.field private static final EVENT_REJECT_SLM:I = 0x8

.field private static final EVENT_SEND_DISPOSITION_NOTIFICATION:I = 0x6

.field private static final EVENT_SEND_FT_SLM_MESSAGE:I = 0x5

.field private static final EVENT_SEND_SLM_MESSAGE:I = 0x1

.field private static final EVENT_STACK_NOTIFY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mMessageSendRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessages:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

.field private final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNotify(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 188
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V
    .locals 1

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/SlmHandler;-><init>(Landroid/os/Looper;)V

    .line 124
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 125
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 126
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 127
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    .line 193
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 194
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    .line 195
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    const/16 p1, 0x64

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSlmHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private couldBeEmailGateway(Ljava/lang/String;)Z
    .locals 5

    .line 1410
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldBeEmailGateway("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-gt v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private handleAcceptFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 625
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcceptFileRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 630
    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 631
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {v1, v4, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 632
    iput-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    .line 635
    :cond_0
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    const-string v6, "handleAcceptFileRequest(): no listener!"

    if-nez v4, :cond_2

    const-string v4, "handleAcceptFileRequest(): session not found!"

    .line 638
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 640
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/AsyncResult;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 641
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const/4 v14, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v1, v5, v4, v5}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 640
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 643
    :cond_1
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 649
    :cond_2
    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 650
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v1, "handleAcceptFileRequest(): ftpayload is null"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 655
    :cond_3
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v1, "handleAcceptFileRequest(): fileAttr is null"

    .line 657
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 661
    :cond_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v7

    .line 662
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_5

    const-string v1, "handleAcceptFileRequest(): file info is null"

    .line 664
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 668
    :cond_5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    if-eqz v8, :cond_6

    .line 669
    invoke-virtual {v0, v8}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 670
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 673
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-static {v0, v7}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    .line 677
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 679
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    :goto_1
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 685
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v13

    if-eqz v7, :cond_7

    .line 686
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    :goto_2
    move-object v15, v2

    const/16 v16, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v0, v5, v6, v5}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 687
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_3

    .line 689
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private handleAcceptSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V
    .locals 9

    .line 695
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptSlmRequest(): params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mRawHandle:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 698
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 699
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v4, "slm"

    invoke-interface {v2, v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v8, :cond_1

    const-string v1, "handleAcceptSlmRequest(): User agent not found!"

    .line 701
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 703
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 704
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 709
    :cond_1
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 710
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mUserAlias:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v5, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 713
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->startRequestAcceptSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, v1

    .line 714
    invoke-static {v5, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 715
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 716
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->endRequestAcceptSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 718
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x20b

    .line 719
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x39

    .line 720
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 721
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 722
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    const/16 v4, 0x20b

    .line 725
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 3

    .line 773
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int p0, v0

    .line 776
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 777
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 779
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptSlmResponse() sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleCancelFileTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 6

    .line 1227
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFileTransfer(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "handleCancelFileTransfer: params.mRawHandle is null!"

    .line 1230
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1232
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1233
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 1240
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1242
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mImdnMessageId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1243
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    const-string p0, "handleCancelFileTransfer(): pending message - postpone"

    .line 1247
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iput-object p1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    return-void

    .line 1252
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v3, :cond_5

    const-string v3, "handleCancelFileTransfer(): unknown session!"

    .line 1254
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 1256
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1257
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_4
    return-void

    .line 1263
    :cond_5
    iget-object v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v1, :cond_6

    const-string p0, "handleCancelFileTransfer(): cancel already in progress!"

    .line 1264
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1268
    :cond_6
    iput-object p1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1269
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V

    return-void
.end method

.method private handleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 5

    .line 1320
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1321
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1323
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCancelResponse(): sessionHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v3, :cond_0

    const-string p0, "handleCancelResponse(): cannot find ftsession"

    .line 1329
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1333
    :cond_0
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 1334
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1335
    iget-object p0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    goto :goto_0

    :cond_1
    const-string p0, "handleCancelResponse(): no callback set"

    .line 1337
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleIncomingSlmFileNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 9

    .line 938
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIncomingSlmFileNotify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    const-string p0, "handleIncomingSlmFileNotify(): invalid notify"

    .line 942
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 946
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 947
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v1

    .line 948
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v2

    if-eqz v1, :cond_13

    if-nez v2, :cond_1

    goto/16 :goto_a

    .line 953
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "handleIncomingSlmFileNotify(): fileAttr is null"

    .line 955
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 959
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 960
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_3

    const-string p0, "handleIncomingSlmFileNotify(): User agent not found!"

    .line 962
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 966
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v6

    long-to-int v0, v6

    .line 967
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v6}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    .line 970
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 971
    iput-object p1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 972
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 976
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;-><init>()V

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 978
    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    .line 979
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->isLmm()Z

    move-result p1

    iput-boolean p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    .line 980
    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 984
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 985
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 987
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    const/4 p1, 0x0

    move v0, p1

    .line 988
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 989
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 992
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "participant has Wrong Uri."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 994
    :cond_4
    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 999
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1002
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1003
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1004
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1006
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 1007
    iget-object v4, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1008
    new-instance v4, Ljava/io/File;

    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1010
    new-instance v0, Ljava/io/File;

    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1012
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1013
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleIncomingSlmFileNotify(): failed to rename! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1016
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleIncomingSlmFileNotify(): file doesn\'t exist! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1022
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1023
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1025
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1026
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1029
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->start()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    .line 1030
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->end()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mEnd:I

    .line 1031
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->isPush()Z

    move-result v0

    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    .line 1034
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1035
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    .line 1037
    :goto_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1038
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1040
    :cond_a
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1041
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 1042
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    move v0, p1

    .line 1045
    :goto_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1046
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1048
    iget-object v3, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v7, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1052
    :cond_c
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_5
    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1054
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1055
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    .line 1059
    :cond_e
    :goto_6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    move v0, p1

    .line 1060
    :goto_7
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespacesLength()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1061
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1063
    iget-object v3, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    move v3, p1

    .line 1064
    :goto_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 1065
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1066
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1067
    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1073
    :cond_11
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIncomingSlmFileNotify(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    if-eqz p0, :cond_12

    .line 1076
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v6, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_9

    :cond_12
    const-string p0, "handleIncomingSlmFileNotify(): no listener!"

    .line 1078
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_13
    :goto_a
    const-string p0, "handleIncomingSlmFileNotify(): invalid data"

    .line 950
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleIncomingSlmMessageNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 11

    .line 795
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIncomingSlmMessageNotify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const-string p0, "handleIncomingSlmMessageNotify(): invalid notify!"

    .line 799
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 803
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;

    .line 805
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->msg()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v1

    .line 806
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v2

    if-eqz v1, :cond_15

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 812
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;-><init>()V

    .line 814
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    .line 815
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 816
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->userHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_2

    const-string p0, "handleIncomingSlmMessageNotify(): User agent not found!"

    .line 818
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 822
    :cond_2
    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    .line 823
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid sender uri, return. uri="

    if-nez v4, :cond_3

    .line 824
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 827
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    if-nez v4, :cond_4

    .line 829
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 832
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 833
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->isPublicAccountMsg()Z

    move-result v0

    iput-boolean v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    const/4 v0, 0x0

    move v4, v0

    .line 836
    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 837
    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 840
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->contentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 841
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->body()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-nez v4, :cond_6

    return-void

    .line 846
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->silenceSupported()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v4, :cond_7

    .line 848
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleIncomingSlmMessageNotify -> routing message"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->requestUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 850
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->pAssertedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 851
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->receiver()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 854
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 855
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 857
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 858
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    :cond_9
    const/4 v4, 0x0

    .line 862
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    goto :goto_1

    :cond_a
    move-object v5, v4

    :goto_1
    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 864
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    .line 867
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    if-eqz v6, :cond_b

    move v6, v0

    .line 869
    :goto_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 870
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 874
    :cond_b
    invoke-static {v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 875
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 876
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 878
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v5

    if-lez v5, :cond_d

    .line 879
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    move v5, v0

    .line 880
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 881
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 883
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imdn route: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v9, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v10, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 889
    :cond_d
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    move v5, v0

    .line 890
    :goto_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespacesLength()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 891
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 893
    iget-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v0

    .line 894
    :goto_6
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 895
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 896
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 897
    iget-object v9, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 904
    :cond_10
    iget-object v1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    const-string v5, ""

    .line 907
    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    const/4 v5, 0x1

    .line 908
    aget-object v1, v1, v5

    iput-object v1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 912
    :cond_11
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 913
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImExtensionHeaders(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 916
    :cond_12
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->isLmm()Z

    move-result p1

    iput-boolean p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    .line 917
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isChatbotParticipant()Z

    move-result p1

    iput-boolean p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsChatbotRole:Z

    if-eqz p1, :cond_13

    .line 919
    iget-object p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    if-eqz p1, :cond_13

    const-string/jumbo v1, "tk"

    .line 920
    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 921
    iget-object p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 924
    iget-object p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    .line 926
    :cond_13
    iput-boolean v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsTokenUsed:Z

    .line 928
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIncomingSlmMessageNotify(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    if-eqz p0, :cond_14

    .line 931
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v4, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_7

    :cond_14
    const-string p0, "handleIncomingSlmMessageNotify(): no listener!"

    .line 933
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :cond_15
    :goto_8
    const-string p0, "handleIncomingSlmMessageNotify(): invalid data."

    .line 808
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 1

    .line 1342
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1364
    :pswitch_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmSipResponseReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1360
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmLMMIncomingSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1352
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmProgress(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1348
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleIncomingSlmFileNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1344
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleIncomingSlmMessageNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4650
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleRejectSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V
    .locals 9

    .line 729
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectSlmRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mRawHandle:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 732
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 733
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v4, "slm"

    invoke-interface {v2, v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v8, :cond_1

    const-string v1, "handleRejectSlmRequest(): User agent not found!"

    .line 735
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 737
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 738
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 743
    :cond_1
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 744
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 747
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 748
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v2, :cond_3

    .line 749
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 750
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 752
    :cond_3
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 754
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->startRequestRejectSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, v1

    .line 755
    invoke-static {v5, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 756
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz p1, :cond_4

    .line 757
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getSipCode()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v5, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 759
    :cond_4
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 760
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->endRequestRejectSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 762
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 763
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x20c

    .line 764
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x3a

    .line 765
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 766
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    const/16 v4, 0x20c

    .line 768
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 3

    .line 784
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int p0, v0

    .line 787
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 788
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 790
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectSlmResponse() sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSendFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 481
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendFileRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 484
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v5, "slm"

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_1

    const-string v3, "handleSendMessageRequest(): UserAgent not found!"

    .line 486
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 488
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 489
    iput-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 494
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    .line 495
    iget v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 496
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    const/4 v3, 0x1

    .line 497
    iput-boolean v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    .line 498
    iget-wide v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    iput-wide v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    .line 499
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 502
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 505
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    const-string v6, ""

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v6

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 506
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 507
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v6

    :goto_2
    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 508
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 509
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v6

    :goto_3
    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 510
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 511
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 512
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 513
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 514
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 515
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    move-object/from16 v17, v6

    .line 516
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 519
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v16, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/ims/util/ImsUri;

    if-eqz v18, :cond_6

    .line 520
    invoke-virtual/range {v18 .. v18}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    goto :goto_5

    :cond_6
    move-object/from16 v18, v0

    move-object/from16 v0, v17

    :goto_5
    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 521
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 522
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 523
    iget-boolean v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 524
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addCopyControl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    add-int/lit8 v0, v16, 0x1

    .line 526
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v19

    aput v19, v6, v16

    move/from16 v16, v0

    move-object/from16 v0, v18

    goto :goto_4

    .line 528
    :cond_8
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 530
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 531
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 532
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 533
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 534
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSdpContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 535
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 536
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 538
    :cond_9
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 539
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 541
    :cond_a
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 543
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 544
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 545
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 546
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 547
    iget-wide v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    long-to-int v1, v6

    int-to-long v6, v1

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 548
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 550
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 551
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 552
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 553
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 555
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->startFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 556
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 557
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 558
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->endFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 560
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->startRequestSendSlmFile(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 561
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 562
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 563
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 564
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 565
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->endRequestSendSlmFile(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 567
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 568
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x209

    .line 569
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x32

    .line 570
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 571
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    const/16 v1, 0x209

    move-object/from16 v0, p0

    .line 573
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 13

    .line 577
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendFileResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v1, :cond_0

    const-string p0, "handleSendFileResponse(): no StandaloneMessage found!"

    .line 582
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->slmMode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 589
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v2, :cond_1

    const-string p1, "handleSendFileResponse(): send pending cancel request"

    .line 590
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V

    return-void

    .line 594
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v12

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendFileResponse(): sessionHandle = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 599
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-direct {v4, v12, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 600
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 603
    :cond_2
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v4, :cond_3

    const-string p0, "request sendFile is failed!"

    .line 604
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 608
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v2, v4, :cond_5

    .line 610
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    iget-wide v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    const-wide/16 v9, 0x0

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 612
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 613
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    :cond_4
    const-string p0, "handleSendFileResponse(): no listener!"

    .line 616
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 317
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendMessageRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 320
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v5, "slm"

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_1

    const-string v3, "handleSendMessageRequest(): UserAgent not found!"

    .line 322
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 324
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 329
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    .line 330
    iget v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    iput v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 331
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    iput-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 332
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 334
    iget-boolean v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    iput-boolean v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIsChatbotMessage:Z

    .line 336
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "charset="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "handleSendMessageRequest(): missed charset, use utf8!"

    .line 337
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";charset=UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    .line 341
    :cond_2
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 344
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 346
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mUserAlias:Ljava/lang/String;

    const-string v7, ""

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v7

    :goto_0
    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 347
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v7

    :goto_1
    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 348
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v7

    :goto_2
    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 349
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 350
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    move-object v11, v7

    :goto_3
    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 351
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_7
    move-object v12, v7

    :goto_4
    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 352
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamDate()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_8
    move-object v13, v7

    :goto_5
    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 353
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 354
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v15}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v15

    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v15

    .line 355
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move-object/from16 v16, v7

    .line 356
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    move-object/from16 v17, v5

    .line 357
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 360
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v18, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/ims/util/ImsUri;

    if-eqz v19, :cond_9

    .line 361
    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    goto :goto_7

    :cond_9
    move-object/from16 v19, v0

    move-object/from16 v0, v16

    :goto_7
    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 362
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 363
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 364
    iget-boolean v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .line 365
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addCopyControl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    add-int/lit8 v0, v18, 0x1

    .line 367
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v20

    aput v20, v4, v18

    move/from16 v18, v0

    move-object/from16 v0, v19

    goto :goto_6

    .line 370
    :cond_b
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 372
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 373
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 374
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 375
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 376
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 378
    :cond_c
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 379
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 381
    :cond_d
    iget-boolean v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsChatbotParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 382
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 384
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->startReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 385
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamFrom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 386
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 387
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamDate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 388
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->endReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 390
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 391
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 392
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v9, :cond_e

    .line 393
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 395
    :cond_e
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 396
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 398
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, -0x1

    .line 401
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    const/4 v12, 0x1

    if-eqz v11, :cond_10

    const-string v10, "maap"

    .line 402
    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    const-string v11, "<http://www.gsma.com/rcs/maap/>"

    .line 403
    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    const-string v13, "Traffic-Type"

    .line 404
    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 405
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 407
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 408
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 409
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 410
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    new-array v14, v12, [I

    const/4 v15, 0x0

    aput v13, v14, v15

    .line 413
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    .line 415
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 416
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 417
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 418
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 419
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v11, v10, [I

    :goto_8
    if-ge v15, v10, :cond_f

    .line 423
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 425
    :cond_f
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v10

    .line 428
    :cond_10
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 429
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 430
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 431
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 432
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addIsPublicAccountMsg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 433
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 434
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 435
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 437
    :cond_11
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 439
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->startRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 440
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 441
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 442
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 443
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 444
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 445
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->endRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 447
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 448
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x208

    .line 449
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x31

    .line 450
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 451
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    const/16 v1, 0x208

    move-object/from16 v0, p0

    .line 454
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 5

    .line 458
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v1, :cond_0

    const-string p0, "no message found!"

    .line 463
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->slmMode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 467
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 468
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendMessageResponse(): sessionHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v3, v4, :cond_1

    const-string v3, "request sendMessage is failed!"

    .line 471
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v3, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 473
    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    return-void

    .line 477
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSlmLMMIncomingSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 11

    .line 1186
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSlmLMMIncomingSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    const-string p0, "handleSlmLMMIncomingSession(): invalid notify"

    .line 1190
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1194
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;

    .line 1196
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1197
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->userHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v2, :cond_1

    const-string p0, "handleSlmLMMIncomingSession(): UserAgent not found."

    .line 1200
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1205
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;-><init>()V

    .line 1207
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->sessionHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1208
    iput-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1209
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->sender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1210
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->userAlias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    .line 1211
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1212
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->isGroup()Z

    move-result p1

    iput-boolean p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mIsGroup:Z

    .line 1214
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {p1, v4, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1215
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1216
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1220
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSlmLMMIncomingSession(): Empty registrants, reject handle="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    const/4 v6, 0x0

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v9, 0x0

    .line 1222
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    :goto_0
    return-void
.end method

.method private handleSlmProgress(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 13

    .line 1084
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    .line 1085
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSlmProgress(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1089
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;

    .line 1091
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSlmProgress(): total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->total()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transferred = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->transferred()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", imdnMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1095
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->state()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v10

    if-nez v1, :cond_1

    const-string p0, "handleSlmProgress(): no StandaloneMessage found!"

    .line 1098
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1101
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v10, v2, :cond_2

    .line 1102
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_2
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    .line 1105
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v11

    .line 1106
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->total()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->transferred()J

    move-result-wide v8

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1108
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v12, v2, v12}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1109
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1110
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    :cond_3
    const-string p0, "handleSlmProgress(): no listener!"

    .line 1112
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1115
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    invoke-static {p1, v12}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1116
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v10, v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v2, :cond_6

    .line 1117
    :cond_5
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v2, p1, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1118
    iput-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    :cond_6
    :goto_0
    return-void
.end method

.method private handleSlmSipResponseReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 14

    .line 1124
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HandleSlmSipResponseReceived() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    const-string p0, "handlSlmSipResponseReceived(): invalid notify"

    .line 1127
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1131
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;

    .line 1132
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-eqz v1, :cond_8

    .line 1135
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v4, v5, :cond_4

    .line 1136
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v13

    .line 1138
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    iget-wide v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    .line 1139
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v4, :cond_1

    iget-wide v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x0

    .line 1140
    :goto_0
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    if-ne p1, v4, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    :goto_1
    move-object v12, p1

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1143
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1144
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_2

    :cond_3
    const-string p1, "handleSlmSipResponseReceived(): no listener!"

    .line 1147
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1150
    :cond_4
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v4, v5, :cond_5

    if-nez v2, :cond_5

    .line 1151
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSlmSipResponseReceived(), result= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->passertedId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1154
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1155
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1156
    :cond_5
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v4, v5, :cond_7

    if-eqz v2, :cond_7

    .line 1157
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v13

    .line 1158
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v4, :cond_9

    .line 1159
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1162
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1163
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1165
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_3

    :cond_6
    const-string p0, "handlSlmSipResponseReceived(): no listener!"

    .line 1167
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    if-ne v4, v5, :cond_9

    if-nez v2, :cond_9

    .line 1171
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1172
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v4, :cond_9

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSlmSipResponseReceived(): SipResponse is not 200 OK, result= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v2, p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1175
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1176
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1180
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSlmSipResponseReceived(): no StandaloneMessage found!, ImdnMessageId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SessionHandle : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1180
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method private parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1378
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseEmailOverSlm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1380
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->couldBeEmailGateway(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "parseEmailOverSlm: No email gateway"

    .line 1381
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string p0, "( /)|( )"

    const/4 p1, 0x2

    .line 1385
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1387
    array-length p2, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_1

    aget-object v3, p0, v2

    .line 1388
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEmailOverSlm: part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    array-length p2, p0

    if-ge p2, p1, :cond_2

    .line 1392
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "parseEmailOverSlm: message type is not email"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1396
    :cond_2
    aget-object p1, p0, v0

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipUtils;->validateEmailAddressFormat(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1397
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "parseEmailOverSlm: email type message"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3
    return-object v1
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 1415
    invoke-static {p1, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1416
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V
    .locals 8

    .line 1273
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCancelRequestToStack(): session handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1276
    iget v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v7, :cond_1

    const-string v1, "sendCancelRequestToStack(): UserAgent not found."

    .line 1278
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1280
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1282
    iput-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 1287
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-nez v1, :cond_2

    const-string p0, "sendCancelRequestToStack(): null reject params!"

    .line 1289
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1293
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 1295
    :goto_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1296
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1299
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1300
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1301
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1302
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1304
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1305
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1306
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1307
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1308
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1310
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1311
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x20a

    .line 1312
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x2f

    .line 1313
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1314
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x20a

    .line 1316
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    if-nez p5, :cond_0

    .line 1371
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1374
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method


# virtual methods
.method public acceptFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 1

    const/4 v0, 0x2

    .line 223
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V
    .locals 1

    const/4 v0, 0x7

    .line 268
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    const/4 v0, 0x3

    .line 233
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 312
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    goto :goto_0

    .line 293
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V

    goto :goto_0

    .line 303
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleCancelFileTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 296
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    goto :goto_0

    .line 290
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    const/4 v0, 0x4

    .line 228
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V
    .locals 1

    const/16 v0, 0x8

    .line 273
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 1

    const/4 v0, 0x5

    .line 218
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 203
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 208
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSlmIncomingMessage(Landroid/os/Handler;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSlmTransferProgress(Landroid/os/Handler;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
