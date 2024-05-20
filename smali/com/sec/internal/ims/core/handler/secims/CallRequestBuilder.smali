.class public Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;
.super Ljava/lang/Object;
.source "CallRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallRequestBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeAcceptCallTransfer(IIZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 1350
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1353
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1354
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    .line 1357
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->startRequestAcceptTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p1

    .line 1358
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1359
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1360
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addAccept(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-lez p3, :cond_2

    if-eq p4, v2, :cond_1

    .line 1364
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addReasonPhrase(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p0, p3

    .line 1366
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addStatusCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1369
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->endRequestAcceptTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1372
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd5

    .line 1373
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x14

    .line 1374
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1375
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1376
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1378
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeAnswerCall(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 639
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 642
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v1

    .line 646
    :goto_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->startRequestAcceptCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 647
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 648
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p3, v1, :cond_1

    .line 651
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addCmcCallTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 654
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->endRequestAcceptCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 655
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xcd

    .line 656
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x10

    .line 657
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 658
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 660
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 662
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makeCancelTransferCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1183
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1185
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->startRequestCancelTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1186
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1187
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1188
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->endRequestCancelTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1190
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe3

    .line 1191
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x1d

    .line 1192
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1193
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1195
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1197
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeClearAllCallInternal(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 273
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 275
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->startRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 276
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 277
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->endRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 279
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xf1

    .line 280
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x72

    .line 281
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 282
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 283
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 285
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeConference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 917
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 926
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    if-eqz v2, :cond_2

    .line 931
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    if-eqz v4, :cond_3

    .line 936
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v11

    :goto_3
    if-eqz v5, :cond_4

    .line 941
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    if-eqz v6, :cond_5

    .line 946
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_5

    :cond_5
    move v6, v11

    :goto_5
    if-eqz v7, :cond_6

    .line 951
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_6

    :cond_6
    move v7, v11

    :goto_6
    if-eqz v8, :cond_7

    .line 956
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_7

    :cond_7
    move v8, v11

    .line 959
    :goto_7
    array-length v12, v3

    .line 960
    new-array v13, v12, [I

    :goto_8
    if-ge v10, v12, :cond_8

    .line 962
    aget-object v14, v3, v10

    invoke-virtual {v9, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 965
    :cond_8
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 967
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v8, v11, :cond_9

    .line 970
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v7, v11, :cond_a

    .line 974
    invoke-static {v9, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v5, v11, :cond_b

    .line 978
    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v6, v11, :cond_c

    .line 982
    invoke-static {v9, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v4, v11, :cond_d

    .line 986
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 989
    :cond_d
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v11, :cond_e

    .line 992
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v1, v11, :cond_f

    .line 996
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    const/4 v1, 0x1

    .line 999
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p2

    .line 1000
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p11

    .line 1001
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v0, v11, :cond_10

    .line 1004
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move v0, p0

    int-to-long v0, v0

    .line 1007
    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1008
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1010
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xd1

    .line 1011
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1e

    .line 1012
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1013
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1015
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1017
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeEndCall(IILcom/sec/internal/constants/ims/SipReason;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 6

    .line 591
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v0, -0x1

    if-eqz p2, :cond_4

    .line 596
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 598
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 602
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getExtensions()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 603
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getExtensions()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 604
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v3

    .line 605
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->createExtensionVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    .line 608
    :goto_1
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->startEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 609
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->isLocalRelease()Z

    move-result v4

    invoke-static {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addIsLocalRelease(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 610
    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addProtocol(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 611
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p2

    int-to-long v4, p2

    invoke-static {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addCause(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v2, v0, :cond_2

    .line 613
    invoke-static {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq v3, v0, :cond_3

    .line 616
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 618
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->endEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v0

    .line 621
    :goto_2
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->startRequestEndCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 622
    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v0, :cond_5

    .line 624
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->addEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 626
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->endRequestEndCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 627
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xca

    .line 628
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0xe

    .line 629
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 630
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 632
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 634
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makeExtendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    .line 1026
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 1035
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    if-eqz v2, :cond_2

    .line 1040
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    if-eqz v4, :cond_3

    .line 1045
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v11

    :goto_3
    if-eqz v5, :cond_4

    .line 1050
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    if-eqz v6, :cond_5

    .line 1055
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_5

    :cond_5
    move v6, v11

    :goto_5
    if-eqz v7, :cond_6

    .line 1060
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_6

    :cond_6
    move v7, v11

    :goto_6
    if-eqz v8, :cond_7

    .line 1065
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_7

    :cond_7
    move v8, v11

    .line 1068
    :goto_7
    array-length v12, v3

    .line 1069
    new-array v13, v12, [I

    move v14, v10

    :goto_8
    if-ge v14, v12, :cond_8

    .line 1071
    aget-object v15, v3, v14

    invoke-virtual {v9, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1074
    :cond_8
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    const/4 v12, 0x1

    new-array v13, v12, [I

    aput p6, v13, v10

    .line 1076
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createSessionIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v10

    .line 1080
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v8, v11, :cond_9

    .line 1083
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v7, v11, :cond_a

    .line 1087
    invoke-static {v9, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v5, v11, :cond_b

    .line 1091
    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v6, v11, :cond_c

    .line 1095
    invoke-static {v9, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v4, v11, :cond_d

    .line 1099
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1102
    :cond_d
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1103
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v11, :cond_e

    .line 1106
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v1, v11, :cond_f

    .line 1110
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1113
    :cond_f
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p2

    .line 1114
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p12

    .line 1115
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v0, v11, :cond_10

    .line 1118
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move/from16 v0, p0

    int-to-long v0, v0

    .line 1121
    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1122
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1124
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xde

    .line 1125
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1e

    .line 1126
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1127
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1129
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1131
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeHandleCmcCsfb(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1687
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1689
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->startRequestHandleCmcCsfb(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1690
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1691
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1692
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->endRequestHandleCmcCsfb(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1694
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xee

    .line 1695
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x5b

    .line 1696
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1697
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1699
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1701
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeHandleDtmf(IIIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1383
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1385
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->startRequestHandleDtmf(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1386
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1387
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 1388
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p3

    .line 1389
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p4

    .line 1390
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addOperation(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1391
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->endRequestHandleDtmf(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1393
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xcf

    .line 1394
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x5f

    .line 1395
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1396
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1398
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1400
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeHoldCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 666
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdCall: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 670
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->startRequestHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 671
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 672
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 673
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->endRequestHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 675
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xcb

    .line 676
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x11

    .line 677
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 678
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 680
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 682
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeHoldVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 706
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 708
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->startRequestHoldVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 709
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 710
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 711
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->endRequestHoldVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 713
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdb

    .line 714
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x19

    .line 715
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 716
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 718
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 720
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeMakeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p17

    .line 405
    new-instance v11, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v13, -0x1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    if-eqz p8, :cond_6

    .line 421
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 422
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    goto :goto_2

    :cond_2
    move v14, v13

    .line 426
    :goto_2
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 427
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    goto :goto_3

    :cond_3
    move v15, v13

    .line 430
    :goto_3
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v14, v13, :cond_4

    .line 432
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-eq v15, v13, :cond_5

    .line 436
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 438
    :cond_5
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v14

    move-object/from16 v15, p16

    goto :goto_4

    :cond_6
    move-object/from16 v15, p16

    move v14, v13

    .line 440
    :goto_4
    invoke-static {v15, v11}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->prepareComposerData(Landroid/os/Bundle;Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    if-eqz v7, :cond_8

    .line 443
    sget-object v13, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "additional header present"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {v11, v7}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v12

    .line 445
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [I

    .line 447
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v17, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v19, v17, 0x1

    .line 448
    aput v18, v13, v17

    move/from16 v17, v19

    goto :goto_5

    .line 450
    :cond_7
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    goto :goto_6

    :cond_8
    const/4 v12, -0x1

    :goto_6
    if-eqz v7, :cond_9

    .line 454
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 455
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 456
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    goto :goto_7

    :cond_9
    const/4 v7, -0x1

    :goto_7
    const/4 v12, 0x1

    if-eqz v4, :cond_a

    .line 461
    invoke-virtual {v11, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    new-array v13, v12, [I

    const/16 v16, 0x0

    aput v4, v13, v16

    .line 464
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->createEcscfListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    goto :goto_8

    :cond_a
    const/4 v4, -0x1

    :goto_8
    if-eqz v5, :cond_b

    .line 469
    invoke-virtual {v11, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_9

    :cond_b
    const/4 v5, -0x1

    :goto_9
    if-eqz v2, :cond_d

    .line 473
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_d

    const-string v13, "<PhotoRing>"

    .line 474
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 475
    sget-object v13, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "PhotoRing is set"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_a

    .line 479
    :cond_c
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, -0x1

    :goto_a
    if-eqz v8, :cond_e

    .line 484
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_e

    .line 485
    invoke-virtual {v11, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_b

    :cond_e
    const/4 v8, -0x1

    :goto_b
    if-eqz v3, :cond_f

    .line 489
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_f

    .line 490
    invoke-virtual {v11, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_c

    :cond_f
    const/4 v3, -0x1

    :goto_c
    if-eqz v6, :cond_10

    .line 494
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_10

    .line 495
    invoke-virtual {v11, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_d

    :cond_10
    const/4 v6, -0x1

    :goto_d
    if-eqz v9, :cond_12

    .line 499
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_12

    .line 500
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v12

    new-array v13, v12, [I

    move/from16 p2, v15

    .line 501
    sget-object v15, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    move/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "p2p.size():"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v12, :cond_11

    .line 503
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v11, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    aput v7, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 505
    :cond_11
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->createP2pListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    goto :goto_f

    :cond_12
    move/from16 v18, v6

    move/from16 v17, v7

    move/from16 p2, v15

    const/4 v6, -0x1

    :goto_f
    if-eqz v10, :cond_13

    .line 509
    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_13

    .line 510
    invoke-virtual {v11, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_10

    :cond_13
    const/4 v7, -0x1

    .line 513
    :goto_10
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->startRequestMakeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move/from16 v9, p0

    int-to-long v9, v9

    .line 514
    invoke-static {v11, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v9, -0x1

    if-eq v0, v9, :cond_14

    .line 517
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addPeeruri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_14
    move/from16 v0, p3

    .line 520
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v0, 0x1

    .line 521
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 522
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v0, 0x0

    .line 523
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDirection(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v0, p13

    .line 524
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addIsLteEpsOnlyAttached(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v1, v9, :cond_15

    .line 527
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_15
    if-eq v14, v9, :cond_16

    .line 531
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_16
    if-eq v4, v9, :cond_17

    .line 535
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addEcscfList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_17
    move/from16 v0, p7

    .line 538
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addEcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v5, v9, :cond_18

    .line 541
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCli(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_18
    if-eq v2, v9, :cond_19

    .line 545
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDispName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_19
    if-eq v8, v9, :cond_1a

    .line 549
    invoke-static {v11, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAlertInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1a
    move/from16 v0, p15

    .line 552
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCmcBoundSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v6, v9, :cond_1b

    .line 554
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addP2pList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1b
    if-eq v3, v9, :cond_1c

    .line 558
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDialedNumber(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1c
    move/from16 v6, v18

    if-eq v6, v9, :cond_1d

    .line 562
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addPEmergencyInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1d
    move/from16 v0, v17

    if-eq v0, v9, :cond_1e

    .line 566
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAdditionalSipHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1e
    move/from16 v0, p2

    if-eq v0, v9, :cond_1f

    .line 570
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1f
    if-eq v7, v9, :cond_20

    .line 574
    invoke-static {v11, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addReplaceCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_20
    move/from16 v0, p18

    .line 576
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCmcEdCallSlot(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 578
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->endRequestMakeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 579
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xc9

    .line 580
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0xd

    .line 581
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 582
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 584
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 586
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v11, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeMergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    .line 790
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 799
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    if-eqz v2, :cond_2

    .line 804
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    if-eqz v3, :cond_3

    .line 809
    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v11

    :goto_3
    if-eqz v4, :cond_4

    .line 814
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v11

    :goto_4
    if-eqz v5, :cond_5

    .line 819
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_5

    :cond_5
    move v5, v11

    :goto_5
    if-eqz v6, :cond_6

    .line 824
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_6

    :cond_6
    move v6, v11

    :goto_6
    if-eqz v7, :cond_7

    .line 829
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_7

    :cond_7
    move v7, v11

    :goto_7
    const/4 v12, 0x2

    new-array v12, v12, [I

    aput p2, v12, v10

    const/4 v13, 0x1

    aput p1, v12, v13

    .line 833
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createSessionIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    if-eqz v8, :cond_9

    .line 840
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v13

    .line 841
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [I

    .line 843
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v15, v10

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v17, v15, 0x1

    .line 844
    aput v16, v14, v15

    move/from16 v15, v17

    goto :goto_8

    .line 846
    :cond_8
    invoke-static {v9, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    goto :goto_9

    :cond_9
    move v13, v11

    :goto_9
    if-eqz v8, :cond_a

    .line 851
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 852
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 853
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    goto :goto_a

    :cond_a
    move v8, v11

    .line 856
    :goto_a
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v8, v11, :cond_b

    .line 858
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addExtraHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v7, v11, :cond_c

    .line 862
    invoke-static {v9, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v6, v11, :cond_d

    .line 866
    invoke-static {v9, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v4, v11, :cond_e

    .line 870
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v5, v11, :cond_f

    .line 874
    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v3, v11, :cond_10

    .line 878
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 881
    :cond_10
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v11, :cond_11

    .line 884
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_11
    if-eq v1, v11, :cond_12

    .line 888
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 891
    :cond_12
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p4

    .line 892
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p12

    .line 893
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v0, v11, :cond_13

    .line 896
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_13
    move/from16 v0, p0

    int-to-long v0, v0

    .line 899
    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 900
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 902
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xd1

    .line 903
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1e

    .line 904
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 905
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 907
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 909
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeModifyCallType(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1427
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1429
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->startRequestModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1430
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1431
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addOldType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1432
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addNewType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1433
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->endRequestModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1435
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd8

    .line 1436
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x16

    .line 1437
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1438
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1440
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1442
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeModifyVideoQuality(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1447
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1449
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->startRequestModifyVideoQuality(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1450
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1451
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addOldQual(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1452
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addNewQual(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1453
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->endRequestModifyVideoQuality(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1455
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe9

    .line 1456
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x25

    .line 1457
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1458
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1460
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1462
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeProgressIncomingCall(IILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 1706
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 1709
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 1710
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 1712
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    .line 1713
    aput v5, v3, v0

    move v0, v6

    goto :goto_0

    .line 1715
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding extra headers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 1720
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1721
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1722
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v1

    .line 1724
    :goto_2
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->startRequestProgressIncomingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 1725
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_3

    .line 1727
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1729
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->endRequestProgressIncomingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1730
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xda

    .line 1731
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x18

    .line 1732
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1733
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1735
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1737
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makePublishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1304
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 1308
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1313
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 1318
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_2

    :cond_2
    move p3, v1

    .line 1321
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->startRequestPublishDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p0

    .line 1322
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_3

    .line 1325
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addDispName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_3
    if-eq p1, v1, :cond_4

    .line 1329
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-eq p3, v1, :cond_5

    .line 1333
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addXmlBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1336
    :cond_5
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addExpireTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1338
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->endRequestPublishDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1339
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe4

    .line 1340
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x20

    .line 1341
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1342
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1343
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1345
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makePullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 1203
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v6, -0x1

    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 1212
    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    if-eqz v2, :cond_2

    .line 1217
    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v6

    .line 1221
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getMdmnExtNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1222
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getMdmnExtNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v6

    .line 1226
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1227
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_4

    :cond_4
    move v8, v6

    .line 1231
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1232
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_5

    :cond_5
    move v9, v6

    .line 1236
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1237
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    goto :goto_6

    :cond_6
    move v10, v6

    :goto_6
    if-eqz v3, :cond_8

    .line 1241
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 1242
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [I

    .line 1243
    sget-object v13, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "p2p.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-ge v5, v11, :cond_7

    .line 1245
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v4, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    aput v13, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1247
    :cond_7
    invoke-static {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->createP2pListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_8

    :cond_8
    move v3, v6

    .line 1250
    :goto_8
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->startRequestPullingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v7, v6, :cond_9

    .line 1253
    invoke-static {v4, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addMdmnExtNumber(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1256
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getVideoDirection()I

    move-result v5

    int-to-long v11, v5

    invoke-static {v4, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addVideoDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1257
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getAudioDirection()I

    move-result v5

    int-to-long v11, v5

    invoke-static {v4, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addAudioDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v5, 0x1

    .line 1258
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1259
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v9, v6, :cond_a

    .line 1262
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addRemoteTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v10, v6, :cond_b

    .line 1266
    invoke-static {v4, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addLocalTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v8, v6, :cond_c

    .line 1270
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v2, v6, :cond_d

    .line 1274
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v1, v6, :cond_e

    .line 1278
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addTargetUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v0, v6, :cond_f

    .line 1282
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addPullingUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v3, v6, :cond_10

    .line 1286
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addP2pList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1288
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getCallSlot()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCmcEdCallSlot(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v0, p0

    int-to-long v0, v0

    .line 1290
    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1291
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addIsVideoPortZero(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1292
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->endRequestPullingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1295
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xe0

    .line 1296
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1c

    .line 1297
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1298
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1299
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1301
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v4, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeRejectModifyCallType(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1497
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1499
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->startRequestRejectModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1500
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1501
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1502
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->endRequestRejectModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1504
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdd

    .line 1505
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x1b

    .line 1506
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1507
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1509
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1511
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeReplyModifyCallType(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1467
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p4, :cond_0

    .line 1471
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v1

    .line 1474
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->startRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p0

    .line 1475
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1476
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1477
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCurType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1478
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addRepType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p4, v1, :cond_1

    .line 1481
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCmcCallTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1483
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->endRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1485
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd9

    .line 1486
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x17

    .line 1487
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1488
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1490
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1492
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeResumeCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 687
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 689
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeCall;->startRequestResumeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 690
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 691
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 692
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeCall;->endRequestResumeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 694
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xcc

    .line 695
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x12

    .line 696
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 697
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 699
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 701
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeResumeVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 724
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVideo: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 728
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->startRequestResumeVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 729
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 730
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 731
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->endRequestResumeVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 733
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdc

    .line 734
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x1a

    .line 735
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 736
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 738
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 740
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1596
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSendCmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_4

    .line 1605
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1606
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1610
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1611
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v1

    .line 1614
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_2

    .line 1616
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p2, v1, :cond_3

    .line 1619
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1621
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    .line 1624
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->startRequestSendCmcInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v1, :cond_5

    .line 1627
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    int-to-long p1, p1

    .line 1630
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1631
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1632
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->endRequestSendCmcInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1635
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf3

    .line 1636
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x48

    .line 1637
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1638
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1639
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1641
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1548
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p4, :cond_4

    .line 1554
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1555
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1559
    :goto_0
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1560
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_1

    :cond_1
    move p4, v1

    .line 1563
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_2

    .line 1565
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p4, v1, :cond_3

    .line 1568
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1570
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p4

    goto :goto_2

    :cond_4
    move p4, v1

    .line 1573
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->startRequestSendInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p4, v1, :cond_5

    .line 1576
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    int-to-long p3, p3

    .line 1579
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addUssdType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1580
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p1, p1

    .line 1581
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1582
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1583
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->endRequestSendInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1586
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe5

    .line 1587
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x47

    .line 1588
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1589
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1590
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1592
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendText(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1405
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1407
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1408
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->startRequestSendText(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1409
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1410
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1411
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p3

    .line 1412
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addLen(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1413
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->endRequestSendText(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1415
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xea

    .line 1416
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x60

    .line 1417
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1418
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1420
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1422
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSetVideoCrtAudio(IIZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 210
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 212
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->startRequestSetVideoCrtAudio(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 213
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 214
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 215
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->addOn(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 216
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->endRequestSetVideoCrtAudio(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 218
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf5

    .line 219
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x76

    .line 220
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 221
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 223
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 225
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartCamera(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 744
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 749
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->startRequestStartCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 750
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 751
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 752
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addCamera(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 753
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->endRequestStartCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 755
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdf

    .line 756
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x42

    .line 757
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 758
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 760
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 762
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 292
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 295
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move-object v1, p7

    .line 296
    invoke-virtual {v0, p7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 300
    :goto_0
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v3, p15

    .line 301
    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 304
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->startRequestStartCmcRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move v3, p0

    int-to-long v3, v3

    .line 305
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p1

    int-to-long v3, v3

    .line 306
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p2

    int-to-long v3, v3

    .line 307
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioSource(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p3

    int-to-long v3, v3

    .line 308
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addOutputFormat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move-wide v3, p4

    .line 309
    invoke-static {v0, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addMaxFileSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p6

    int-to-long v3, v3

    .line 310
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addMaxDuration(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 311
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addOutputPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move v1, p8

    int-to-long v3, v1

    .line 312
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioEncodingBr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v1, p9

    int-to-long v3, v1

    .line 313
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioChannels(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v1, p10

    int-to-long v3, v1

    .line 314
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioSamplingRate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v1, p11

    int-to-long v3, v1

    .line 315
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioEncoder(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v1, p12

    int-to-long v3, v1

    .line 316
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addDurationInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move-wide/from16 v3, p13

    .line 317
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addFileSizeInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 318
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAuthor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 319
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->endRequestStartCmcRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 321
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0xf2

    .line 322
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v2, 0x73

    .line 323
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 324
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 326
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 328
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v2
.end method

.method static makeStartLocalRingBackTone(IIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 171
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 173
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->startRequestStartLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 174
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addStreamType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 175
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 176
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addVolume(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p3

    .line 177
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addToneType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 178
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->endRequestStartLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 180
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe7

    .line 181
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x69

    .line 182
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 183
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 185
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 187
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartRecord(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 230
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 237
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->startRequestStartRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 238
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 239
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 240
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addFilepath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 241
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->endRequestStartRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 243
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xef

    .line 244
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x70

    .line 245
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 246
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 248
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 250
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartVideoEarlyMedia(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1669
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1671
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->startRequestStartVideoEarlymedia(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1672
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1673
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1674
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->endRequestStartVideoEarlymedia(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1676
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xeb

    .line 1677
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x5a

    .line 1678
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1679
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1681
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1683
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStopCamera(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 766
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCamera: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 771
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->startRequestStopCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 772
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 773
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->endRequestStopCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 775
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xe2

    .line 776
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x43

    .line 777
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 778
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 780
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 782
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeStopLocalRingBackTone(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 192
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 194
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->startRequestStopLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 195
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 196
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->endRequestStopLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 198
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xe8

    .line 199
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x6a

    .line 200
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 201
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 203
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 205
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeStopRecord(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 255
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 257
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->startRequestStopRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 258
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 259
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 260
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->endRequestStopRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 262
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf0

    .line 263
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x71

    .line 264
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 265
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 267
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 269
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeTransferCall(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1158
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1160
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1161
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->startRequestTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1162
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1163
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1164
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addTargetUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-lez p3, :cond_0

    int-to-long p0, p3

    .line 1167
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addReplacingSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1169
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->endRequestTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1171
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd4

    .line 1172
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x13

    .line 1173
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1174
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1176
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1178
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateAudioInterface(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 151
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 153
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 154
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->startRequestUpdateAudioInterface(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 155
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 156
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 157
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->endRequestUpdateAudioInterface(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 159
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe1

    .line 160
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x46

    .line 161
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 162
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 164
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 166
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1516
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1519
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1520
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    .line 1523
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->startRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p4, v2, :cond_1

    .line 1526
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addReasonText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p3, p3

    .line 1529
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addCause(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1530
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addCodecType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1531
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addAction(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 1532
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1533
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->endRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1536
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xce

    .line 1537
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0xf

    .line 1538
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1539
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1540
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1542
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateCmcExtCallCount(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1645
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeUpdateCmcExtCallCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1650
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->startRequestUpdateCmcExtCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1652
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1653
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->addCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1655
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->endRequestUpdateCmcExtCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1658
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf4

    .line 1659
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x49

    .line 1660
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1661
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1662
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1664
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateConfCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 1136
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1138
    invoke-virtual {p0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    .line 1139
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->startRequestUpdateConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, p1

    .line 1140
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p2

    .line 1141
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addCmd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p3

    .line 1142
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addParticipantId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1143
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1144
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->endRequestUpdateConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1146
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xd7

    .line 1147
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x1f

    .line 1148
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1149
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1151
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1153
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method private static prepareComposerData(Landroid/os/Bundle;Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 10

    const/4 v0, -0x1

    if-eqz p0, :cond_d

    .line 339
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 342
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "importance"

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 343
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 344
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 345
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 346
    invoke-virtual {p1, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 347
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v7, v0

    goto :goto_2

    :sswitch_0
    const-string v9, "longitude"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_1
    const-string v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_2
    const-string v9, "radius"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_3
    const-string v9, "latitude"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_4
    const-string/jumbo v9, "subject"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v5, v8

    goto :goto_0

    :pswitch_1
    move v2, v8

    goto :goto_0

    :pswitch_2
    move v6, v8

    goto :goto_0

    :pswitch_3
    move v4, v8

    goto :goto_0

    :pswitch_4
    move v3, v8

    goto :goto_0

    .line 367
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->startComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v0, :cond_7

    .line 369
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addImage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    if-eq v3, v0, :cond_8

    .line 373
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-eq v4, v0, :cond_9

    .line 377
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addLatitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v5, v0, :cond_a

    .line 381
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addLongitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v6, v0, :cond_b

    .line 385
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addRadius(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 388
    :cond_b
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 390
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 389
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addImportance(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 393
    :cond_c
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->endComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    :cond_d
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_4
        -0x55d45394 -> :sswitch_3
        -0x37f1936e -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x83009af -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
