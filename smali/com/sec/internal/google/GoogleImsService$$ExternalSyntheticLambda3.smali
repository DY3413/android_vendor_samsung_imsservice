.class public final synthetic Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;->f$0:I

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/google/GoogleImsService;->$r8$lambda$O27zQtrJqW1ztqVGXUkHQQNosJQ(IILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method