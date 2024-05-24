.class Lcom/sec/internal/ims/translate/EucMessageTranslator$1;
.super Ljava/lang/Object;
.source "EucMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/translate/EucMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/translate/EucMessageTranslator;

.field final synthetic val$collector:Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

.field final synthetic val$fromHeader:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$ownIdentity:Ljava/lang/String;

.field final synthetic val$timeout:Ljava/lang/Long;

.field final synthetic val$type:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

.field final synthetic val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->this$0:Lcom/sec/internal/ims/translate/EucMessageTranslator;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    iput-object p3, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    iput-object p4, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$timeout:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    iput-object p6, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$type:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->getDefaultElement()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultData()Ljava/lang/Object;
    .registers 1

    .line 96
    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    move-result-object p0

    return-object p0
.end method

.method public getEucId()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->id()Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public getFromHeader()Lcom/sec/ims/util/ImsUri;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getLanguageMapping()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeOut()Ljava/lang/Long;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$timeout:Ljava/lang/Long;

    return-object p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->timestamp()J

    move-result-wide v0

    goto :goto_15

    :cond_13
    const-wide/16 v0, 0x0

    :goto_15
    return-wide v0
.end method

.method public getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$type:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->externalEucr()Z

    move-result p0

    return p0
.end method

.method public isPinRequested()Z
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->pin()Z

    move-result p0

    return p0
.end method
