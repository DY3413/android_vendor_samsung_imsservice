.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
.super Ljava/lang/Object;
.source "ParamOMAresponseforBufDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;-><init>(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fgetmOMASyncEventType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fgetmOMASyncEventType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveInitialSyncStatus(I)V

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    return-object p0
.end method

.method public setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)V

    return-object p0
.end method

.method public setAllPayloads(Ljava/util/List;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;)",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/util/List;)V

    return-object p0
.end method

.method public setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmBufferDbParam(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-object p0
.end method

.method public setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmBufferDbParamList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-object p0
.end method

.method public setBulkResponseList(Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmBulkResponseList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)V

    return-object p0
.end method

.method public setByte([B)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmDataString(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[B)V

    return-object p0
.end method

.method public setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmSearchCursor(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmLine(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmStoreClient(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-object p0
.end method

.method public setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmNotificaitonList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V

    return-object p0
.end method

.method public setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmOMASyncEventType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    return-object p0
.end method

.method public setObject(Lcom/sec/internal/omanetapi/nms/data/Object;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    return-object p0
.end method

.method public setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmObjectList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/ObjectList;)V

    return-object p0
.end method

.method public setPayloadUrl(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmPayLoadUrl(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReasonPhrase(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmReasonPhrase(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReference(Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmReference(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Reference;)V

    return-object p0
.end method

.method public setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-object p0
.end method

.method public setVvmFolders(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmVvmFolders(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)V

    return-object p0
.end method

.method public setVvmServiceProfile(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmVvmServiceProfile(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)V

    return-object p0
.end method
