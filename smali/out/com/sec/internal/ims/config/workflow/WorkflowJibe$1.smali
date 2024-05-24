.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->onMobileConnectionChanged(Landroid/net/Network;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->onMobileConnectionChanged(Landroid/net/Network;Z)V

    return-void
.end method
