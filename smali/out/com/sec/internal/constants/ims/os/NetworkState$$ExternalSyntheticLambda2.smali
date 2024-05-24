.class public final synthetic Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Landroid/util/SparseArray;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->$r8$lambda$zwDSxjMcFCLdSb9o90mBwpV4VUE(ILandroid/util/SparseArray;)Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method
