.class public Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;
.super Ljava/lang/Object;
.source "ImExtensionMNOHeadersHelper.java"


# static fields
.field private static final VMTT_RESPONSE_HEADER:Ljava/lang/String; = "P-Mav-Smpp-Vwsms-Servicetype"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addVM2TextHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper$1;

    invoke-direct {v0}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper$1;-><init>()V

    return-object v0
.end method

.method public static isVM2TextMsg(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_18

    const-string v0, "P-Mav-Smpp-Vwsms-Servicetype"

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
