.class public final synthetic Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lorg/w3c/dom/NodeList;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/NvStorage;->$r8$lambda$7vHNQw4hFcb90t7DMA18Ot4V7qk(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
