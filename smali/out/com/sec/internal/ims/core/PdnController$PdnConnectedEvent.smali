.class public Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
.super Ljava/lang/Object;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PdnConnectedEvent"
.end annotation


# instance fields
.field private mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field private mNetwork:Landroid/net/Network;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .registers 3

    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1428
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mNetwork:Landroid/net/Network;

    return-void
.end method
