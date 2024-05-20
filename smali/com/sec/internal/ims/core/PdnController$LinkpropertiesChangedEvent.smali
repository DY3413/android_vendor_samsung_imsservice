.class public Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;
.super Ljava/lang/Object;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkpropertiesChangedEvent"
.end annotation


# instance fields
.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;)Landroid/net/LinkProperties;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1472
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1473
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method
