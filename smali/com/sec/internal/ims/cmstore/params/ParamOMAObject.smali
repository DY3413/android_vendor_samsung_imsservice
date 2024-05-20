.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
.super Ljava/lang/Object;
.source "ParamOMAObject.java"


# instance fields
.field public CONTENT_DURATION:Ljava/lang/String;

.field public CONTENT_TYPE:Ljava/lang/String;

.field public CONTRIBUTION_ID:Ljava/lang/String;

.field public CONVERSATION_ID:Ljava/lang/String;

.field public DATE:Ljava/lang/String;

.field public DIRECTION:Ljava/lang/String;

.field public DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

.field public DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

.field public DISPOSITION_STATUS:Ljava/lang/String;

.field public FROM:Ljava/lang/String;

.field public IMPORTANCE:Ljava/lang/String;

.field public IS_CPM_GROUP:Z

.field public IS_OPEN_GROUP:Z

.field public MESSAGE_ID:Ljava/lang/String;

.field public MULTIPARTCONTENTTYPE:Ljava/lang/String;

.field public PARTICIPATING_DEVICE:Ljava/lang/String;

.field public SENSITIVITY:Ljava/lang/String;

.field public SUBJECT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public TEXT_CONTENT:Ljava/lang/String;

.field public TO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public X_CNS_Greeting_Type:Ljava/lang/String;

.field public correlationId:Ljava/lang/String;

.field public correlationTag:Ljava/lang/String;

.field public lastModSeq:Ljava/lang/Long;

.field public mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

.field public mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

.field public mIsFromChangedObj:Z

.field public mIsGoforwardSync:Z

.field public mLine:Ljava/lang/String;

.field public mNomalizedOtherParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mObjectType:I

.field private mRawFromString:Ljava/lang/String;

.field public mReassembled:Z

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field public parentFolder:Ljava/net/URL;

.field public parentFolderPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

.field public payloadURL:Ljava/net/URL;

.field public resourceURL:Ljava/net/URL;

.field public sFlags:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZILjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    .line 65
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const/4 p5, 0x1

    .line 294
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 295
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    .line 296
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 297
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 298
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    if-eqz p2, :cond_0

    .line 300
    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 302
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 303
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    .line 304
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 305
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    .line 306
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    .line 307
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    const-string p2, "FT"

    .line 308
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0xb

    if-eqz p2, :cond_1

    const/16 p2, 0xc

    .line 309
    iput p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    :cond_1
    const-string p2, "CHAT"

    .line 310
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 311
    iput v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    :cond_2
    const-string p2, "GSO"

    .line 312
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x22

    .line 313
    iput p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 315
    :cond_3
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 317
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 318
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p3, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->message_time:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 319
    iget-object p3, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->direction:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 320
    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->reassembled:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string/jumbo p3, "true"

    .line 321
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move p5, v1

    .line 322
    :goto_1
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 323
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 324
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string p3, "In"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 325
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 326
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    array-length p3, p2

    move p4, v1

    :goto_2
    if-ge p4, p3, :cond_6

    aget-object p5, p2, p4

    .line 327
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object p5, p5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    invoke-static {p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 330
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 331
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    array-length p3, p2

    move p4, v1

    :goto_3
    if-ge p4, p3, :cond_6

    aget-object p5, p2, p4

    .line 332
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object p5, p5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    invoke-static {p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 335
    :cond_6
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object p1, p1, v1

    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 336
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content_type:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 337
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->rcsdata:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;

    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;->conversation_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 338
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;->contribution_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 339
    iget p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-eq v0, p1, :cond_7

    const/16 p2, 0xe

    if-ne p2, p1, :cond_8

    .line 341
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->updatePartcipantContentEmail()V

    .line 345
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getNormalizedParticipantsExcludeOwn()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class p4, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const/4 p4, 0x0

    .line 46
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 52
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    .line 66
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 75
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 76
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 115
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    .line 116
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    .line 117
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolder:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 118
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolderPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolderPath:Ljava/lang/String;

    .line 119
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 120
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 125
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->resourceURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 126
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->path:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    .line 127
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_1
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    .line 131
    :goto_0
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    .line 132
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 133
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->lastModSeq:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    .line 134
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    .line 135
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 136
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 137
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 139
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, v0

    .line 141
    :goto_1
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length p5, p4

    if-ge p3, p5, :cond_1b

    .line 142
    aget-object p4, p4, p3

    iget-object p5, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    if-eqz p5, :cond_1a

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-nez p4, :cond_2

    goto/16 :goto_5

    .line 146
    :cond_2
    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p4

    const-string v1, "$DATE"

    .line 147
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 146
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 148
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    goto/16 :goto_5

    .line 149
    :cond_3
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 150
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$IS$CPM$GROUP"

    .line 151
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 149
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const-string/jumbo p5, "yes"

    if-eqz p4, :cond_4

    .line 152
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    goto/16 :goto_5

    .line 153
    :cond_4
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v1

    const-string v2, "$IS$OPEN$GROUP"

    .line 154
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 155
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    goto/16 :goto_5

    .line 156
    :cond_5
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 157
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$DIRECTION"

    .line 158
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 156
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 159
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    goto/16 :goto_5

    .line 160
    :cond_6
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 161
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$FROM"

    .line 162
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 160
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 163
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 164
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    goto/16 :goto_5

    .line 165
    :cond_7
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 166
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$TO"

    .line 167
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 165
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 168
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz p4, :cond_1a

    move p4, v0

    .line 169
    :goto_2
    iget-object p5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p5, p5, p3

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v1, p5

    if-ge p4, v1, :cond_1a

    .line 170
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    aget-object p5, p5, p4

    invoke-static {p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 173
    :cond_8
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 174
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$CC"

    .line 175
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 173
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 176
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz p4, :cond_1a

    move p4, v0

    .line 177
    :goto_3
    iget-object p5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p5, p5, p3

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v1, p5

    if-ge p4, v1, :cond_1a

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    aget-object p5, p5, p4

    invoke-static {p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 181
    :cond_9
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 182
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$BCC"

    .line 183
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 181
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 184
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz p4, :cond_1a

    move p4, v0

    .line 185
    :goto_4
    iget-object p5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p5, p5, p3

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v1, p5

    if-ge p4, v1, :cond_1a

    .line 186
    aget-object p5, p5, p4

    invoke-static {p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 189
    :cond_a
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 190
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$TEXT$CONTENT"

    .line 191
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 189
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 192
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    goto/16 :goto_5

    .line 193
    :cond_b
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 194
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$SUBJECT"

    .line 195
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 193
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 196
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    goto/16 :goto_5

    .line 197
    :cond_c
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 198
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$CONVERSATION$ID"

    .line 199
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 197
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 200
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    goto/16 :goto_5

    .line 201
    :cond_d
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 202
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$CONTRIBUTION$ID"

    .line 203
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 201
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 204
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    goto/16 :goto_5

    .line 205
    :cond_e
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 206
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$DISPOSITION$STATUS"

    .line 207
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 205
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 208
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    goto/16 :goto_5

    .line 209
    :cond_f
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 210
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$DISPOSITION$ORIGINAL$TO"

    .line 211
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 209
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 212
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    goto/16 :goto_5

    .line 213
    :cond_10
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 214
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$DISPOSITION$ORIGINAL$MESSAGEID"

    .line 215
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 213
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_11

    .line 216
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    goto/16 :goto_5

    .line 217
    :cond_11
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 218
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$MULTIPARTCONTENTTYPE"

    .line 219
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 217
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 220
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    goto/16 :goto_5

    .line 221
    :cond_12
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 222
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$CONTENT$TYPE"

    .line 223
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 221
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 224
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    goto/16 :goto_5

    .line 225
    :cond_13
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 226
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$MESSAGE$ID"

    .line 227
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 225
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 228
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    goto/16 :goto_5

    .line 229
    :cond_14
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 230
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$CONTENT$DURATION"

    .line 231
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 229
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 232
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    goto/16 :goto_5

    .line 233
    :cond_15
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 234
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$PARTICIPATING$DEVICE"

    .line 235
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 233
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_16

    .line 236
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    goto/16 :goto_5

    .line 237
    :cond_16
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 238
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$X$CNS$GREETING$TYPE"

    .line 239
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 237
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_17

    .line 240
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    goto/16 :goto_5

    .line 241
    :cond_17
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 242
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$MESSAGE$CONTEXT"

    .line 243
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 241
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_18

    .line 244
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-direct {p0, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getMessageContextType(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_5

    .line 245
    :cond_18
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 246
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$IMPORTANCE"

    .line 247
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 245
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 248
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->importance:Ljava/lang/String;

    .line 249
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    goto :goto_5

    .line 250
    :cond_19
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 251
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v1, "$SENSITIVITY"

    .line 252
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 250
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1a

    .line 253
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v0

    iput-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->sensitivity:Ljava/lang/String;

    .line 254
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    :cond_1a
    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    .line 258
    :cond_1b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string p3, "Out"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 259
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_1c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCorrectShortCode()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 263
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->recalculateCorrelationTag()V

    :cond_1d
    const/16 p1, 0xb

    .line 266
    iget p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-eq p1, p2, :cond_1e

    const/16 p1, 0xe

    if-ne p1, p2, :cond_1f

    .line 268
    :cond_1e
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->updatePartcipantContentEmail()V

    .line 270
    :cond_1f
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getNormalizedParticipantsExcludeOwn()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    return-void
.end method

.method private getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .locals 5

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    if-eqz p1, :cond_8

    .line 82
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCloudActionPerFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const-string v1, "\\Seen"

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 88
    :goto_0
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 89
    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    if-le v3, v4, :cond_2

    move-object v0, p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_3
    :goto_2
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 98
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 99
    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 100
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_3

    .line 101
    :cond_4
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object p0, p0, v2

    const-string v4, "\\Deleted"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 102
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 104
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    if-le p0, v4, :cond_6

    move-object v0, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    .line 83
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const-string p1, "Null Flags"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getMessageContextType(Ljava/lang/String;)I
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getTypeUsingMessageContext(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getNormalizedParticipantsExcludeOwn()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private recalculateCorrelationTag()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isInvalidShortCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 375
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateSmsHashCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const-string v0, "recalculateCorrelationTag: "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updatePartcipantContentEmail()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 358
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMAConvertedObjectParam [mObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLine= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 385
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 387
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , mFlagList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DISPOSITION_STATUS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGoforwardSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", TEXT_CONTENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 389
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DIRECTION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MESSAGE_ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CONTENT_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", X_CNS_Greeting_Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReassembled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFromChangeObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNomalizedOtherParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SUBJECT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IS_CPM_GROUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IS_OPEN_GROUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Importance= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SENSITIVITY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
