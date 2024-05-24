.class public final synthetic Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/os/NetworkState;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/os/NetworkState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/constants/ims/os/NetworkState;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/constants/ims/os/NetworkState;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->$r8$lambda$PoDYLl4GvUSRSc8vPt1ZqRl49G8(Lcom/sec/internal/constants/ims/os/NetworkState;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method
