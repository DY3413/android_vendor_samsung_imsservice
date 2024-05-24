.class public final synthetic Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$$ExternalSyntheticLambda0;->f$0:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$$ExternalSyntheticLambda0;->f$0:Landroid/net/ConnectivityManager;

    check-cast p1, Landroid/net/Network;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->$r8$lambda$Y4DPNXOvbDszf6ai5oHXrb0ZQRo(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method
