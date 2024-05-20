.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMessageAttributeInterface;


# instance fields
.field private mAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageAttributeRegistration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 21
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 27
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 28
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/AttributeList;-><init>()V

    .line 29
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    return-object v0
.end method

.method public setBCC([Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 103
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 104
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCC([Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 122
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 123
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setClientCorrelator([Ljava/lang/String;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CLIENT$CORRELATOR"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 274
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 275
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentDuration([Ljava/lang/String;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$DURATION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 490
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 491
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentType([Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 292
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 293
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setConversationId([Ljava/lang/String;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONVERSATION$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 311
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 312
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCpmGroup([Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$CPM$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 255
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 256
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDate([Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 46
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 47
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDirection([Ljava/lang/String;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 141
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 142
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionOriginalMessageID([Ljava/lang/String;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 370
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 371
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionOriginalTo([Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 390
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 391
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionStatus([Ljava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$STATUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 331
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 332
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 334
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionType([Ljava/lang/String;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 350
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 351
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 353
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEmailAddress([Ljava/lang/String;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EMAILADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 510
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 511
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFrom([Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 65
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 66
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGreetingType([Ljava/lang/String;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$X$CNS$GREETING$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 470
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 471
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageContext([Ljava/lang/String;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 160
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 161
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageId([Ljava/lang/String;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 217
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 218
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMimeVersion([Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MIME$VERSION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 236
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 237
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNUT([Ljava/lang/String;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$NUT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 547
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 548
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOldPwd([Ljava/lang/String;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$OLD$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 450
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 451
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOpenGroup([Ljava/lang/String;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$OPEN$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 198
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 199
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPwd([Ljava/lang/String;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 430
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 431
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReportRequested([Ljava/lang/String;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$REPORT$REQUESTED"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 410
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 411
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSubject([Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 179
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 180
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTo([Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 84
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 85
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tLanguage([Ljava/lang/String;)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$LANGUAGE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 564
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 565
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 566
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 568
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setVVMOn([Ljava/lang/String;)V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$VVMOn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 529
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 530
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
