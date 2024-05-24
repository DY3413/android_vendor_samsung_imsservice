.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMessageAttributeInterface;


# instance fields
.field private final mAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageAttributeRegistration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    .line 19
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 26
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/AttributeList;-><init>()V

    .line 27
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    return-object v0
.end method

.method public setBCC([Ljava/lang/String;)V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 93
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 94
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCC([Ljava/lang/String;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 110
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 111
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChipList([Ljava/lang/String;)V
    .registers 4

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CHIPLIST"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 543
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 544
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 546
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentDuration([Ljava/lang/String;)V
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$DURATION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 440
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 442
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 443
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentType([Ljava/lang/String;)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 262
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 264
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 265
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setConversationId([Ljava/lang/String;)V
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONVERSATION$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 297
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 299
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 300
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCpmGroup([Ljava/lang/String;)V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$CPM$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 245
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 247
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 248
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDate([Ljava/lang/String;)V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 42
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 43
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDirection([Ljava/lang/String;)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 125
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 127
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 128
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionOriginalMessageID([Ljava/lang/String;)V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 350
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 352
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 353
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionOriginalTo([Ljava/lang/String;)V
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 368
    :cond_b
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

.method public setDispositionStatus([Ljava/lang/String;)V
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$STATUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 315
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 317
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 318
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionType([Ljava/lang/String;)V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 334
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 335
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEmailAddress([Ljava/lang/String;)V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EMAILADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 458
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 460
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 461
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtendedRCS([Ljava/lang/String;)V
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EXTENDED$RCS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 527
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 528
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFrom([Ljava/lang/String;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 59
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 60
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGreetingType([Ljava/lang/String;)V
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$X$CNS$GREETING$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 422
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 424
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 425
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 427
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageBody([Ljava/lang/String;)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGEBODY"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 213
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 214
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageContext([Ljava/lang/String;)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 142
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 144
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 145
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageId([Ljava/lang/String;)V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 193
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 195
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 196
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMimeVersion([Ljava/lang/String;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MIME$VERSION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 228
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 230
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 231
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNUT([Ljava/lang/String;)V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$NUT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 492
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 494
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 495
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOldPwd([Ljava/lang/String;)V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$OLD$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 404
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 406
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 407
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOpenGroup([Ljava/lang/String;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$OPEN$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 176
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 178
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 179
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPAssertedService([Ljava/lang/String;)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$P$ASSERTED$SERVICE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 283
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 284
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPwd([Ljava/lang/String;)V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 386
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 388
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 389
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSubject([Ljava/lang/String;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 159
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 161
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 162
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .registers 4

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 509
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 511
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 512
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTo([Ljava/lang/String;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 76
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 77
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTrafficType([Ljava/lang/String;)V
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TRAFFICTYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 559
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 560
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 562
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tEmail([Ljava/lang/String;)V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$EMAIL"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 625
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 627
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 628
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 630
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tLanguage([Ljava/lang/String;)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$LANGUAGE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 576
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 577
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 579
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tResourceURL([Ljava/lang/String;)V
    .registers 4

    .line 583
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$RES"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 591
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 593
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 594
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tSMS([Ljava/lang/String;)V
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$SMS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 608
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 610
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 611
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 613
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setVVMOn([Ljava/lang/String;)V
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$VVMOn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 475
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 477
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 478
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
