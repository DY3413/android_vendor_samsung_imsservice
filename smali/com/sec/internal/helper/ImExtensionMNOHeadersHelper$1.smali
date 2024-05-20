.class Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper$1;
.super Ljava/util/HashMap;
.source "ImExtensionMNOHeadersHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "P-Mav-Smpp-Vwsms-Servicetype"

    const-string/jumbo v1, "true"

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
