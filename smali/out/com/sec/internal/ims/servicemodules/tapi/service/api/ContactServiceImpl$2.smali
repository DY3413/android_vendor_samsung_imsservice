.class Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;
.super Ljava/lang/Object;
.source "ContactServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;->val$serviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inScope(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    .registers 4

    .line 292
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 294
    invoke-virtual {p1}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 296
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method
