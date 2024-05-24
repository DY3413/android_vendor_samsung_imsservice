.class public final synthetic Lcom/sec/internal/ims/util/httpclient/GbaHttpController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->$r8$lambda$ALI94b9olRjS4E8IBZV_XJudaTY(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
