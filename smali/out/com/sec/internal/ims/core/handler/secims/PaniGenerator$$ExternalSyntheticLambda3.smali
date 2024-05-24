.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->$r8$lambda$pqF3jdBt1Quem9jQ6yuOyazf6f8(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
