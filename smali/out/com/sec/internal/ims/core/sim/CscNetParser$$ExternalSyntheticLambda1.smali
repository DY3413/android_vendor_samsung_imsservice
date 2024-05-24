.class public final synthetic Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/sim/CscNetParser;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/CscNetParser;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/sim/CscNetParser;

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/sim/CscNetParser;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->$r8$lambda$SuHoCjXuEE_sczuWRdFUTA5TTHY(Lcom/sec/internal/ims/core/sim/CscNetParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    move-result-object p0

    return-object p0
.end method
